<?php 

require_once 'class-amazingaudioplayer-model.php';
require_once 'class-amazingaudioplayer-view.php';

class AmazingAudioPlayer_Controller {

	private $view, $model;

	function __construct() {

		$this->model = new AmazingAudioPlayer_Model($this);	
		$this->view = new AmazingAudioPlayer_View($this);
	}

	function add_new() {
		
		$this->view->print_add_new();
	}
	
	function show_audioplayers() {
		
		$this->view->print_audioplayers();
	}
	
	function view_audioplayer()
	{
		$this->view->view_audioplayer();
	}
	
	function install_audioplayer($zipfile, $id) {
		
		return $this->model->install_audioplayer($zipfile, $id);
	}
	
	function generate_body_code($id) {
		
		return $this->model->generate_body_code($id);
	}
	
	function get_list_data() {
		
		return $this->model->get_list_data();
	}
	
	function delete_audioplayer($id)
	{
		return $this->model->delete_audioplayer($id);
	}
	
	function activation_handler()
	{
		if ( !$this->model->is_db_table_exists() )
			$this->model->install_audioplayer_from_folder( AMAZINGAUDIOPLAYER_PATH, -1);
	}
}