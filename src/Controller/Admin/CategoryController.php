<?php

namespace App\Controller\Admin;

use App\Entity\Admin\Category;
use App\Form\Admin\CategoryType;
use App\Repository\Admin\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/category")
 */
class CategoryController extends AbstractController
{
    /**
     * @Route("/", name="admin_category_index", methods="GET")
     */
    public function index(CategoryRepository $categoryRepository)
    {
        $categoriess=$categoryRepository->findAll();
        $category = $this->getDoctrine()
            ->getRepository(Category::class)
            ->findAll();

        return $this->render('admin/category/index.html.twig', [
            'category' => $category,
            'categoriess'=>$categoriess,
        ]);
    }

    /**
     * @Route("/new", name="admin_category_new", methods="GET|POST")
     */
    public function new(Request $request, CategoryRepository $categoryrepository): Response
    {
        $catlist = $categoryrepository->findBy(['parent_id' => 0]);
        $category = new Category();
        $form = $this->createForm(CategoryType::class, $category);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($category);
            $em->flush();

            return $this->redirectToRoute('admin_category_index');
        }

        return $this->render('admin/category/new.html.twig', [
            'category' => $category,
            'catlist' => $catlist,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="admin_category_show", methods="GET")
     */
    public function show(Category $category): Response
    {
        return $this->render('admin/category/show.html.twig', ['category' => $category]);
    }

    /**
     * @Route("/{id}/edit", name="admin_category_edit", methods="GET|POST")
     */
    public function edit(Request $request, CategoryRepository $categoryrepository, Category $category): Response
    {
        $catlist = $categoryrepository->findBy(['parent_id' => 0]);
        if($category->getParentid()!=0)
            $activeCat = $categoryrepository->findOneBy([
               'id'=>$category->getParentid(),
            ]);
        else
            $activeCat = array(
                'title' =>"...ANA KATEGORİYİ DÜZENLİYORSUNUZ",
                    'id'=>0,
            );

        $form = $this->createForm(CategoryType::class, $category);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('admin_category_index', ['id' => $category->getId()]);
        }

        return $this->render('admin/category/edit.html.twig', [
            'category' => $category,
            'catlist' => $catlist,
            'form' => $form->createView(),
            'activeCat'=>$activeCat,
        ]);
    }

    /**
     * @Route("/{id}", name="admin_category_delete", methods="DELETE")
     */
    public function delete(Request $request, Category $category): Response
    {
        if ($this->isCsrfTokenValid('delete'.$category->getId(), $request->request->get('_token'))) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($category);
            $em->flush();
        }

        return $this->redirectToRoute('admin_category_index');
    }
}
