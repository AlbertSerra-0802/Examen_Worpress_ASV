<?php get_header(); ?>
<main>
    <section class="hero-section d-flex flex-column justify-content-center py-5" 
             style="background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('<?php echo get_template_directory_uri(); ?>/img/moon.jpg') no-repeat center center fixed; background-size: cover; min-height: 100vh;">
        
        <div class="container">
            <div class="text-center mb-5">
                <img src="<?php echo get_template_directory_uri(); ?>/img/moon.svg" style="width: 60px;" class="mb-3 luna-azul"> 
                
                <h1 class="display-2 fw-bold text-white">TO THE MOON</h1>
                <p class="lead text-info">Explorando el legado del Programa Apollo</p>
                
                <div class="d-flex justify-content-center gap-4 mt-3 small text-white opacity-75">
                    <span>📅 1961-1972</span>
                    <span>👨‍🚀 24 Astronautas</span>
                    <span>🌙 6 Alunizajes</span>
                </div>
            </div>

            <div class="row align-items-center mx-auto"> 
                <div class="col-md-7 text-start">
                    <h2 class="text-info fw-bold mb-3">El Programa Apollo</h2>
                    <p class="text-light fs-5">El Programa Apollo fue un proyecto espacial tripulado desarrollado por Estados Unidos entre 1961 y 1972. Logró seis alunizajes tripulados con éxito.</p>
                </div>

                <div class="col-md-5 text-center mt-3 mt-md-0">
                    <img src="<?php echo get_template_directory_uri(); ?>/img/astronauta.jpeg" alt="Astronauta" style="width: 250px; height: 230px; object-fit: cover;">
                </div>
            </div>
        </div>
    </section>
</main>
<?php get_footer(); ?>