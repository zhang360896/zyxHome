<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'zyxhome');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '987654');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'QiSgL7-d!!-WCA2b6.Y~#|NC7 ?]qYkl&oFU84A9u@dg2E1hw}L=mA~;-RleSH!V');
define('SECURE_AUTH_KEY',  'Tn7sS-S9/kCQM]TKtP@%8#||qk[v.t #7m-q8-|1,eDVG|:QQ`!TYWQ5Dt+JdWmE');
define('LOGGED_IN_KEY',    'i sbG-d:H!gi+;+Se[}dY;m5u=[AII_V{fLT;}?f_;T|lZ^AvyXHO6N:`q>IJK4u');
define('NONCE_KEY',        ' #f*+}/JC~X?=Lja]ORqr1+6y$smg01hGSMQoK_|D0_@[I5Qo/DsS9jAHhKc/gP[');
define('AUTH_SALT',        '3R(yf?=4rFwr|NjRzeb=w8UC)^{Z%((K<~|rkKT{DiH/<=43kgs{T|&6IuO=[ |+');
define('SECURE_AUTH_SALT', 'hB`Iv|BQhmnW%lj l?+.,`[Cgdec(YJ/!zmR1esbj>^*/8mXw+s(.V#ienA3/|3A');
define('LOGGED_IN_SALT',   'fR}~drb!Lv]y(A6zo%5HVW|LR&LBX;Wf@uH8d}I+hpb9e3k!H?ByU*I^%R [=*A,');
define('NONCE_SALT',       '!a3r{6s;5yy+7*rl6#vLJn]y+/z;-{7ONs!3D+|>*s(yzNFz=4|S1FOtk-B97;@+');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'bluemix_0_5_wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
