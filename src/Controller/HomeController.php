<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Repository\ArticleRepository;
use App\Repository\ActualiteRepository;
use App\Repository\InterclubRepository;
use App\Repository\InterclubVeteranRepository;
use Doctrine\Persistence\ManagerRegistry;

class HomeController extends AbstractController
{
    public function __construct(ManagerRegistry $registry)
    {
        $this->registry = $registry;
    }

    public function index(ArticleRepository $articleRepository, ActualiteRepository $actuRepository)
    {
        // Construction des articles du Blog à afficher en page d'accueil
        $articles = $articleRepository->findAllPublished();
        $match1 = '';
        $match2 = '';
        $match3 = '';
        $match4 = '';
        $matchVet = '';
        $matchVet2 = '';
        $interclubRepository = new InterclubRepository($this->registry);
        $interclubVetRepository = new InterclubVeteranRepository($this->registry);
        $match1 = $interclubRepository->findVIP1();
        $match2 = $interclubRepository->findVIP2();
        $match3 = $interclubRepository->findVIP3();
        $match4 = $interclubRepository->findVIP4();
        $matchVet = $interclubVetRepository->findVet1();
        $matchVet2 = $interclubVetRepository->findVet2();

        // Construction de l'actualité du jour à afficher en page d'accueil
        $actualite = $actuRepository->findLastOne();
        
        return $this->render('index.html.twig', [
            'actualite' => $actualite,
            'articles'  => $articles,
            'match1'    => $match1,
            'match2'    => $match2,
            'match3'    => $match3,
            'match4'    => $match4,
            'matchVet'  => $matchVet,
            'matchVet2' => $matchVet2
        ]);
    }
}
