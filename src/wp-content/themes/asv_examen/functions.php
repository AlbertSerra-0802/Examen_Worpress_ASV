<?php
function asv_examen_scripts_bootstrap() {


    // Carreguem el CSS de Bootstrap
    wp_enqueue_style('bootstrap-css', 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css', array(), '5.3.3');
    
    // Carreguem el teu full d'estils propi (style.css)
    wp_enqueue_style('theme-style', get_stylesheet_uri(), array('bootstrap-css'), '1.0');

    // Carreguem el JS de Bootstrap (per si teniu menús desplegables)
    wp_enqueue_script('bootstrap-js', 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js', array(), '5.3.3', true);
}


add_action('wp_enqueue_scripts', 'asv_examen_scripts_bootstrap');