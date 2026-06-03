<?php get_header(); ?>

<main class="container my-5 text-center text-white">
    <h1 class="display-4 fw-bold">Portafolio</h1>
    <p class="text-info mb-5">Proyectos inspirados en la exploración espacial y el legado del programa Apollo</p>

    <div class="row g-4 justify-content-center">
        <div class="col-md-4">
            <div class="p-4 rounded-3 border border-secondary bg-dark h-100">
                <h3 class="h5 text-info fw-bold">Lunar Rover Simulation</h3>
                <p class="small text-secondary">Simulador interactivo del rover lunar utilizado en las misiones Apollo 15, 16 y 17.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-4 rounded-3 border border-secondary bg-dark h-100">
                <h3 class="h5 text-info fw-bold">Apollo Mission Timeline</h3>
                <p class="small text-secondary">Línea de tiempo interactiva que documenta todas las misiones del programa Apollo.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-4 rounded-3 border border-secondary bg-dark h-100">
                <h3 class="h5 text-info fw-bold">Moon Landing VR</h3>
                <p class="small text-secondary">Experiencia de realidad virtual del alunizaje del Apollo 11.</p>
            </div>
        </div>
    </div>

    <div class="row g-4 justify-content-center mt-2">
        <div class="col-md-4">
            <div class="p-4 rounded-3 border border-secondary bg-dark h-100">
                <h3 class="h5 text-info fw-bold">Space Communication</h3>
                <p class="small text-secondary">Sistema de comunicación basado en el protocolo usado entre Houston y las misiones Apollo.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-4 rounded-3 border border-secondary bg-dark h-100">
                <h3 class="h5 text-info fw-bold">Astronaut Training App</h3>
                <p class="small text-secondary">Aplicación educativa sobre el entrenamiento de astronautas del programa Apollo.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-4 rounded-3 border border-secondary bg-dark h-100">
                <h3 class="h5 text-info fw-bold">Saturn V Launch Tracker</h3>
                <p class="small text-secondary">Visualización de datos de lanzamiento del cohete Saturn V.</p>
            </div>
        </div>
    </div>

    <div class="mt-5">
        <a href="<?php echo home_url(); ?>" class="btn btn-primary rounded-pill px-4 py-2 fw-bold">
            🚀 Volver al inicio
        </a>
    </div>
</main>

<?php get_footer(); ?>