<?php

use Carbon_Fields\Container;
use Carbon_Fields\Field;

add_action('carbon_fields_register_fields', 'carbon_fields');



function carbon_fields()
{
  // Ajout des champs pour la catégorie, le besoin, les solutions, la miniature, la description, le lien vers le site

  Container::make('post_meta', 'etude de cas')
    ->where('post_type', '=', 'case_study')
    ->add_fields([
      Field::make('select', 'category', 'Catégorie du cas')
        ->set_options([
          'Marketting digital' => 'Marketting digital',
          'Conception web et développement' => 'Conception web et développement',
        ]),
      Field::make('text', 'besoin', 'expliquez le besoin'),
      Field::make('text', 'solution', 'expliquez les solutions'),
      Field::make('text', 'teaser', 'introduisez en une phrase le cas'),
      Field::make('text', 'link', 'Lien vers le site'),
      Field::make('image', 'thumbnail', 'ajouter la miniature')
        ->set_value_type('id'),
    ]);


  // Ajout des champs pour les résultats : Description, chiffres clés (type complex)


  Container::make('post_meta', 'Résulats')
    ->where('post_type', '=', 'case_study')
    ->add_fields([
      Field::make('text', 'description', 'Décrivez en une phrase les résultats obtenus'),
      Field::make('complex', 'resultats', 'expliquez les solutions')
        ->add_fields([
          Field::make('text', 'chiffre', 'Insérez un chiffre clé'),
          Field::make('text', 'chiffre_explain', 'Expliquez à quoi le chiffre correspond'),
        ])
    ]);

    // Ajout des champs pour le contenu : Titres des solutions, images d'illustration, description, catégories (type complex)


  Container::make('post_meta', 'contenu')
    ->where('post_type', '=', 'case_study')
    ->add_fields([
      Field::make('complex', 'contenu', 'Expliquez le processus')
        ->add_fields([
          Field::make('text', 'titre', 'Titre de la solution'),
          Field::make('rich_text', 'texte_contenu', 'expliquez en quoi consiste cette solution'),
          Field::make('image', 'image_contenu', 'insérez l\'image qui accompagnera votre texte '),
          Field::make('select', 'solution_category', 'choisissez la catégorie de votre solution')
            ->set_options([
              'Search engine marketing' => 'Search engine marketing',
              'E-commerce / Prestashop' => 'E-commerce / Prestashop',
              'Site vitrine / WordPress' => 'Site vitrine / WordPress',
              'Display Marketing' => 'Display Marketing',
              'Référencement Naturel / SEO' => 'Référencement Naturel / SEO',
              'Google Ads' => 'Google Ads',
              'Expérience utilisateur / UX et UI' => 'Expérience utilisateur / UX et UI',
              'Intégration' => 'Intégration',
              'Formations' => 'Formations',
            ]),
        ])
    ]);
}
