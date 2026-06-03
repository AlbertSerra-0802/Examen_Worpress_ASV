<?php get_header(); ?>

<main class="container my-5 py-5 text-white">
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
        
        <h1 class="display-4 fw-bold mb-4 border-bottom pb-2 text-info">
            <?php the_title(); ?>
        </h1>
        
        <div class="lead entry-content fs-4">
            <?php the_content(); ?>
        </div>

    <?php endwhile; else : ?>
        <p>No s'ha trobat contingut en aquesta pàgina.</p>
    <?php endif; ?>
</main>

<?php get_footer(); ?>