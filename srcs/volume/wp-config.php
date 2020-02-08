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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordy' );

/** MySQL database username */
define( 'DB_USER', 'amoussai' );

/** MySQL database password */
define( 'DB_PASSWORD', '1234' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         'n]6ARU9]1%ObV^@d8I=]RqQ&x#H^kP~YzF$E/^K{!H%qF,I)<hn[%!-A&:EB-S-3');
define('SECURE_AUTH_KEY',  ',vUPG>6l+MjU}uz-?U{i,QYI+Ev$C>orWa&+R$U 7|]V:|Johsb<]>NBVK<OZu-L');
define('LOGGED_IN_KEY',    'p-lJD|dz6LYslHHx]![O#*_qwg%RJDG>8{!$6h^?dzgwoGe{dKj|H3a[v>,#+8kd');
define('NONCE_KEY',        'A[Y5iSWY.m%cr 9%Z=7KB_$}0/OMuGcbP{A?e3lZ>~uCN+-QY,iCS|cJr:|@4TH}');
define('AUTH_SALT',        '.n)q-lP|ZEM,v~k|ue?j$)|a(7DB[.UdRNj^-,]7l?:U-$g.lmu7UvQz_BYFK%(w');
define('SECURE_AUTH_SALT', '2tHIIMsC)J2?s]OyF[Cpa-mbi1.SUFoDM|%9JW<Q|M4yGp@2zbW/r.3;E*x&Wivh');
define('LOGGED_IN_SALT',   'zon+rpB%_`z DW>2+![|eeF:{LV0W^XThMIA2E|N@HTId#b0+[JUtQBU-J2nTyGh');
define('NONCE_SALT',       '`-,%.-#s|1,b+(N9~^.r<?G<-G:pCVdeRX19bAXF<A_9%a+-4v+W(|<oQ(2}t4tq');

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
