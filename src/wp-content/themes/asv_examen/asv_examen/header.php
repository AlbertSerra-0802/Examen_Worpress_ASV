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
                <a class="navbar-brand" href="index.html">Apollo Mission</a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>

               <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto d-flex flex-row gap-4 list-unstyled mb-0">
                        <li class="nav-item">
                            <a class="nav-link text-white fw-bold px-2" href="<?php echo home_url(); ?>">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white fw-bold px-2" href="<?php echo get_permalink(15); ?>">Portfolio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white fw-bold px-2" href="<?php echo get_permalink(17); ?>">Contacto</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>