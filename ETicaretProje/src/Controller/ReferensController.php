<?php

namespace App\Controller;

use App\Entity\Admin\ImageSetting;
use App\Repository\Admin\SettingRepository;
use App\Repository\Admin\ImageSettingRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class ReferensController extends AbstractController
{
    /**
     * @Route("/referens", name="referens")
     */
    public function index(SettingRepository $settingRepository,ImageSettingRepository $imageSettingRepository)
    {
        $data = $settingRepository->findAll();
        $imageSettingRepository=$this->getDoctrine()->getRepository(ImageSetting::class)->findAll();

        return $this->render('referens/index.html.twig', [
            'data' => $data,
            'image_setting' => $imageSettingRepository,
        ]);

    }
}
