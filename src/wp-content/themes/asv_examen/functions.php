<?php add_theme_support( 'post-thumbnails' );

// La funció per registrar el menú
function asv_config_tema() {
    register_nav_menus(array(
        'menu_principal' => 'Menú Principal Apollo Mission'
    ));
}

// I aquí li diem a WordPress que executi la funció
add_action('after_setup_theme', 'asv_config_tema');