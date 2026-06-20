<?php get_header(); ?>

<main class="container my-5 text-center">
    <div class="py-5">
        <h1 class="display-4 fw-bold text-white">Portafolio</h1>
        <p class="lead text-info">Proyectos inspirados en la exploración espacial y el legado del programa Apollo</p>
    </div>

    <div class="row g-4 text-start justify-content-center">
        <?php
        if (have_posts()) : while (have_posts()) : the_post();
            ?>
            <div class="col-md-4">
                <div class="p-4 rounded-3 border border-secondary bg-dark h-100 d-flex flex-column justify-content-between">
                    <div>
                        <div class="mb-3 text-center">
                            <?php 
                            if (has_post_thumbnail()) {
                                the_post_thumbnail('medium', array('class' => 'img-fluid rounded border border-secondary'));
                            } else {
                                echo '<img src="'.get_template_directory_uri().'/assets/img/astronauta.jpeg" class="img-fluid rounded" alt="Default">';
                            } 
                            ?>
                        </div>
                        <h5 class="fw-bold text-info"><?php the_title(); ?></h5>
                        <div class="small text-secondary mb-3"><?php the_excerpt(); ?></div>
                    </div>
                    <a class="btn btn-outline-info btn-sm rounded-pill w-100" href="<?php the_permalink(); ?>">Ver Proyecto</a>
                </div>
            </div>
            <?php
            endwhile;

            // Paginació automàtica de WordPress per si hi ha molts projectes
            echo '<div class="col-12 mt-4 d-flex justify-content-center">';
            the_posts_pagination(array(
                'prev_text' => __('Anterior'),
                'next_text' => __('Siguiente'),
            ));
            echo '</div>';

        else :
            echo '<p class="text-center text-muted">No existen posts.</p>';
        endif;
        ?>
    </div>
</main>

<?php get_footer(); ?>