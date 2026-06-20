<?php
/**
 * Template Name: Pàgina d'Inici Estil Albert
 */
get_header(); // Crida automàticament al teu header.php
?>

    <section class="hero-section d-flex flex-column justify-content-center py-5"
             style="background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('<?php echo get_template_directory_uri(); ?>/assets/img/moon.jpg') no-repeat center/cover;">
        <div class="container text-center mb-5">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/moon.svg" style="width: 80px;" alt="Luna">
            <h1 class="display-2 fw-bold text-white">TO THE MOON</h1>
            <p class="lead text-info">Explorando el legado del Programa Apollo</p>
            <div class="d-flex justify-content-center gap-4 mt-3 small text-white opacity-75">
                <span>📁 1961-1972</span>
                <span>👨‍🚀 24 Astronautas</span>
                <span>🌙 6 Alunizajes</span>
            </div>
        </div>

        <div class="row align-items-center mx-auto container"> 
            <div class="col-md-7 text-start">
                <h2 class="text-info fw-bold mb-3">El Programa Apollo</h2>
                <p class="text-light fs-5">El Programa Apollo fue un proyecto espacial tripulado desarrollado por Estados Unidos entre 1961 y 1972. Logró seis alunizajes tripulados con éxito.</p>
            </div>

            <div class="col-md-5 text-center mt-3 mt-md-0">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/img/astronauta.jpeg" alt="Astronauta" style="width: 250px; height: 230px; object-fit: cover;" class="rounded border border-secondary">
            </div>
        </div>
    </section>

    <main class="container my-5 text-white">
        <h2 class="text-center fw-bold mb-5 text-uppercase tracking-wider">Últimas Noticias de la Misión</h2>
        
        <div class="row g-4 justify-content-center">
            <?php 
            $query_noticies = new WP_Query( array( 'posts_per_page' => 5 ) );

            if ( $query_noticies->have_posts() ) {
                while ( $query_noticies->have_posts() ) {
                    $query_noticies->the_post();
                    ?>
                    
                    <div class="col-md-4">
                        <div class="p-4 rounded-3 border border-secondary bg-dark h-100 d-flex flex-column justify-content-between">
                            <div>
                                <div class="mb-3 text-center">
                                    <?php if ( has_post_thumbnail() ) : ?>
                                        <?php the_post_thumbnail('medium', array('class' => 'img-fluid rounded border border-secondary')); ?>
                                    <?php else : ?>
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/img/astronauta.jpeg" class="img-fluid rounded" alt="Apollo">
                                    <?php endif; ?>
                                </div>

                                <h3 class="h5 text-info fw-bold mb-2"><?php the_title(); ?></h3>
                                
                                <div class="small text-secondary mb-3">
                                    <?php the_excerpt(); ?>
                                </div>
                            </div>
                            
                            <a href="<?php the_permalink(); ?>" class="btn btn-outline-info btn-sm rounded-pill w-100 mt-2">
                                Leer más 🚀
                            </a>
                        </div>
                    </div>

                    <?php 
                } 
                wp_reset_postdata(); 
            } else {
                ?>
                <p class="text-center text-muted">No se han encontrado entradas publicadas.</p>
                <?php
            }
            ?>
        </div>
    </main>

<?php get_footer(); // Crida automàticament al teu footer.php ?>