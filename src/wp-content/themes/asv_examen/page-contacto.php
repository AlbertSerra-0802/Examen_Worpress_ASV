<?php get_header(); ?>

<main class="container my-5 text-white">
    <div class="row justify-content-center">
        <div class="col-md-6 text-center mb-4">
            <h1 class="display-4 fw-bold text-info">Contacto</h1>
            <p class="lead text-secondary">¿Tienes alguna pregunta sobre la misión? Déjanos un mensaje.</p>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="p-4 rounded-3 border border-secondary bg-dark">
                <form>
                    <div class="mb-3">
                        <label class="form-label fw-bold">Nombre</label>
                        <input type="text" class="form-control bg-secondary text-white border-0" placeholder="Tu nombre">
                    </div>
                    <div class="mb-3">
                        <label class="form-label fw-bold">Correo Electrónico</label>
                        <input type="email" class="form-control bg-secondary text-white border-0" placeholder="nombre@correo.com">
                    </div>
                    <div class="mb-3">
                        <label class="form-label fw-bold">Mensaje</label>
                        <textarea class="form-control bg-secondary text-white border-0" rows="4" placeholder="Escribe aquí tu mensaje..."></textarea>
                    </div>
                    <button type="submit" class="btn btn-info w-100 fw-bold text-dark rounded-pill">Enviar Mensaje 🚀</button>
                </form>
            </div>
        </div>
    </div>
</main>

<?php get_footer(); ?>