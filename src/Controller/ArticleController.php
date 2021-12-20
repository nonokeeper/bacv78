<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Article;
use App\Entity\User;
use Symfony\Component\Security\Core\Security;
use App\Repository\ArticleRepository;
use Doctrine\ORM\EntityManagerInterface;
use App\Form\ArticleType;
use App\Repository\UserRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Component\HttpFoundation\File\Exception\FileException;

class ArticleController extends AbstractController
{

    public function __construct(ArticleRepository $repository, UserRepository $userRepository, EntityManagerInterface $em, Security $security)
    {
        $this->repository = $repository;
        $this->userRepository = $userRepository;
        $this->em = $em;
        $this->security = $security;
    }

    /**
     * @Route("/articles", name="article.index")
     * @IsGranted("ROLE_ADMIN")
     */
    public function index(Request $request): Response
    {
        $form = $this->createForm(ArticleType::class);
        $form->handleRequest($request);

        $articles = $this->repository->findAll();
        return $this->render('article/index.html.twig', [
            'articles'    => $articles,
            'form'        => $form->createView()
        ]);
    }

    private function getFileName(?UploadedFile $imageFile)
    {
        if ($imageFile) {
            $originalFilename = pathinfo($imageFile->getClientOriginalName(), PATHINFO_FILENAME);
            // this is needed to safely include the file name as part of the URL
            $safeFilename = transliterator_transliterate('Any-Latin; Latin-ASCII; [^A-Za-z0-9_] remove; Lower()', $originalFilename);
            $newFilename = $safeFilename.'-'.uniqid().'.'.$imageFile->guessExtension();

            // Move the file to the directory where images are stored
            try {
                $imageFile->move(
                    $this->getParameter('images_directory'),
                    $newFilename
                );
            } catch (FileException $e) {
                // ... handle exception if something happens during file upload
            }
            return $newFilename;
        } else {
            return null;
        }
    }

    /**
     * @Route("/article/new", name="article.new")
     * @IsGranted("ROLE_ADMIN")
     */
    public function create(Request $request, \Swift_Mailer $mailer)
    {
        $article = new Article();
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid())
        {
            /** Récupère les noms de fichiers téléversés et MAJ de l'article si non null */
            $newFilename = $this->getFileName($form['Image']->getData());
            if ($newFilename) { $article->setImageFilename($newFilename); }
            $newFilename2 = $this->getFileName($form['Image2']->getData());
            if ($newFilename2) { $article->setImage2Filename($newFilename2); }
            $title = $form->get('title')->getData();
            $content = $form->get('content')->getData();

            if (!$title)
            {
                $this->addFlash('error','Merci de saisir un titre pour cet article');
                return $this->render('article/new.html.twig', [
                    'form' => $form->createView()
                ]);
            }
            
            $article->setPublicationDate(new \DateTime('now', new \DateTimeZone('Europe/Paris')));
            $article->setLastUpdateDate(new \DateTime('now', new \DateTimeZone('Europe/Paris')));
            $article->setAuteur($this->getUser());
            $this->em->persist($article);
            $this->em->flush();

            $notif = $form->get('notif')->getData();
            
            // Si choix de notifier par email le contenu de cet Article
            if ($notif) {
                $groupe = $form->get('recipients')->getData();

                switch ($groupe) {
                    case 'interclubs':
                        $users = $this->userRepository->findInterclubsActive();
                        break;
                    case 'all':
                        $users = $this->userRepository->findAllActive();
                        break;
                    case 'competiteurs':
                        $users = $this->userRepository->findCompetActive();
                        break;
                    case 'adultes':
                        $users = $this->userRepository->findAdultesActive();
                        break;
                    case 'jeunes':
                        $users = $this->userRepository->findJeunesActive();
                        break;
                    case 'attente':
                        $users = $this->userRepository->findListeAttente();
                        break;
                }

                $message = (new \Swift_Message())
                    ->setFrom(['arnaud.coste@bacv.fr' => 'Badminton Club de Villepreux'])
                    ->setSubject($title);
                $nb = 0;
                foreach ($users as $user) {
                    $subject = $user->getFirstName().', un nouvel article du BACV : \''.$title.'\'';
                    $message ->setSubject($subject);
                    $body = $content.'<br/><br/>Afin de recevoir nos informations, merci d\'ajouter cette adresse e-mail à vos contacts / à la liste des expéditeurs approuvés<br/>'.
                    'Pour se désinscrire de ces communications, merci de répondre STOP en cliquant <a href="mailto:bacv78.villepreux@gmail.com" target="_blank">ICI</a><br>'.
                    '<a class="text-green ml-2" href="https://www.bacv78.fr" target="_blank">Badminton Club de Villepreux</a>';
                    $message->setBody($body, 'text/html');
                    $email = $user->getEmail();
                    $name = $user->getFirstName().' '.$user->getLastName();
                    if ($email) {
                        $message->addBcc($email, $name);
                        $nb ++;
                    }
                }
                // Send the message
                $mailer->send($message);
                $this->addFlash('success',$nb.' Emails envoyés');
            }

            $this->addFlash('success','Article "'.$article->getTitle().'" bien créé !');
            return $this->redirectToRoute('article.index');
        }

        if ($form->isSubmitted() && !$form->isValid()) {
            $this->addFlash('error','Merci de fournir des images au format jpg/gif/jpeg/png');
                return $this->render('article/new.html.twig', [
                    'form' => $form->createView()
                ]);
        }

        return $this->render('article/new.html.twig', [
            'form' => $form->createView()
        ]);
    }

    /**
     * @Route("/article/{slug}", name="article.edit")
     * @IsGranted("ROLE_ADMIN")
     */
    public function edit(Article $article, Request $request)
    {
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid())
        {
            /** Récupère les noms de fichiers téléversés et MAJ de l'article si non null */
            $newFilename = $this->getFileName($form['Image']->getData());
            if ($newFilename) { $article->setImageFilename($newFilename); }
            $newFilename2 = $this->getFileName($form['Image2']->getData());
            if ($newFilename2) { $article->setImage2Filename($newFilename2); }

            $article->setLastUpdateDate(new \DateTime('now', new \DateTimeZone('Europe/Paris')));
            $this->em->flush();
            $this->addFlash('success','Article "'.$article->getTitle().'" modifié avec succès !');
            return $this->redirectToRoute('article.index');
        }
        if ($form->isSubmitted() && !$form->isValid()) {
            $this->addFlash('error','Merci de fournir des images au format jpg/gif/jpeg/png');
                return $this->render('article/edit.html.twig', [
                    'article'   => $article,
                    'form' => $form->createView()
                ]);
        }

        return $this->render('article/edit.html.twig', [
            'article'   => $article,
            'form'      => $form->createView()
        ]);
    }

    /**
     * @Route("/article/{slug}/delete", name="article.delete", methods="DELETE")
     * @IsGranted("ROLE_ADMIN")
     */
    public function delete(Article $article, Request $request)
    {
        if ($this->isCsrfTokenValid('delete'.$article->getSlug(), $request->get('_token')))
        {
            $title = $article->getTitle();
            $this->em->remove($article);
            $this->em->flush();
            $this->addFlash('success','Article "'.$title.'" supprimé avec succès');
        }
        return $this->redirectToRoute('article.index');
    }
    
    protected function getUser() : User
    {
        $user = $this->security->getUser();
        return $user;
    }

}