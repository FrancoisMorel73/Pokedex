<?php

namespace App\Form;

use App\Entity\Type;
use App\Entity\Pokemon;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;

class PokemonType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('number', IntegerType::class, [
                'label' => 'Numéro',
            ])
            ->add('name', TextType::class, [
                'label' => 'Nom',
            ])
            ->add('hp', IntegerType::class, [
                'label' => 'PV',
            ])
            ->add('attack', IntegerType::class, [
                'label' => 'Attaque',
            ])
            ->add('defense', IntegerType::class, [
                'label' => 'Défense',
            ])
            ->add('spe_attack', IntegerType::class, [
                'label' => 'Attaque Spéciale',
            ])
            ->add('spe_defense', IntegerType::class, [
                'label' => 'Défense Spéciale',
            ])
            ->add('speed', IntegerType::class, [
                'label' => 'Vitesse',
            ])
            ->add('types', EntityType::class, [
                'label' => 'Types',
                'class' => Type::class,
                'choice_label' => 'name',
                'multiple' => true,
                'expanded' => true,
                'by_reference' => false,
                'attr' => ['class' => 'types-checkboxes']
            ])
            ->add('image', FileType::class, [
                'label' => 'Image (JPG ou PNG)',
                'mapped' => false,
                'required' => false,
                'constraints' => [
                    new Assert\File([
                        'maxSize' => '5M',
                        'mimeTypes' => ['image/jpeg', 'image/png'],
                        'maxSizeMessage' => 'Le fichier est trop grand. La taille maximale autorisée est de 5 Mo.',
                        'mimeTypesMessage' => 'Veuillez télécharger un fichier au format JPEG ou PNG.',
                    ]),
                ],
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Pokemon::class,
        ]);
    }
}
