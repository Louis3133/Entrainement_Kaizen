<?php get_header() ?>

<title><?php the_title() ?> - Kaizen Agency</title>

<!-- Boucle récupérant les données pour la description de l'étude de cas -->

<?php if (have_posts()) : ?>
  <?php while (have_posts()) : the_post(); ?>

    <!-- Récupération de l'image via CarbonFields -->

    <?php
    $thumbnail_id = carbon_get_the_post_meta('thumbnail');
    $thumbnail_url = wp_get_attachment_image_url($thumbnail_id, 'full');
    ?>

    <!-- Affichage de la carte de l'étude de cas : Titre, description, image -->

    <article class="cas" style="background-image: linear-gradient(45deg, rgba(0, 0, 0, 0.3) 0%, rgba(0, 0, 0, 0.05) 100%), url('<?php echo esc_url($thumbnail_url); ?>');">
      <div class="cas_content">
        <h2 style="line-height: 0;"><?php the_title() ?></h1>
          <p style="font-weight: 400; font-size:22px; ">
            <?php $teaser = carbon_get_the_post_meta('teaser');
            echo ($teaser) ?></p>
          <div class="category">
            <p style="line-height: 0;">
              <?php $category = carbon_get_the_post_meta('category');
              echo ($category) ?>
            </p>
          </div>
      </div>
      <?php $link = carbon_get_the_post_meta('link') ?>
      <?php if (!empty($link)): ?>
      <div class="link">
        <a style="display: flex; align-items:center; gap:16px;" href="<?php echo ($link) ?>">
          <p style="font-weight: 700;"><?php the_title() ?></p>
          <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" viewBox="0 0 24 24" style="fill: rgba(255, 255, 255, 1);transform: msFilter">
            <path d="M8.465 11.293c1.133-1.133 3.109-1.133 4.242 0l.707.707 1.414-1.414-.707-.707c-.943-.944-2.199-1.465-3.535-1.465s-2.592.521-3.535 1.465L4.929 12a5.008 5.008 0 0 0 0 7.071 4.983 4.983 0 0 0 3.535 1.462A4.982 4.982 0 0 0 12 19.071l.707-.707-1.414-1.414-.707.707a3.007 3.007 0 0 1-4.243 0 3.005 3.005 0 0 1 0-4.243l2.122-2.121z"></path>
            <path d="m12 4.929-.707.707 1.414 1.414.707-.707a3.007 3.007 0 0 1 4.243 0 3.005 3.005 0 0 1 0 4.243l-2.122 2.121c-1.133 1.133-3.109 1.133-4.242 0L10.586 12l-1.414 1.414.707.707c.943.944 2.199 1.465 3.535 1.465s2.592-.521 3.535-1.465L19.071 12a5.008 5.008 0 0 0 0-7.071 5.006 5.006 0 0 0-7.071 0z"></path>
          </svg>
        </a>
      </div>
      <?php endif ?>
    </article>

    <!-- Section de présentation des résultats (description, chiffres clés) -->

    <?php $field_resultat = carbon_get_the_post_meta('resultats');?>
    <?php if (!empty($field_resultat)): ?>
      <section class="resultats">
        <div class="resultats_content">
          <div class="title_icon">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/stat.svg" alt="statistics icon">
            <div>
              <h2 style="line-height: 0;">Les résultats</h2>
              <p style="width: 60%;">
                <?php $description = carbon_get_the_post_meta('description');
                echo ($description) ?>
              </p>
              <div class="chiffres">
                <?php foreach (carbon_get_the_post_meta('resultats') as $results) : ?>
                  <div class="cases">
                    <h3 style="line-height: 0;"><?php echo $results['chiffre'] ?></h3>
                    <p class="cases_content"><?php echo $results['chiffre_explain'] ?></p>
                  </div>
                <?php endforeach ?>
              </div>

            </div>

          </div>
        </div>
      </section>
    <?php endif ?>


    <!-- Section de présentation du besoin et des solutions  -->

    <section class="besoin_solution">
      <div class="besoin">
        <div class="besoin_content">
          <h2 class="border_white" style="line-height: 0; margin-top:72px;">Le besoin</h2>
          <p style="width: 65%; margin-left:auto;">
            <?php $besoin = carbon_get_the_post_meta('besoin');
            echo ($besoin) ?>
          </p>
          <button class="button_besoin">Vous avez les mêmes besoins</button>
        </div>
      </div>
      <div class="solution">
        <div class="solution_content">
          <h2 style="line-height: 0; margin-top:72px;">Les solutions</h2>
          <p style="width: 65%;">
            <?php $solution = carbon_get_the_post_meta('solution');
            echo ($solution) ?>
          </p>
        </div>
      </div>
    </section>

    <?php $chiffre = 1 ?> <!-- Variable permettant l'alternance droite/gauche des différentes explications -->
    <section class="explications_section">

      <!-- Récupération des icones des explications en fonction de la catégorie sélectionnée -->

      <?php $image_option = carbon_get_post_meta(get_the_ID(), 'contenu'); ?>
      <?php $images = array(
        'Search engine marketing' => get_template_directory_uri() . '/assets/images/conception-web-1.svg',
        'E-commerce / Prestashop' => get_template_directory_uri() . '/assets/images/campagne.svg',
        'Site vitrine / WordPress' => get_template_directory_uri() . '/assets/images/conception-web-1.svg',
        'Display Marketing' => get_template_directory_uri() . '/assets/images/conception-web-1.svg',
        'Référencement Naturel / SEO' => get_template_directory_uri() . '/assets/images/motion-design.svg',
        'Google Ads' => get_template_directory_uri() . '/assets/images/experience.svg',
        'Expérience utilisateur / UX et UI' => get_template_directory_uri() . '/assets/images/project.svg',
        'Intégration' => get_template_directory_uri() . '/assets/images/social.svg',
        'Formations' => get_template_directory_uri() . '/assets/images/blog.svg',
      ); ?>
      <?php $complex_fields = carbon_get_the_post_meta('contenu'); ?>


      <?php foreach (carbon_get_the_post_meta('contenu') as $explains) : ?>

        <!-- Récupération des données Carbon Fields -->

        <?php $image_option = $explains['solution_category']; ?>
        <?php $image_ide = $explains['image_contenu']; ?>
        <?php $image_urle = wp_get_attachment_url($image_ide); ?>
        <?php $chiffre += 1 ?>
        <?php
        $image_contenu_id = carbon_get_the_post_meta('image_contenu');
        $image_contenu_url = wp_get_attachment_image_url($image_contenu_id, 'full');
        ?>

        <!-- Affichage des explications de chaque solution (image, titre, description, icône) -->

        <div class="explications" style="<?php echo (droit_gauche($chiffre)) ?>">
          <div class="explications_left">
            <?php echo '<img src="' . esc_url($images[$image_option]) . '" alt="Illustration image of the solution">';  ?>
            <div class="explications_left_content">
              <h3 style="font-size: 26px;"><?php echo $explains['titre'] ?></h3>
              <p style="font-family: 'Montserrat' !important ;"><?php echo $explains['texte_contenu'] ?>
              </p>
              <a style=" color: rgb(237, 96, 34); text-decoration: underline" href="">Découvrir les services</a>
            </div>
          </div>
          <div class="explications_right" style="background-image: url('<?php echo esc_url($image_urle); ?>'); background-size:cover;">
          </div>
        </div>
      <?php endforeach ?>
    </section>

    <!-- Utilisation de l'objet WP_Query pour filtrer les posts  -->

    <?php
    $query2 = new WP_Query([
      'post_type' => 'case_study',
      'posts_per_page' => 3,
      'post__not_in' => [get_the_ID()],
    ]);
    ?>

    <!-- Section de suggestions d'autres études de cas (normalement ce sont des solutions, mais je n'ai pas reproduit cette page) -->

    <section class="decouvrir">
      <h3>Découvrir d'autres études de cas</h2>
        <div class="autre_etudes">

          <?php if ($query2->have_posts()) : ?>
            <?php while ($query2->have_posts()) : $query2->the_post() ?>
              <article class="autre_etudes_content">

                <!-- Récupération de l'image via CarbonFields -->

                <?php
                $thumbnail_id = carbon_get_the_post_meta('thumbnail');
                $thumbnail_url = wp_get_attachment_image_url($thumbnail_id, 'full');
                ?>

                <div class="autre_etudes_content_image " style="background-image: url('<?php echo esc_url($thumbnail_url); ?>'); background-size :cover;">
                  <div class="category_little">
                    <p><?php $category = carbon_get_the_post_meta('category');
                        echo ($category) ?></p>
                  </div>
                </div>
                <h4 style="font-size: 22px; font-weight:700; line-height: 0;"><?php the_title() ?></h4>
                <p style="color: rgb(108, 117, 125); font-size:14px; font-weight:400; margin-top: -12px">
                  <?php $teaser = carbon_get_the_post_meta('teaser');
                  echo ($teaser) ?>
                </p>
                <a style=" color: rgb(237, 96, 34); text-decoration: underline;" href="<?php the_permalink() ?>">Lire la suite</a>
              </article>
            <?php endwhile;
            wp_reset_postdata() ?>
        </div>
      <?php endif ?>
      <button class="button" style="display: flex; margin-left:auto; margin-right:auto;">Voir tous les services</button>
    </section>
    </div>
  <?php endwhile; ?>
<?php endif; ?>

<?php get_footer() ?>
