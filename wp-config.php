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
define('AUTH_KEY',         'V@z+8tXW?vB),3$kW2p)rb-,,VA+%z}Zx^qn}A-nca/z]!%nLhw*<,^S.qB&W6*:');
define('SECURE_AUTH_KEY',  '}z7mh*|)WZWsKH0(BpE)+2IJ@-n(-;nb+,;c<$(+w-sOvL|(8Mx8,`ALw- (8`+7');
define('LOGGED_IN_KEY',    ')F5#lNk8wSZ1Ot_cYc|5s^!f$@^TC%j4^OLu.I#g#[nB--il$|M9>F%o+2?s$(! ');
define('NONCE_KEY',        '1=,/X)$He!0GyWNVru?])3N?GlEw2CSp2v>E%zttCk;e:Tq*{0gdXS}xSHL?qvgB');
define('AUTH_SALT',        'rPkkR&P~X>a)M7MPYgMtN%B* nU#M}+YT|}9|e; ZLn>EQZyl)Ej%/$k%y`ww?3r');
define('SECURE_AUTH_SALT', 'a.*3`~j&MYU[WjFDNDo<vbm:Kj$}We=pxY<)Rn5;~e?YAI9]o|lU5?0>.r!z^FPe');
define('LOGGED_IN_SALT',   '-Q4KG_||CGe];PMWtQU_2Ot1WAs+]HH-]E/)a+dsjFCfG*:shdobTrfK!Uvwvo-:');
define('NONCE_SALT',       '1&F077Dm!(4DE6w1tsWV}$QEzZyZ-{VL:>#@|pQf3 qM0yM3w!/iA 8?kVaQ.|})');

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
