<?php add_theme_support( 'post-thumbnails' );

// La funció per registrar el menú
function asv_config_tema() {
    register_nav_menus(array(
        'menu_principal' => 'Menú Principal Apollo Mission'
    ));
}

// I aquí li diem a WordPress que executi la funció
add_action('after_setup_theme', 'asv_config_tema');

// 1. Força a WordPress a no buscar actualitzacions de traduccions ni del nucli a internet
add_filter( 'pre_site_transient_update_core', '__return_null' );
add_filter( 'pre_site_transient_update_plugins', '__return_null' );
add_filter( 'pre_site_transient_update_themes', '__return_null' );

// 2. Evita que WordPress intenti connectar amb els servidors de comentaris o gravatars externs
add_filter( 'get_avatar', '__return_empty_string' );