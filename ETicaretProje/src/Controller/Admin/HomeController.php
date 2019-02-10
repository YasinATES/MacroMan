<?php

namespace App\Controller\Admin;

use App\Entity\Users;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Orders;
use App\Entity\User;
use App\Form\UserType;
use App\Repository\OrderdetailRepository;
use App\Repository\OrdersRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class HomeController extends AbstractController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index()
    {

        $user=$this->getDoctrine()->getRepository(Users::class)->findBy([
            'status'=>"False",
        ]);
        return $this->render('admin/home/index.html.twig', [
            'Users' =>$user,
        ]);

    }
    /**
     * @Route("/admin/orders/{slug}", name="admin_orders_index")
     */
    public function orders($slug, OrdersRepository $ordersRepository)
    {
        $orders = $ordersRepository->findBy(['status' => $slug]);
        return $this->render('admin/orders/index.html.twig', [
            'orders' => $orders,
        ]);
    }
    /**
     * @Route("/admin/orders/show/{id}", name="admin_orders_show", methods="GET")
     */
    public function show($id,Orders $order, OrderdetailRepository $orderDetailRepository):Response
    {
        $orderdetail = $orderDetailRepository->findBy(
            ['orderid' => $id]
        );

        return $this->render('admin/orders/show.html.twig', [
            'order' => $order,
            'orderdetail' => $orderdetail,
        ]);
    }
    /**
     * @Route("/admin/orders/{id}/update", name="admin_orders_update", methods="POST")
     */
    public function order_update($id,Orders $orders,Request $request):Response
    {

        $em = $this->getDoctrine()->getManager();
        $sql = "UPDATE orders SET shipinfo= :shipinfo, note=:note,status=:status
                  WHERE id=:id";
        $statement=$em->getConnection()->prepare($sql);
        $statement->bindValue('shipinfo', $request->request->get('shipinfo'));
        $statement->bindValue('note', $request->request->get('note'));
        $statement->bindValue('status', $request->request->get('status'));
        $statement->bindValue('id', $id);
        $statement->execute();
        $this->addFlash('success','sipariş bilgileri güncellendi');

        return $this->redirectToRoute('admin_orders_show', array('id'=>$id));
    }




    /**
     * @Route("/admin/user/succes/{id}", name="admin_user_succes",methods="GET|POST")
     */
    public function succes($id)
    {
        $em = $this->getDoctrine()->getManager();
        $user=$em->getRepository(Users::class)->find($id);
        $user->setStatus("True");
        $em->persist($user);
        $em->flush();
        return $this->redirectToRoute('admin');
    }
    /**
     * @Route("/admin/user/deletesucces/{id}", name="admin_user_deletesucces",methods="GET|POST")
     */
    public function deletesucces(Users $user)
    {
        $em=$this->getDoctrine()->getManager();
        $em->remove($user);
        $em->flush();
        return $this->redirectToRoute('admin');
    }
}
