<?php

namespace App\Controller\Admin;

use App\Entity\Users;
use App\Form\UsersType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class UserController extends AbstractController
{
    /**
     * @Route("/admin/user", name="admin/user")
     */
    public function index()
    {
        $kullanici = $this->getDoctrine()
            ->getRepository(Users::class)
            ->findBy([
                'status' => "True",
            ]);
        return $this->render('admin/user/index.html.twig', [
            'Users' => $kullanici,
        ]);
    }

    /**
     * @Route("/admin/user/insert", name="admin_user_insert",methods="GET|POST")
     */
    public function insert(Request $request): Response
    {
        $user = new Users();
        $form = $this->createForm(UsersType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();
            $this->addFlash('ekle', '');
            return $this->redirectToRoute('admin/user');
        }
        return $this->render('admin/user/_insertuser.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/admin/user/update/{id}", name="admin_user_update",methods="GET|POST")
     */
    public function edit(Request $request, Users $user): Response
    {
        $form = $this->createForm(UsersType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();
            $this->addFlash('guncelle', '');
            return $this->redirectToRoute('admin/user');
        }

        return $this->render('admin/user/_updateuser.html.twig', [
            'user' => $user,
            'form' => $form->createView(),

        ]);
    }

    /**
     * @Route("/admin/user/delete/{id}", name="admin_user_delete",methods="GET|POST")
     */
    public function delete(Request $request, Users $user): Response
    {
        $em = $this->getDoctrine()->getManager();
        $em->remove($user);
        $em->flush();
        $this->addFlash('sil', '');
        return $this->redirectToRoute('admin/user');
    }

    /**
     * @Route("/kayit", name="user_kayit")
     */
    public function kayit(Request $request)
    {
        $user = new Users();
        $form = $this->createForm(UsersType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted()) {
            $user->setStatus("False");
            $user->setType("Uye");
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();
            return $this->redirectToRoute('user_app_login');
        }
        return $this->render('kayit/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }

}
