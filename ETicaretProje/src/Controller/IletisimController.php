<?php

namespace App\Controller;

use App\Entity\Admin\Messages;
use App\Entity\Admin\ImageSetting;
use App\Form\Admin\MessagesType;
use App\Repository\Admin\SettingRepository;
use App\Repository\Admin\ImageSettingRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class IletisimController extends AbstractController
{
    /**
     * @Route("/iletisim", name="iletisim" , methods="GET|POST")
     */
    public function index(SettingRepository $settingRepository, ImageSettingRepository $imageSettingRepository, Request $request)
    {
        $data = $settingRepository->findAll();

        $imageSettingRepository = $this->getDoctrine()->getRepository(ImageSetting::class)->findAll();

        $message = new Messages();
        $form = $this->createForm(MessagesType::class, $message);
        $form->handleRequest($request);

        $submittedToeken = $request->request->get('token');
        if ($form->isSubmitted()) {
            if ($this->isCsrfTokenValid('form-message', $submittedToeken))
                $em = $this->getDoctrine()->getManager();
            $em->persist($message);
            $em->flush();
            $this->addFlash('form', '');
//            return $this->redirectToRoute('iletisim');
        }

        return $this->render('iletisim/index.html.twig', [
            'data' => $data,
            'image_setting' => $imageSettingRepository,
            'message' => $message,
        ]);
    }
}
