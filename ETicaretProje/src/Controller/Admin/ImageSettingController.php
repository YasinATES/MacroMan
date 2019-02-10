<?php

namespace App\Controller\Admin;

use App\Entity\Admin\ImageSetting;
use App\Form\Admin\ImageSettingType;
use App\Repository\Admin\ImageRepository;
use App\Repository\Admin\ImageSettingRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/image/setting")
 */
class ImageSettingController extends AbstractController
{
    /**
     * @Route("/", name="admin_image_setting_index", methods="GET")
     */
    public function index(ImageSettingRepository $imageSettingRepository): Response
    {
        $setdata=$imageSettingRepository->findAll();

        if(!$setdata)
        {
            $imageSettingRepository=new ImageSetting();
            $em = $this->getDoctrine()->getManager();
            $imageSettingRepository->setAnasayfaImageFive("Site");
            $em->persist($imageSettingRepository);
            $em->flush();
            $setdata=$imageSettingRepository->findAll();
        }
        return $this->redirectToRoute('admin_image_setting_edit',['id'=>$setdata[0]->getId()]);
    }

    /**
     * @Route("/new", name="admin_image_setting_new", methods="GET|POST")
     */
    public function new(Request $request): Response
    {
        $imageSetting = new ImageSetting();
        $form = $this->createForm(ImageSettingType::class, $imageSetting);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($imageSetting);
            $em->flush();

            return $this->redirectToRoute('admin_image_setting_index');
        }

        return $this->render('admin/image_setting/new.html.twig', [
            'image_setting' => $imageSetting,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="admin_image_setting_show", methods="GET")
     */
    public function show(ImageSetting $imageSetting): Response
    {
        return $this->render('admin/image_setting/show.html.twig', ['image_setting' => $imageSetting]);
    }

    /**
     * @Route("/{id}/edit", name="admin_image_setting_edit", methods="GET|POST")
     */
    public function edit(Request $request, ImageSetting $imageSetting): Response
    {
        $form = $this->createForm(ImageSettingType::class, $imageSetting);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('admin_image_setting_index', ['id' => $imageSetting->getId()]);
        }

        return $this->render('admin/image_setting/edit.html.twig', [
            'image_setting' => $imageSetting,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="admin_image_setting_delete", methods="DELETE")
     */
    public function delete(Request $request, ImageSetting $imageSetting): Response
    {
        if ($this->isCsrfTokenValid('delete'.$imageSetting->getId(), $request->request->get('_token'))) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($imageSetting);
            $em->flush();
        }

        return $this->redirectToRoute('admin_image_setting_index');
    }
    /**
     * @Route("/{id}/iedit/{changeimage}", name="admin_image_setting_iedit", methods="GET|POST")
     */
    public function iedit(Request $request, $id, $changeimage, ImageSetting $imageSetting): Response
    {
        $form = $this->createForm(ImageSettingType::class, $imageSetting);
        $form->handleRequest($request);

        if ($request->files->get('imagename')) {
            $file = $request->files->get('imagename');
            $fileName = $this->generateUniqueFileName() . '.' . $file->guessExtension();
            try {
                $file->move(
                    $this->getParameter('images_directory'),
                    $fileName
                );
            } catch (FileException $e) {
                // ... handle exception if something happens during file upload
            }
            $changeimage2 = "set" . $changeimage;
            $imageSetting->$changeimage2($fileName);
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('admin_image_setting_index', ['id' => $imageSetting->getId()]);
        }

            $changeimage3 = "get" . $changeimage;
            $imageSetting->setTemp($imageSetting->$changeimage3());

        return $this->render('admin/image_setting/Template_Image_edit.html.twig', [
            'image_setting' => $imageSetting,
            'changeimage' => $changeimage,
            'id' => $id,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @return string
     */
    private function generateUniqueFileName()
    {
        // md5() reduces the similarity of the file names generated by
        // uniqid(), which is based on timestamps
        return md5(uniqid());
    }
}
