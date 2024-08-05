<?php

namespace App\Controller;

use App\Entity\Pokemon;
use App\Form\PokemonType;
use Psr\Log\LoggerInterface;
use App\Repository\PokemonRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\String\Slugger\SluggerInterface;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;

class PokemonController extends AbstractController
{
    /**
     * Add a new pokemon
     *
     * @return Response
     */
    #[Route('/pokemon/ajouter', name: 'pokemon_new', methods: ['GET','POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager, SluggerInterface $slugger, LoggerInterface $logger): Response
    {
        $pokemon = new Pokemon();
        $form = $this->createForm(PokemonType::class, $pokemon);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            /** @var UploadedFile|null $image */
            $image = $form->get('image')->getData();
            if ($image instanceof UploadedFile) {
                $originalFilename = pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME);
                $safeFilename = $slugger->slug($originalFilename);
                $newFilename = $safeFilename.'-'.uniqid().'.'.$image->guessExtension();

                try {
                    $image->move(
                        $this->getParameter('images_directory'),
                        $newFilename
                    );
                    $pokemon->setImage($newFilename);
                } catch (FileException $e) {
                    $this->addFlash('error', 'Une erreur est survenue lors du téléchargement de l\'image.');
                }
            }

            $name = $pokemon->getName();
            $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $name)));
            $pokemon->setSlug($slug);

            $entityManager->persist($pokemon);
            $entityManager->flush();

            $this->addFlash('success', 'Le Pokémon a été ajouté avec succès.');

            return $this->redirectToRoute('home');
        }

        return $this->render('pokemon/new.html.twig', [
            'form' => $form,
        ]);
    }

    /**
     * Find a pokemon by its slug
     *
     * @param int $slug
     * @return Response
     */
    #[Route('/pokemon/{slug}', name: 'pokemon_show', methods: ['GET'])]
    public function findOne(PokemonRepository $pokemonRepository, $slug): Response
    {
        $maxHP = $pokemonRepository->findMaxHP();
        $maxAttack = $pokemonRepository->findMaxAttack();
        $maxDefense = $pokemonRepository->findMaxDefense();
        $maxSpeed = $pokemonRepository->findMaxSpeed();
        $maxSpeAttack = $pokemonRepository->findMaxSpeAttack();
        $maxSpeDefense = $pokemonRepository->findMaxSpeDefense();

        $pokemon = $pokemonRepository->findAllDetails($slug);

        if (!$pokemon) {
            throw $this->createNotFoundException('Le pokémon n\'existe pas');
        }

        return $this->render('pokemon/pokemon.html.twig', [
            'pokemon' => $pokemon,
            'maxHP' => $maxHP,
            'maxAttack' => $maxAttack,
            'maxDefense' => $maxDefense,
            'maxSpeed' => $maxSpeed,
            'maxSpeAttack' => $maxSpeAttack,
            'maxSpeDefense' => $maxSpeDefense,
        ]);
    }

    /**
     * Edit a pokemon
     *
     * @param Pokemon $pokemon
     * @return Response
     */
    #[Route('/pokemon/{slug}/modifier', name: 'pokemon_edit')]
    public function edit(Request $request, EntityManagerInterface $entityManager, PokemonRepository $pokemonRepository, SluggerInterface $slugger, $slug): Response
    {
        $pokemon = $pokemonRepository->findOneBy(['slug' => $slug]);

        if (!$pokemon) {
            throw $this->createNotFoundException('Le pokémon n\'existe pas');
        }

        $form = $this->createForm(PokemonType::class, $pokemon);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $image = $form->get('image')->getData();

            if ($image) {
                $originalFilename = pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME);
                $safeFilename = $slugger->slug($originalFilename);
                $newFilename = $safeFilename.'-'.uniqid().'.'.$image->guessExtension();

                try {
                    $image->move(
                        $this->getParameter('images_directory'),
                        $newFilename
                    );
                    $pokemon->setImage($newFilename);
                } catch (FileException $e) {
                    $this->addFlash('error', 'Une erreur est survenue lors du téléchargement de l\'image.');
                }
            }
            
            $name = $pokemon->getName();
            $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $name)));
            $pokemon->setSlug($slug);

            $entityManager->flush();

            $this->addFlash('success', 'Le Pokémon a été modifié avec succès.');

            return $this->redirectToRoute('home');
        }

        return $this->render('pokemon/edit.html.twig', [
            'form' => $form,
            'pokemon' => $pokemon,
        ]);
    }

    /**
     * Delete a pokemon
     *
     * @param Pokemon $pokemon
     * @return Response
     */
    #[Route('/pokemon/{slug}/delete', name: 'pokemon_delete')]
    public function delete(Request $request, EntityManagerInterface $entityManager, PokemonRepository $pokemonRepository, $slug): Response
    {
        $pokemon = $pokemonRepository->findOneBy(['slug' => $slug]);

        if (!$pokemon) {
            throw $this->createNotFoundException('Le pokémon n\'existe pas');
        }

        if ($this->isCsrfTokenValid('delete'.$pokemon->getId(), $request->request->get('_token'))) {
            $entityManager->remove($pokemon);
            $entityManager->flush();

            $this->addFlash('success', 'Le Pokémon a été supprimé avec succès.');
        }

        return $this->redirectToRoute('home');
    }

}
