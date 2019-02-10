<?php

namespace App\Controller\Admin;

use App\Entity\Admin\Categories;
use App\Form\Admin\CategoriesType;
use App\Repository\Admin\CategoriesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/categories")
 */
class CategoriesController extends AbstractController
{
    /**
     * @Route("/", name="admin_categories_index", methods="GET")
     */
    public function index(CategoriesRepository $categoriesRepository): Response
    {
        $categories2=$categoriesRepository->findAll();
        return $this->render('admin/categories/index.html.twig', [
            'categories' => $categoriesRepository->findAll(),
            'categories2'=>$categories2,
        ]);
    }

    /**
     * @Route("/new", name="admin_categories_new", methods="GET|POST")
     */
    public function new(Request $request,CategoriesRepository $categoryRepository): Response
    {

        $catlist=$categoryRepository->findBy(['parent_id'=>0]);
        $category = new Categories();
        $form = $this->createForm(CategoriesType::class, $category);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($category);
            $em->flush();
            $this->addFlash('ekle','');
            return $this->redirectToRoute('admin_categories_index');
        }

        return $this->render('admin/categories/new.html.twig', [
            'category' => $category,
            'catlist' => $catlist,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="admin_categories_show", methods="GET")
     */
    public function show(Categories $category): Response
    {
        return $this->render('admin/categories/show.html.twig', ['category' => $category]);
    }

    /**
     * @Route("/{id}/edit", name="admin_categories_edit", methods="GET|POST")
     */
    public function edit(Request $request, Categories $category, CategoriesRepository $categoryRepository): Response
    {
        $catlist=$categoryRepository->findBy(['parent_id'=>0]);

        if($category->getParentId()!=0)
            $activeCat = $categoryRepository->findOneBy([
                'id' => $category->getParentId(),
            ]);
        else
            $activeCat = array(
                'title' => "...ANA KATEGORİYİ DÜZENLEMEKTESİNİZ...",
                'id' => 0,
            );

//        $activeCat = $category->getParentId();

        $form = $this->createForm(CategoriesType::class, $category);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();
            $this->addFlash('guncelle','');
            return $this->redirectToRoute('admin_categories_index', ['id' => $category->getId()]);
        }

        return $this->render('admin/categories/edit.html.twig', [
            'category' => $category,
            'catlist' => $catlist,
            'form' => $form->createView(),
            'activeCat' => $activeCat,
        ]);
    }

    /**
     * @Route("/{id}", name="admin_categories_delete", methods="DELETE")
     */
    public function delete(Request $request, Categories $category): Response
    {
        if ($this->isCsrfTokenValid('delete'.$category->getId(), $request->request->get('_token'))) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($category);
            $this->addFlash('sil','');
            $em->flush();
        }

        return $this->redirectToRoute('admin_categories_index');
    }
}
