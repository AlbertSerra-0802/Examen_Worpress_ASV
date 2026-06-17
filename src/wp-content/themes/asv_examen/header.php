<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <title><?php wp_title(); ?></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
   
    <?php wp_head(); ?>

    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/style.css">  

</head>

<body class="bg-dark text-white"> 

    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
            <div class="container-fluid">
                <!-- Hem arreglat l'enllaç del logo perquè torni a l'inici del WordPress -->
                <a class="navbar-brand" href="<?php echo home_url(); ?>">Apollo Mission</a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto d-flex flex-row gap-4 list-unstyled mb-0">
                        <li class="nav-item">
                            <a class="nav-link text-white fw-bold px-2" href="<?php echo home_url(); ?>">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <!-- MODIFICAT: Ara apunta directament al teu codi de Portfolio -->
                            <a class="nav-link text-white fw-bold px-2" href="<?php echo home_url('/?seccio=portfolio'); ?>">Portfolio</a>
                        </li>
                        <li class="nav-item">
                            <!-- MODIFICAT: Ara apunta directament al teu codi de Contacto -->
                            <a class="nav-link text-white fw-bold px-2" href="<?php echo home_url('/?seccio=contacto'); ?>">Contacto</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>