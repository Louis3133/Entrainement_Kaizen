<?php

require_once('fields.php'); // Inclusion de la page contenant le contenu CarbonFields

// Enregistrement des CPT

function montheme_register()
{
  register_post_type('case_study', [
    'public' => true,
    'label' => 'Étude de cas',
    'menu_icon' => 'dashicons-search'
  ]);
}

// Enregistrement des styles

function mon_theme_enqueue_styles()
{
  wp_enqueue_style('mon-theme-single-style', get_template_directory_uri() . '/assets/styles/single.css'); // Style des études de cas
  wp_enqueue_style('mon-theme-main-style', get_template_directory_uri() . '/assets/styles/main.css'); // Style global
  wp_enqueue_style('mon-theme-footer-style', get_template_directory_uri() . '/assets/styles/footer.css'); // Style du footer
  wp_enqueue_style('mon-theme-header-style', get_template_directory_uri() . '/assets/styles/header.css'); // Style du header
  wp_enqueue_style('mon-theme-page-style', get_template_directory_uri() . '/assets/styles/etudes_page.css'); // style de la page de listing des études de cas
  wp_enqueue_script('mon-theme-header-script', get_template_directory_uri() . '/assets/js/header.js'); // Script du header


}

// Hooks

add_action('afert_setup_theme', 'montheme_supports');
add_action('init', 'montheme_register');
add_action('wp_enqueue_scripts', 'mon_theme_enqueue_styles');

// Fonction permettant l'alternance de coté des détails des études de cas

function droit_gauche($chiffre){
  if ($chiffre % 2 != 0) {
      return 'flex-direction: row-reverse;';
  }
  return 'flex-direction: row;';
}
