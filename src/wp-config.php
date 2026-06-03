<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'liceu' );

/** Database password */
define( 'DB_PASSWORD', 'liceu' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '[ew*|/o=_lU5Ri!A-8P n:e7p;O^x`#-2:HH,x#%lALdi9*Dp1DdH,R.[np|YF2]' );
define( 'SECURE_AUTH_KEY',  'zUa 4rrn_JngJRKI{D/sUfkQ90;P Hd;]1vXjWc~X]f,,Wi0S<z&_j<Pmdu.*Vq>' );
define( 'LOGGED_IN_KEY',    '0~5`m1f@iq8d-{RI7:B7[Q;$S~{b|ZL4c|<>Cv00;1X(*-PNqUM(_1fw#T,aXyeq' );
define( 'NONCE_KEY',        'W<9lCoE=wutC1VO8Yf~IT_hp=4Q.fm_J#drCeTppn3`X-bTf1+D#i)Y/Gqmcyn13' );
define( 'AUTH_SALT',        'DOi9}b?%~0)RLQ>EL5_E1]0s4caQ8NS.KKjAgn~<R4+z} +q3Mqxxum>Z:B*Qhx7' );
define( 'SECURE_AUTH_SALT', '=2-/+2mAn$rCc<oc$aIJ4;6chpQ*2.&Bh7W.w `K<1@WAae-ZQ0cUl] l``SE791' );
define( 'LOGGED_IN_SALT',   'f6XBN46{,BzV525/XgwKzGB;n[NY,mms3J]k6,/JV@)3TqH0n6?WXpt*)%X_emkF' );
define( 'NONCE_SALT',       'B()b+kxOFd+Sd1{<B1D,wp;RYuY5,lC]ij/0{]3scog <gG[ f6,GbU80tEQ [9-' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */

// TRUCS PERQUÈ VAGI ALTA VELOCITAT A L'INSTITUT:
define( 'WP_HTTP_BLOCK_EXTERNAL', true );
define( 'DISABLE_WP_CRON', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
