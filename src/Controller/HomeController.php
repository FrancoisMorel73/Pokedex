<?php

namespace App\Controller;

use App\Repository\TypeRepository;
use App\Repository\PokemonRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    /**
     * Find all pokemons
     *
     * @return Response
     */
    #[Route('/', name: 'home')]
    public function findAll(PokemonRepository $pokemonRepository, TypeRepository $typeRepository, Request $request): Response
    {
        $selectedSlug = $request->query->get('type');
        $query = $request->query->get('query');

        if ($selectedSlug && $selectedSlug != '0') {
            $type = $typeRepository->findOneBy(['slug' => $selectedSlug]);
            if ($type) {
                $pokemons = $pokemonRepository->findByType($type->getId());
            } else {
                $pokemons = [];
            }
        } elseif ($query) {
            $pokemons = $pokemonRepository->searchByName($query);
        } else {
            $pokemons = $pokemonRepository->findAllPokemons();
        }

        $types = $typeRepository->findAll();

        return $this->render('home/home.html.twig', [
            'pokemons' => $pokemons,
            'types' => $types,
        ]);
    }

}
