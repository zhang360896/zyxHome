<?php
/*
Plugin Name: Amazing Audio Player
Plugin URI: http://amazingaudioplayer.com
Description: Amazing Audio Player WordPress Plugin
Version: 1.0
Author: Magic Hills Pty Ltd
Author URI: http://amazingaudioplayer.com
License: Copyright 2013 Magic Hills Pty Ltd, All Rights Reserved
*/

define('AMAZINGAUDIOPLAYER_VERSION', '1.0');

define('AMAZINGAUDIOPLAYER_URL', plugin_dir_url( __FILE__ ));

define('AMAZINGAUDIOPLAYER_PATH', plugin_dir_path( __FILE__ ));

require_once 'app/class-amazingaudioplayer-controller.php';

class AmazingAudioPlayer_Plugin

{
	public $amazingaudioplayer_controller;
	
	function __construct() {
		
		$this->init();
	}
	
	public function init()
	{
		
		$this->amazingaudioplayer_controller = new AmazingAudioPlayer_Controller();

		register_activation_hook( __FILE__, array($this, 'activation_handler') );
		
		add_action( 'admin_menu', array($this, 'register_menu') );
		
		add_shortcode( 'amazingaudioplayer', array($this, 'shortcode_handler') );
		
		add_action( 'init', array($this, 'register_script') );
		add_action( 'wp_enqueue_scripts', array($this, 'enqueue_script') );
		add_action( 'admin_enqueue_scripts', array($this, 'enqueue_admin_script') );
	}
	
	function activation_handler()
	{
		$this->amazingaudioplayer_controller->activation_handler();
	}
	
	function enqueue_admin_script($hook)

	{
		if ($hook == 'admin_page_amazingaudioplayer_view_audioplayer')

			wp_enqueue_script('amazingaudioplayer-script');

	}
	
	function enqueue_script()
	{
		wp_enqueue_script('amazingaudioplayer-script');
	}
	
	function register_script()
	{
		$uploads = wp_upload_dir();		
		$script_url = $uploads['baseurl'] . '/amazingaudioplayer/sharedengine/amazingaudioplayer.js';
		
		wp_register_script('amazingaudioplayer-script', $script_url, array('jquery'), AMAZINGAUDIOPLAYER_VERSION, false);
		
		if ( is_admin() )

		{

			wp_register_style('amazingaudioplayer-style', AMAZINGAUDIOPLAYER_URL . 'amazingaudioplayer.css');

			wp_enqueue_style('amazingaudioplayer-style');

		}
	}
	
	function shortcode_handler($atts)
	{
		if ( !isset($atts['id']) )
			return __('Please specify an audio player id', 'amazingaudioplayer');
		
		$id = $atts['id'];
		return $this->amazingaudioplayer_controller->generate_body_code($id);
	}
	
	function register_menu()
	{
		add_menu_page( 
				__('Amazing Audio Player', 'amazingaudioplayer'), 
				__('Amazing Audio Player', 'amazingaudioplayer'), 
				'manage_options', 
				'amazingaudioplayer_show_audioplayers', 
				array($this, 'show_audioplayers'),
				AMAZINGAUDIOPLAYER_URL . 'images/logo-16.png' );
				
		add_submenu_page(
				'amazingaudioplayer_show_audioplayers', 
				__('Installed Players', 'amazingaudioplayer'), 
				__('Installed Players', 'amazingaudioplayer'), 
				'manage_options',
				'amazingaudioplayer_show_audioplayers',
				array($this, 'show_audioplayers' ) );
		
		add_submenu_page(

				'amazingaudioplayer_show_audioplayers',

				__('Add New', 'amazingaudioplayer'),

				__('Add New', 'amazingaudioplayer'),

				'manage_options',

				'amazingaudioplayer_add_new',

				array($this, 'add_new' ) );
		
		add_submenu_page(

				null,

				__('View Audio Player', 'amazingaudioplayer'),

				__('View Audio Player', 'amazingaudioplayer'),

				'manage_options',

				'amazingaudioplayer_view_audioplayer',

				array($this, 'view_audioplayer' ) );
	}
	
	public function show_audioplayers()
	{
		$this->amazingaudioplayer_controller->show_audioplayers();
	}
	
	public function add_new()
	{
		$this->amazingaudioplayer_controller->add_new();
	}
	
	public function view_audioplayer()
	{
		$this->amazingaudioplayer_controller->view_audioplayer();
	}
}

$amazingaudioplayer_plugin = new AmazingAudioPlayer_Plugin();

/**
 * Global php function
 * @param unknown_type $id
 */
function amazingaudioplayer($id) {
	
	echo $amazingaudioplayer_plugin->amazingaudioplayer_controller->generate_body_code($id);
}

/**
 * Uninstallation
 */
function amazingaudioplayer_uninstall() {


	global $wpdb;
	

	$table_name = $wpdb->prefix . "amazingaudioplayer";

	$wpdb->query("DROP TABLE IF EXISTS $table_name");

}

if ( function_exists('register_uninstall_hook') )
	register_uninstall_hook( __FILE__, 'amazingaudioplayer_uninstall' );

