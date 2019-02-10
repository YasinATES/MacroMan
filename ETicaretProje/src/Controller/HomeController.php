<?php

namespace App\Controller;

use App\Entity\Admin\ImageSetting;
use App\Repository\Admin\ProductRepository;
use App\Repository\Admin\SettingRepository;
use App\Repository\Admin\ImageRepository;
use App\Repository\Admin\ImageSettingRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/home", name="home")
     */
    public function index(ImageSettingRepository $imageSettingRepository, SettingRepository $settingRepository)
    {
        $imageSettingRepository = $this->getDoctrine()->getRepository(ImageSetting::class)->findAll();

        $data=$settingRepository->findAll();

        return $this->render('home/index.html.twig', [
            'image_setting' => $imageSettingRepository,
            'data'=>$data,
        ]);
    }

    /**
     * @Route("/productdetail/{id}", name="product_detail")
     */
    public function ProductDetail(ProductRepository $productRepository, ImageRepository $imageRepository,$id)
    {
        $data = $productRepository->findBy(
            ['id' => $id]
        );
        $images = $imageRepository->findBy(
            ['product_id' => $id]
        );
//        $cats=$this->categorytree();
//        $cats[0] = '<ul id="category-list">';

        return $this->render('urunDetay/index.html.twig', [
            'data' => $data,
//            'cats' => $cats,
            'images' => $images,
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
                $string = "href='/vitrin/".$row['id']." '";
                $user_tree_array[] = "<li> <a $string > ".$row['title']."</a>";
                $user_tree_array = $this->categorytree($row['id'], $user_tree_array);
            }
            $user_tree_array[]="</li></ul>";

        }
        return $user_tree_array;
    }
}
