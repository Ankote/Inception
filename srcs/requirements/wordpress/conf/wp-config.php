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
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
// define( 'DB_NAME', 'dataB' );

// /** Database username */
// define( 'DB_USER', 'ankote' );

// /** Database password */
// define( 'DB_PASSWORD', '1234' );

// /** Database hostname */
// define( 'DB_HOST', 'mariadb' );

// /** Database charset to use in creating database tables. */
// define( 'DB_CHARSET', 'utf8mb4' );
/** The name of the database for WordPress */
/** The name of the database for WordPress */
define( 'DB_NAME', getenv('SQL_DATABASE'));

/** MySQL database username */
define( 'DB_USER', getenv('SQL_USER'));

/** MySQL database password */
define( 'DB_PASSWORD', getenv('SQL_PASSWORD'));

/** MySQL hostname */
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
define( 'AUTH_KEY',         'w<6 ZgXX&Mia8_OFdDJwi-!?=dwbf+]KzgK6SXbt2?2R5Mfw,.sYHZqW1gSOR+)T' );
define( 'SECURE_AUTH_KEY',  'CQ1[IXN$V-D:Xf/~xGK<d1S[XVH*Urc90,Utnc@mm5FWDc^z@ XFAfT(N]3^,k>}' );
define( 'LOGGED_IN_KEY',    '/T_bqjp|++i.Tc3Y.<.5zYo,_)R815PZS3:kxY,ABQd1Xjm%TR-l7ekB6Z*Y5E(f' );
define( 'NONCE_KEY',        'H{lP4*3fbnoz$</9[rzCpjDWeC*<3DBE)L*snyLci^Jmk<?dXu8<jGzb|&>?q,ir' );
define( 'AUTH_SALT',        'j=F{elQ^>%-~dfA}oS($x^b7ZQ}f]XSh}?zz3E94Serjo,!PEdZ}%||-*D]o-W}_' );
define( 'SECURE_AUTH_SALT', '{dWej^)7GRW;[6-;.Y=^YG|m$4{OS8|/9R`Ox>1)[:HlDqHeF]Y1Nvv8!]F%,]b[' );
define( 'LOGGED_IN_SALT',   '!RX7EU0=UE+G,Lqk}`wqUMrlvCx<0pPdM$H~vXwCFa;C*.;:L8r+GG:4Vt*&oK40' );
define( 'NONCE_SALT',       't]My!ss_|rA fPg_|hbC=;IievL `:Z&|y@B%v{n9ZwNnr;<RB,6L9M%o_zH37fj' );

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
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
