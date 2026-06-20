<?php get_header(); ?>

<main class="container my-5 text-white py-5">
    <div class="row justify-content-center">
        <div class="col-md-8 bg-dark p-5 rounded border border-secondary">
            <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                <h1 class="text-info fw-bold mb-4"><?php the_title(); ?></h1>
                
                <div class="mb-4 text-center">
                    <?php if (has_post_thumbnail()) : ?>
                        <?php the_post_thumbnail('large', array('class' => 'img-fluid rounded border border-secondary')); ?>
                    <?php endif; ?>
                </div>

                <div class="fs-5 text-lightlh-base">
                    <?php the_content(); ?>
                </div>

                <a href="<?php echo home_url(); ?>" class="btn btn-outline-info mt-4 rounded-pill">
                    ← Volver al Inicio
                </a>
            <?php endwhile; endif; ?>
        </div>
    </div>
</main>

<?php get_footer(); ?>