<?php

namespace App\Controller;

use App\Entity\Admin\Messages;
use App\Entity\User;
use App\Form\Admin\MessagesType;
use App\Form\UserType;
use App\Repository\Admin\CategoryRepository;
use App\Repository\Admin\ProductRepository;
use App\Repository\Admin\SettingRepository;
use App\Repository\Admin\ImageRepository;
use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{

    /**
     * @Route("/home", name="home")
     */
    public function index(SettingRepository $settingRepository, CategoryRepository $categoryRepository)
    {
        $data = $settingRepository->findAll();

        $em = $this->getDoctrine()->getManager();
        $sql = 'SELECT * FROM product WHERE status="True" ORDER BY ID DESC LIMIT 5';
        $statement = $em->getConnection()->prepare($sql);
        //statement->bindValue('parentid',$parent);
        $statement->execute();

        $sliders = $statement->fetchAll();



        $em2 = $this->getDoctrine()->getManager();
        $sql2 = 'SELECT * FROM product WHERE status="True" LIMIT 21 ';
        $statement2 = $em2->getConnection()->prepare($sql2);
        $statement2->execute();
        $product= $statement2->fetchAll();





        $cats = $this->categorytree();
//        print_r($cats);
//        die();
        $cats[0] = '<ul id="category-list">';


        return $this->render('home/products.html.twig', [
            'data' => $data,
            'cats' => $cats,
            'sliders' => $sliders,
            'products' => $product,
        ]);
    }

    //Recxursive php function for category tree
    public function categorytree($parent = 0, $user_tree_array = '')
    {
        if (!is_array($user_tree_array))
            $user_tree_array = array();

        $em = $this->getDoctrine()->getManager();
        $sql = "SELECT * FROM category WHERE status='True' AND parent_id = " . $parent;
        $statement = $em->getConnection()->prepare($sql);
        //$statement->bindValue('parentid',$parent);
        $statement->execute();
        $result = $statement->fetchAll();

        if (count($result) > 0) {

            $user_tree_array[] = '<ul> ';
            foreach ($result as $row) {
                $string = "href='/category/ " . $row['id'] . " '";
                $user_tree_array[] = "<li> <a $string > " . $row['title'] . "</a>";
                $user_tree_array = $this->categorytree($row['id'], $user_tree_array);
            }
            $user_tree_array[] = "</li></ul>";

        }
        return $user_tree_array;
    }


    /**
     * @Route("/category/{catid}", name="category_products", methods="GET")
     */
    public function CategoryProducts($catid, CategoryRepository $categoryRepository)
    {
        $cats = $this->categorytree();
        $cats[0] = '<ul id="category-list">';
        $data = $categoryRepository->findBy(
            ['id' => $catid]
        );

        $em = $this->getDoctrine()->getManager();
        $sql = 'SELECT * FROM product WHERE status="True" AND category_id= :catid';
        $statement = $em->getConnection()->prepare($sql);
        $statement->bindValue('catid',$catid);
        $statement->execute();
        $products = $statement->fetchAll();


        $em2 = $this->getDoctrine()->getManager();
        $sql2 = 'SELECT * FROM product WHERE status="True" ORDER BY ID DESC LIMIT 5 ';
        $statement2 = $em2->getConnection()->prepare($sql2);
        // $statement->bindValue('catid',$catid);
        $statement2->execute();
        $sliders= $statement2->fetchAll();

        return $this->render('home/products.html.twig', [
            'data' => $data,
            'products' => $products,
            'cats' => $cats,
            'sliders' => $sliders,
        ]);

    }
    /**
     * @Route("/products", name="products")
     */
    public function products(SettingRepository $settingRepository, ProductRepository $productRepository)
    {
        $em = $this->getDoctrine()->getManager();
        $sql = 'SELECT * FROM product WHERE status="True" ORDER BY ID DESC LIMIT 5 ';
        $statement = $em->getConnection()->prepare($sql);
        // $statement->bindValue('catid',$catid);
        $statement->execute();
        $sliders= $statement->fetchAll();





        $em2 = $this->getDoctrine()->getManager();
        $sql2 = 'SELECT * FROM product WHERE status="True" LIMIT 21 ';
        $statement2 = $em2->getConnection()->prepare($sql2);
        $statement2->execute();
        $product= $statement2->fetchAll();








        $data = $settingRepository->findAll();
        $cats = $this->categorytree();
//        $products=$productRepository->findAll();
        $cats[0] = '<ul id="category-list">';

//        print_r($cats);
//        die();
//        $cats[0] = '<ul id="category-list">';
        return $this->render('home/products.html.twig', [
            'data' => $data,
            'cats' => $cats,
            'products' => $product,
            'sliders' => $sliders,
        ]);
    }
    /**
     * @Route("/product/{id}", name="product_detail", methods="GET")
     */
    public function ProductDetail($id, ProductRepository $productRepository, ImageRepository $imageRepository, SettingRepository $settingRepository)
    {
        $data = $productRepository->findBy(
            ['id' => $id]
        );

        $images = $imageRepository->findBy(
            ['product_id' => $id]
        );

        $cats = $this->categorytree();
        $cats[0] = '<ul id="category-list">';

        return $this->render('home/product_detail.html.twig' , [

            'data'=> $data,
            'cats'=> $cats,
            'images' => $images,
        ]);
    }



    /**
     * @Route("/hakkimizda", name="hakkimizda")
     */
    public function hakkimizda(SettingRepository $settingRepository)
    {
        $data = $settingRepository->findAll();
        return $this->render('home/hakkimizda.html.twig', [
            'data' => $data,
        ]);
    }
    /**
     * @Route("/referans", name="referans")
     */
    public function referans(SettingRepository $settingRepository)
    {
        $data = $settingRepository->findAll();
        return $this->render('home/referans.html.twig', [
            'data' => $data,
        ]);
    }


    /**
     * @Route("/iletisim", name="iletisim", methods="GET|POST")
     */
    public function iletisim(SettingRepository $settingRepository, Request $request)
    {
        $message = new Messages();
        $form = $this->createForm(MessagesType::class, $message);
        $form->handleRequest($request);

        $submittedToken = $request->request->get('token');

        if ($form->isSubmitted()) {
            if($this->isCsrfTokenValid('form-message',$submittedToken)){
                $em = $this->getDoctrine()->getManager();
                $em->persist($message);
                $em->flush();
                $this->addFlash('success','Mesaj Gönderimi Başarılı');
                return $this->redirectToRoute('iletisim');
            }

        }

        $data = $settingRepository->findAll();
        return $this->render('home/iletisim.html.twig', [
            'data' => $data,
            'message' => $message,
        ]);
    }

    /**
     * @Route("/newuser", name="new_user", methods="GET|POST")
     */
    public function newuser(Request $request, UserRepository $userRepository): Response
    {
        $user = new User();
        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);

        $submittedToken = $request->request->get('token');
        if ($this->isCsrfTokenValid('user-form', $submittedToken))
        {
            if ($form->isSubmitted())
            {
                $emaildata = $userRepository->findBy(
                    ['email' => $user->getEmail()
                    ]);
                if ($emaildata == null)
                {
                    $em = $this->getDoctrine()->getManager();
                    $user->setRoles("ROLE_USER");
                    $em->persist($user);
                    $em->flush();
                    $this->addFlash('success', 'Üye Kayıt Edildi.');

                    return $this->redirectToRoute('app_login');
                }
                else {
                    $this->addFlash('error', $user->getEmail()."Bu Email Zaten Kayıtlı!!!");
                }

            }
        }
        return $this->render('home/newuser.html.twig', [
            'user' => $user,
            'form' => $form->createView(),

        ]);
    }
}