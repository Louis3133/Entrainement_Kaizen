<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define( 'AUTH_KEY',          'l@W%An$[Trj`2rc!JgEg}2wtg0fXn)iuVTM%Zvvvb/Z8MKF{Kj;7n}!MgX85k8Uv' );
define( 'SECURE_AUTH_KEY',   '#?m;_Yt)oak&Kw`1`{}[g3?RX=?@#HWQ:f<|Ttr8HYkUW-HZh`}PkOLm^#qK5@ju' );
define( 'LOGGED_IN_KEY',     '1ke!*Mjhpo^$y*:s<4fKz9ziT>DS1QA]7/.eGv?,=-rU*4~&27[-hn; .5N)dMh=' );
define( 'NONCE_KEY',         'pV^_O/<oCM.N]!39FQp{;1RxTW0{zPL!pfvh#kyM}-T,EJ-}B2pr%BumN~ Z*J*-' );
define( 'AUTH_SALT',         '>c|hBvo5`dBLrCV/1Wr5bgWink59UIy&s_n<mDmC]BDpwJLc-puD%?ZCwfc(? %2' );
define( 'SECURE_AUTH_SALT',  '[^liL6WGNs]hz$@w&_bsH|3uw=/{juZM7:KAkZMdJI/k$?t>;[7AKMy/zL5~{x[W' );
define( 'LOGGED_IN_SALT',    '<Y4KCowcLsZIOi.hEDZAHfz+=<_ns9Lpd^ 85`YGT#&(`yO4m[!z~ |.Th? fpSv' );
define( 'NONCE_SALT',        'w;lO%vS,;{%T zXW%c@ufNlmlq)16PmgSImy;l^I>e;<C6uxIo4;!.vyG($V{Oa/' );
define( 'WP_CACHE_KEY_SALT', 'W^-@ItHyhp;epKIx*;:| Q2%VWv(YY/=5PwBIN)_C#P)]#xiA}1{3@.f?X);LtQ3' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
