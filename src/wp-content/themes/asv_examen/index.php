<?php get_header(); ?>
<main class="container my-5 text-white">
    <?php
    if (have_posts()) :
        while (have_posts()) : the_post();
            the_title('<h2>', '</h2>');
            the_content();
        endwhile;
    endif;
    ?>
</main>
<?php get_footer(); ?>