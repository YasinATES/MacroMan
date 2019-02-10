<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class KullaniciayarController extends AbstractController
{
    /**
     * @Route("/kullaniciayar", name="kullaniciayar")
     */
    public function index()
    {
        return $this->render('kullaniciayar/index.html.twig', [
            'controller_name' => 'KullaniciayarController',
        ]);
    }
}
