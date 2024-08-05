<?php

namespace App\Repository;

use App\Entity\Pokemon;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Pokemon>
 */
class PokemonRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Pokemon::class);
    }

    /**
     * Finds all Pokemon with their associated types and colors
     *
     * @return Pokemon[]
     */
    public function findAllPokemons(): array
    {
        return $this->createQueryBuilder('p')
            ->innerJoin('p.types', 't')
            ->addSelect('t')
            ->orderBy('p.id')
            ->getQuery()
            ->getResult();
    }

    /**
     * Finds all Pokémon filtered by type
     *
     * @param int $typeId
     * @return Pokemon[]
     */
    public function findByType(int $typeId): array
    {
        return $this->createQueryBuilder('p')
            ->innerJoin('p.types', 't')
            ->where('t.id = :typeId')
            ->setParameter('typeId', $typeId)
            ->addSelect('t')
            ->getQuery()
            ->getResult();
    }

    /**
     * Find all attributes of a Pokemon
     * 
     * @param string $slug
     * @return Pokemon
     */
    public function findAllDetails($slug): ?Pokemon
    {
        return $this->createQueryBuilder('p')
            ->innerJoin('p.types', 't')
            ->where('p.slug = :slug')
            ->setParameter('slug', $slug)
            ->addSelect('t')
            ->getQuery()
            ->getOneOrNullResult();
    }

    /**
     * Finds Pokemon by name
     *
     * @param string $name
     * @return Pokemon[]
     */
    public function searchByName(string $name): array
    {
        return $this->createQueryBuilder('p')
            ->where('p.name LIKE :name')
            ->setParameter('name', '%' . $name . '%')
            ->getQuery()
            ->getResult();
    }

    /**
     * Finds the maximum HP value among all Pokemon
     * 
     * @return int
     */
    public function findMaxHP(): int
    {
        return $this->createQueryBuilder('p')
            ->select('MAX(p.hp) as max_hp')
            ->getQuery()
            ->getSingleScalarResult();
    }

    /**
     * Finds the maximum attack value among all Pokemon
     * 
     * @return int
     */
    public function findMaxAttack(): int
    {
        return $this->createQueryBuilder('p')
            ->select('MAX(p.attack) as max_attack')
            ->getQuery()
            ->getSingleScalarResult();
    }

    /**
     * Finds the maximum defense value among all Pokemon
     * 
     * @return int
     */
    public function findMaxDefense(): int
    {
        return $this->createQueryBuilder('p')
            ->select('MAX(p.defense) as max_defense')
            ->getQuery()
            ->getSingleScalarResult();
    }

    /**
     * Finds the maximum special attack value among all Pokémon
     * 
     * @return int
     */
    public function findMaxSpeAttack(): int
    {
        return $this->createQueryBuilder('p')
            ->select('MAX(p.spe_attack) as max_special_attack')
            ->getQuery()
            ->getSingleScalarResult();
    }

    /**
     * Finds the maximum special defense value among all Pokemon
     * 
     * @return int
     */
    public function findMaxSpeDefense(): int
    {
        return $this->createQueryBuilder('p')
            ->select('MAX(p.spe_defense) as max_special_defense')
            ->getQuery()
            ->getSingleScalarResult();
    }

    /**
     * Finds the maximum speed value among all Pokemon
     * 
     * @return int
     */
    public function findMaxSpeed(): int
    {
        return $this->createQueryBuilder('p')
            ->select('MAX(p.speed) as max_speed')
            ->getQuery()
            ->getSingleScalarResult();
    }

}
