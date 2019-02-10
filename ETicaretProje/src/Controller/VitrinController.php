<?php

namespace App\Controller;

use App\Entity\Admin\ImageSetting;
use App\Repository\Admin\CategoriesRepository;
use App\Repository\Admin\ProductRepository;
use App\Repository\Admin\SettingRepository;
use App\Repository\Admin\ImageSettingRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class VitrinController extends AbstractController
{
    /**
     * @Route("/vitrin", name="vitrin")
     */
    public function index(SettingRepository $settingRepository, CategoriesRepository $categoryRepository, ProductRepository $productRepository,ImageSettingRepository $imageSettingRepository)
    {

        $data = $settingRepository->findAll();

        $imageSettingRepository=$this->getDoctrine()->getRepository(ImageSetting::class)->findAll();
        $products=$productRepository->findAll();
        $cats = $this->categorytree();
        $cats[0] = '<ul id="category-list">';


        return $this->render('vitrin/index.html.twig', [
            'data' => $data,
            'cats' => $cats,
            'products' => $products,
            'image_setting' => $imageSettingRepository,
        ]);
    }

    public  function categorytree($parent = 0,$user_tree_array = ''){
        if(!is_array($user_tree_array))
            $user_tree_array = array();

        $em = $this->getDoctrine()->getManager();
        $sql = "SELECT * FROM categories WHERE status='True' AND parent_id = ".$parent;
        $statement = $em->getConnection()->prepare($sql);
        //$statement->bindValue('parentid',$parent);
        $statement->execute();
        $result = $statement->fetchAll();

        if(count($result)>0){

            $user_tree_array[] = '<ul> ';
            foreach ($result as $row){
//                if($row['parent_id']!=0)
//                    $string = "href='/vitrin/".$row['id']." '";
//                else
//                    $string = "";
                $string = "href='/vitrin/".$row['id']." '";

                $user_tree_array[] = "<li> <a $string > ".$row['title']."</a>";
                $user_tree_array = $this->categorytree($row['id'], $user_tree_array);
            }
            $user_tree_array[]="</li></ul>";

        }
        return $user_tree_array;
    }

    /**
     * @Route("vitrin/{id}", name="vitrin_product", methods="GET")
     */
    public function CategoryProducts($id, CategoriesRepository $categoryRepository, ImageSettingRepository $imageSettingRepository)
    {
        $cats = $this->categorytree();
        $cats[0] = '<ul id="category-list">';
        $data = $categoryRepository->findBy(
            ['id' => $id]
        );
        $em = $this->getDoctrine()->getManager();
        $sql = 'SELECT * FROM product WHERE status="True" AND category_id= :catid';
        $statement = $em->getConnection()->prepare($sql);
        $statement->bindValue('catid',$id);
        $statement->execute();
        $products = $statement->fetchAll();

        $imageSettingRepository=$this->getDoctrine()->getRepository(ImageSetting::class)->findAll();

        return $this->render('vitrin/index.html.twig', [
            'data' => $data,
            'products' => $products,
            'cats' => $cats,
            'image_setting' => $imageSettingRepository,
        ]);

    }
}


