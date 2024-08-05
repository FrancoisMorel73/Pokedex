<?php

namespace App\Entity;

use Symfony\Component\Validator\Constraints as Assert;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\PokemonRepository;
use Doctrine\Common\Collections\Collection;
use Doctrine\Common\Collections\ArrayCollection;

#[ORM\Entity(repositoryClass: PokemonRepository::class)]
class Pokemon
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: 'Le nom est obligatoire')]
    #[Assert\Type("string", message: 'Le nom doit être une chaîne de caractères')]
    #[Assert\Length(
        min: 3,
        minMessage: 'Le nom doit contenir au moins {{ limit }} caractères',
        max: 255,
        maxMessage: 'Le nom doit contenir au maximum {{ limit }} caractères')]
    private ?string $name = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: 'Les PV sont obligatoires')]
    #[Assert\PositiveOrZero(message: 'Les PV doivent être un nombre positif ou nul')]
    private ?int $hp = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: 'L\'attaque est obligatoire')]
    #[Assert\PositiveOrZero(message: 'L\'attaque doit être un nombre positif ou nul')]
    private ?int $attack = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: 'La défense est obligatoire')]
    #[Assert\PositiveOrZero(message: 'La défense doit être un nombre positif ou nul')]
    private ?int $defense = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: 'L\'attaque spéciale est obligatoire')]
    #[Assert\PositiveOrZero(message: 'L\'attaque spéciale doit être un nombre positif ou nul')]
    private ?int $spe_attack = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: 'La défense spéciale est obligatoire')]
    #[Assert\PositiveOrZero(message: 'La défense spéciale doit être un nombre positif ou nul')]
    private ?int $spe_defense = null;

    #[ORM\Column]
    #[Assert\NotBlank(message: 'La vitesse est obligatoire')]
    #[Assert\PositiveOrZero(message: 'La vitesse doit être un nombre positif ou nul')]
    private ?int $speed = null;

    /**
     * @var Collection<int, Type>
     */
    #[ORM\ManyToMany(targetEntity: Type::class, mappedBy: 'pokemons')]
    #[Assert\Count(min: 1, minMessage: 'Veuillez sélectionner au moins un type')]
    private Collection $types;

    #[ORM\Column(length: 255)]
    private ?string $slug = null;

    #[ORM\Column]
    #[Assert\NotBlank]
    #[Assert\GreaterThan(0, message: 'Le numéro doit être un nombre positif')]
    private ?int $number = null;

    #[ORM\Column(length: 255)]
    private ?string $image = null;

    public function __construct()
    {
        $this->types = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    public function getHp(): ?int
    {
        return $this->hp;
    }

    public function setHp(int $hp): static
    {
        $this->hp = $hp;

        return $this;
    }

    public function getAttack(): ?int
    {
        return $this->attack;
    }

    public function setAttack(int $attack): static
    {
        $this->attack = $attack;

        return $this;
    }

    public function getDefense(): ?int
    {
        return $this->defense;
    }

    public function setDefense(int $defense): static
    {
        $this->defense = $defense;

        return $this;
    }

    public function getSpeAttack(): ?int
    {
        return $this->spe_attack;
    }

    public function setSpeAttack(int $spe_attack): static
    {
        $this->spe_attack = $spe_attack;

        return $this;
    }

    public function getSpeDefense(): ?int
    {
        return $this->spe_defense;
    }

    public function setSpeDefense(int $spe_defense): static
    {
        $this->spe_defense = $spe_defense;

        return $this;
    }

    public function getSpeed(): ?int
    {
        return $this->speed;
    }

    public function setSpeed(int $speed): static
    {
        $this->speed = $speed;

        return $this;
    }

    /**
     * @return Collection<int, Type>
     */
    public function getTypes(): Collection
    {
        return $this->types;
    }

    public function addType(Type $type): static
    {
        if (!$this->types->contains($type)) {
            $this->types->add($type);
            $type->addPokemon($this);
        }

        return $this;
    }

    public function removeType(Type $type): static
    {
        if ($this->types->removeElement($type)) {
            $type->removePokemon($this);
        }

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): static
    {
        $this->slug = $slug;

        return $this;
    }

    public function getNumber(): ?int
    {
        return $this->number;
    }

    public function setNumber(int $number): static
    {
        $this->number = $number;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(string $image): static
    {
        $this->image = $image;

        return $this;
    }
}
