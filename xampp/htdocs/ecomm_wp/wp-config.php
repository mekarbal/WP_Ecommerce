<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
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
define( 'DB_NAME', 'ecomm_wp' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '=72jx6vY}x!|_rLI /k#]r,hg};NV#0%MOm<Af^]-^&Z0dBF*Ge}x/J@C%&t9# v' );
define( 'SECURE_AUTH_KEY',  'NJD)qcWFM)S3+~u!:M`n*~L(^ei^rqeSI |1k%^:i_;217AslW_#!?_1Icf=Mz/y' );
define( 'LOGGED_IN_KEY',    'Ls1vNP? _dFJ6X/*w@2bI13z-7xA`12)=.~g.KFx]+>#3Ue^/uI Nzo*LvJ+#0Se' );
define( 'NONCE_KEY',        '])R87,1LyAV|=b6/;Js|MMdc@ ~$zvfu79{9_FY[~@@N_D$B#KIC3uleW|F5>*Pp' );
define( 'AUTH_SALT',        '_lvnbt(i{?.0dbIVe~7zn:&ZA;RnA{)RXNea;f^0<x<m)/xu=e|:J!a0VFO>Z4X$' );
define( 'SECURE_AUTH_SALT', ']aTzi{xR:%07hzV&27VQl+-ymy~58g,jjh3%3h9( #j%ys:d1Mcq;W@98W2c:Plf' );
define( 'LOGGED_IN_SALT',   'K*)&3-H_Ar>Kdc>.bpg1f^Ca,@ADD=IW+$Jz6-}Ix;bU;cvEe*r)JFVi|[.-kw,o' );
define( 'NONCE_SALT',       'PBwm8t/B*@DP@*M`LimSM vj.~w0/B |+SmsL9;yZZ>6M$?<ok?3;x/TGjaoS#rh' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'ecomm_';

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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
