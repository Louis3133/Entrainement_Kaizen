<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="<?php echo get_template_directory_uri(); ?>/assets/images/favicon.ico">
</head>

<body>
  <?php wp_head() ?>

  <!-- Header présents sur chaque pages -->

  <header  id="header">
    <img class="header_logo" src="<?php echo get_template_directory_uri(); ?>/assets/images/kaizen_logo.png" alt="Logo of the Kaizen Agency">
    <nav class="header_navigation">
      <a class="navigation" href="">La voie Kaizen Agency</a>
      <a class="navigation" href="">Nos solutions</a>
      <a class="navigation" href="front-page.php">Études de cas</a>
      <a class="navigation" href="">Le blog</a>
      <button class="button">Nous contacter</button>
    </nav>
  </header>
