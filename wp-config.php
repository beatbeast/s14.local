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
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 's14_local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 's14.local' );

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
define( 'AUTH_KEY',         ')oG{@}-MB*,7q0e<}dQ{eHW{jX#v}joBE/zP+t#fq*kzL*5v9hD&H_3>g_e/:8h&' );
define( 'SECURE_AUTH_KEY',  'Ks%N538.v9HH`V[OD^elTai[`L]vv?:-.2#5&P,_55{V;ZvXlizR2GxfpvL:a8#W' );
define( 'LOGGED_IN_KEY',    'N}PM{m|:bKL1]>:d(E_:S,N?lJNzj=RafZ|]WI?Z0RcWCRN;5M<^#8 GW{.) zea' );
define( 'NONCE_KEY',        'xIt1z 5jj53I@Yf<_y&SF-31);/mzQf5{-=l,}9m@Hv.70P;Sjj)HczzTw0vqP]#' );
define( 'AUTH_SALT',        'q|YadQ:p=u}$@&dGnv ?]-vy<@Z=f95~$y0os#b1DG?)odtFRVO3%0a}?@e9Wlz{' );
define( 'SECURE_AUTH_SALT', 'u8x]}A1p[i,P6sgk/pe6a?>1`vgE]mvi5p(k|LhK<~?h_pD=|VzDlWH;Khot3gk3' );
define( 'LOGGED_IN_SALT',   'q1)U,22M<ls`i:fA/c+0=o7ce.)->Z|3^_wh9|R{3qBT8LJbXqb*WgKLpQ~i:3Y8' );
define( 'NONCE_SALT',       'r!*NTwRT]cR^!+-]~$cF>kRPf G/vn1cT6psv@?/uRy8>YOjsdW-F2NUrf:;h7?S' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
