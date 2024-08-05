<?php get_header() ?>

<title>Études de cas - Kaizen Agency</title>

<!-- Section d'introduction des etudes de cas : Introduction et bouton -->

<section style="margin-top: 200px;" class="intro">
  <div>
    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/experience-utilisateur.svg" alt="introduction icon">
  </div>
  <div style="margin-top: -30px;">
    <h2><span class="border">Études</span> <br>de cas</h2>
    <p class="intro_text">Depuis plus de 15 ans, nous accompagnons nos clients dans leurs
      projets digitaux. Nous nous adaptons à leurs besoins, à leur
      secteur et à leur budget. L’équipe de Kaizen Agency est engagée
      dans la qualité des prestations mais également dans la relation client
      avec tout ce qu’elle implique en termes de suivi, de transparence et
      d’éthique professionnelle.
    </p>
    <button class="button">Commencer un projet</button>
  </div>
</section>

<!-- Section de filtres des études de cas (non diponible car je n'ai pas reproduit les autres pages du site) -->

<nav class="etude_navigation">
  <button class="nav_button">Toutes les catégories</button>
  <button class="nav_button">Conception web & développement</button>
  <button class="nav_button">Marketing Digital</button>
</nav>

<!-- Utilisation de l'objet WP_Query pour filtrer les posts  -->

<?php
$query = new WP_Query([
  'post_type' => 'case_study'
]);
?>

<!-- Boucle reprenant tous les posts de type 'case_study' -->

<?php if ($query->have_posts()) : ?>
  <?php while ($query->have_posts()) : $query->the_post() ?>

    <!-- Récupération de l'image via CarbonFields -->

    <?php
    $thumbnail_id = carbon_get_the_post_meta('thumbnail');
    $thumbnail_url = wp_get_attachment_image_url($thumbnail_id, 'full');
    ?>

    <!-- Génération des cartes des études de cas (Titre, description, catégorie, lien) -->

    <a class="etude" href="<?php the_permalink() ?>" style="background-image: linear-gradient(45deg, rgba(0, 0, 0, 0.3) 0%, rgba(0, 0, 0, 0.05) 100%), url('<?php echo esc_url($thumbnail_url); ?>');  ">
      <article class="etude_content">
        <h3><?php the_title() ?></h3>
        <p>
          <?php $teaser = carbon_get_the_post_meta('teaser'); echo ($teaser) ?>
        </p>
        <div class="category">
          <p style="line-height: 0;">
            <?php $category = carbon_get_the_post_meta('category'); echo ($category) ?>
          </p>
        </div>
        <p>Lire la suite</p>
      </article>
    </a>

  <?php endwhile; wp_reset_postdata() ?>
<?php endif ?>
<?php get_footer() ?>
