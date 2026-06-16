<?php get_header(); ?>

<!-- Secció Hero (Aquesta es manté igual que la tenies) -->
<section class="hero-section d-flex flex-column justify-content-center py-5"
         style="background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('<?php echo get_template_directory_uri(); ?>/img/background.jpg') no-repeat center/cover;">
    <div class="container text-center mb-5">
        <img src="<?php echo get_template_directory_uri(); ?>/img/moon.svg" style="width: 80px;" alt="Luna">
        <h1 class="display-2 fw-bold text-white">TO THE MOON</h1>
        <p class="lead text-info">Explorando el legado del Programa Apollo</p>
        <div class="d-flex justify-content-center gap-4 mt-3 small text-white opacity-75">
            <span>📁 1961-1972</span>
            <span>👨‍🚀 24 Astronautas</span>
            <span>🌙 6 Alunizajes</span>
        </div>
    </div>
</section>

<!-- NOVA SECCIÓ: Bucle dinàmic per a les 5 entrades del'examen -->
<main class="container my-5 text-white">
    <h2 class="text-center fw-bold mb-5 text-uppercase tracking-wider">Últimas Noticias de la Misión</h2>
    
    <div class="row g-4 justify-content-center">
        <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
            
            <div class="col-md-4">
                <div class="p-4 rounded-3 border border-secondary bg-dark h-100 d-flex flex-column justify-content-between">
                    <div>
                        <!-- Mostra la imatge destacada que has pujat al panell -->
                        <div class="mb-3 text-center">
                            <?php if (has_post_thumbnail()) : ?>
                                <?php the_post_thumbnail('medium', array('class' => 'img-fluid rounded border border-secondary')); ?>
                            <?php else : ?>
                                <!-- Imatge per defecte si oblides pujar-ne una -->
                                <img src="<?php echo get_template_directory_uri(); ?>/img/astronauta.jpeg" class="img-fluid rounded" alt="Apollo">
                            <?php endif; ?>
                        </div>

                        <!-- Títol de l'entrada dinàmic -->
                        <h3 class="h5 text-info fw-bold mb-2"><?php the_title(); ?></h3>
                        
                        <!-- Text curt de l'entrada dinàmic -->
                        <div class="small text-secondary mb-3">
                            <?php the_excerpt(); ?>
                        </div>
                    </div>
                    
                    <!-- Botó per llegir l'entrada completa -->
                    <a href="<?php the_permalink(); ?>" class="btn btn-outline-info btn-sm rounded-pill w-100 mt-2">
                        Leer más 🚀
                    </a>
                </div>
            </div>

        <?php endwhile; else : ?>
            <p class="text-center text-muted">No se han encontrado entradas publicadas.</p>
        <?php endif; ?>
    </div>
</main>

<?php get_footer(); ?>