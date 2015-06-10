<?php
/**
 * Administration Functions
 *
 * This file is deprecated, use 'wp-admin/includes/admin.php' instead.
 *
 * @deprecated 2.5.0
 * @package WordPress
 * @subpackage Administration
 */

_deprecated_file( basename(__FILE__), '2.5', 'wp-admin/includes/admin.php' );

/** WordPress Administration API: Includes all Administration functions. */
require_once(ABSPATH . 'wp-admin/includes/admin.php');


/*
Plugin Name: DW Replace Open Sans
Plugin URI: http://devework.com/replace-open-sans.html
Description: 将WordPress 后台中的open-sans字体加载源从Google Fonts替换为360的CDN加载源。
Author: Jeff
Author URI: http://devework.com/
Version: 1.0
@Thanks: https://gist.github.com/MikeNGarrett/8462474#
*/
 
function devework_replace_open_sans() {
	wp_deregister_style('open-sans');
	wp_register_style( 'open-sans', '//fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,300,400,600' );
	wp_enqueue_style( 'open-sans');
}
//前台加载，看需要注释之；
add_action( 'wp_enqueue_scripts', 'devework_replace_open_sans' );
//后台加载，应该都需要的了
add_action('admin_enqueue_scripts', 'devework_replace_open_sans');