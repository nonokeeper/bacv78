<?php

namespace App\Form;

use App\Entity\Article;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Validator\Constraints\File;
use App\Repository\UserRepository;

class ArticleType extends AbstractType
{
    public function __construct(UserRepository $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $users = $this->userRepository->findInterclubsActive();
        $nbInterclubs = count($users);
        $users = $this->userRepository->findAllActive();
        $nbTous = count($users);
        $users = $this->userRepository->findCompetActive();
        $nbCompet = count($users);
        $users = $this->userRepository->findAdultesActive();
        $nbAdultes = count($users);
        $users = $this->userRepository->findJeunesActive();
        $nbJeunes = count($users);
        $users = $this->userRepository->findListeAttente();
        $nbAttente = count($users);

        $tous = 'Tous les adhérents ('.$nbTous.')';
        $interclub = 'Joueurs Interclubs ('.$nbInterclubs.')';
        $compet = 'Compétiteurs ('.$nbCompet.')';
        $adultes = 'Adultes ('.$nbAdultes.')';
        $jeunes = 'Jeunes ('.$nbJeunes.')';
        $attente = 'Liste d\'attente ('.$nbAttente.')';

        $builder
            ->add('title',null, [
                'label' => 'Titre',
                'required' => true
            ])
        //    ->add('auteur')
        //    ->add('slug')
            ->add('Image', FileType::class, [
                'mapped' => false,
                'required' => false,
                'constraints' => [
                    new File([
                        'maxSize' => '4096k',
                        'mimeTypes' => [
                            'image/jpg',
                            'image/png',
                            'image/jpeg',
                            'image/gif',
                        ],
                        'mimeTypesMessage' => 'Merci de sélectionner une image valide',
                    ])
                ],
            ])
            ->add('Image2', FileType::class, [
                'mapped' => false,
                'required' => false,
                'constraints' => [
                    new File([
                        'maxSize' => '4096k',
                        'mimeTypes' => [
                            'image/jpg',
                            'image/png',
                            'image/jpeg',
                            'image/gif',
                        ],
                        'mimeTypesMessage' => 'Merci de sélectionner une image valide',
                    ])
                ],
            ])
            ->add('notif', null, [
                'label' => 'Notifier par email ?'
            ])
            ->add('content', CKEditorType::class, [
                'label' => 'Contenu de l\'article'
            ])
            ->add('excerpt', null, [
                'label' => 'Extrait'
            ])
            ->add('isPublished',null, [
                'label' => 'Publier l\'article'
            ])
            ->add('categories')
            ->add('recipients', ChoiceType::class, [
                'label' => false,
                'choices'  => [
                    $tous       => 'all',
                    $interclub  => 'interclubs',
                    $compet     => 'competiteurs',
                    $adultes    => 'adultes',
                    $jeunes     => 'jeunes',
                    $attente    => 'attente'
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
