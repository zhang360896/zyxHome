<?php 

require_once 'functions.php';

class AmazingAudioPlayer_Model {

	private $controller;
	
	function __construct($controller) {
		
		$this->controller = $controller;
		
	}
	
	function get_upload_path() {
		
		$uploads = wp_upload_dir();
		
		return $uploads['basedir'] . '/amazingaudioplayer/';
	}
	
	function get_upload_url() {
	
		$uploads = wp_upload_dir();
	
		return $uploads['baseurl'] . '/amazingaudioplayer/';
	}
	
	function install_audioplayer_from_folder($install_folder, $id) {
				
		// write to db
		$ret = $this->add_audioplayer_to_db($install_folder . 'data/', $id);
		if ( is_wp_error($ret) )
			return $ret;
		
		// copy to uploads folder
		$upload_folder = $this->get_upload_path();
		if ( !is_dir( $upload_folder ) )
		{
			if ( 0 == wp_mkdir_p( $upload_folder ) )
				return new WP_Error('filesystem', __("Cannot create folder", "amazingaudioplayer"));
		}
		
		$audioplayer_folder = $upload_folder . $ret['id'] . '/';
		if ( is_dir( $audioplayer_folder ) )
			amazingaudioplayer_recurse_rmdir( $audioplayer_folder );
		if ( 0 == wp_mkdir_p( $audioplayer_folder ) )
			return new WP_Error('filesystem', __("Cannot create folder", "amazingaudioplayer"));
		
		amazingaudioplayer_recurse_copy($install_folder . 'data/', $audioplayer_folder);
		
		// copy sharedengine to upload folder
		$sharedengine_folder = $upload_folder . 'sharedengine/';
		if ( is_dir( $sharedengine_folder ) )
			amazingaudioplayer_recurse_rmdir( $sharedengine_folder );
		if ( 0 == wp_mkdir_p( $sharedengine_folder ) )
			return new WP_Error('filesystem', __("Cannot create folder", "amazingaudioplayer"));
		
		amazingaudioplayer_recurse_copy($install_folder . 'sharedengine/', $sharedengine_folder);
		
		// modify id of audioplayer
		$file = $audioplayer_folder . 'audioplayerengine/initaudioplayer.js';
		$content = file_get_contents($file);
		$content = str_replace("%AUDIOPLAYERID%", $ret['id'], $content);
		$jsfolder = $this->get_upload_url() . $ret['id'] . '/audioplayerengine/';
		$content = str_replace("%JSFOLDER%", $jsfolder, $content);
		file_put_contents($file, $content);

		// modify id in css
		$file = $audioplayer_folder . 'audioplayerengine/initaudioplayer.css';
		$content = file_get_contents($file);
		$content = str_replace("%AUDIOPLAYERID%", $ret['id'], $content);
		file_put_contents($file, $content);
		
		return array(
				"id" => $ret['id']);
	}
	
	function install_audioplayer($zipfile, $id) {
				
		// unzip
		$unzip_folder = trailingslashit ( dirname( $zipfile ) );
		
		$ret = amazingaudioplayer_unzip_file($zipfile, $unzip_folder);
		if ( is_wp_error($ret) )
			return $ret;
		
		unlink( $zipfile );
		
		$ret = $this->install_audioplayer_from_folder( $unzip_folder . "amazingaudioplayer-plugin/", $id );
		if ( is_wp_error($ret) )
			return $ret;
				
		// check new version
		$ret["new"] = false;
		
		$file = $unzip_folder . "amazingaudioplayer-plugin/" . "amazingaudioplayer.php";
		$content = file_get_contents($file);
		$pattern = '/define\(\'AMAZINGAUDIOPLAYER_VERSION\', \'([0-9\.]+)\'\);/';
		if ( preg_match($pattern, $content, $matches) )
		{
			if ( floatval($matches[1]) > floatval(AMAZINGAUDIOPLAYER_VERSION) )
				$ret["new"] = true;
		}
		
		amazingaudioplayer_recurse_rmdir( $unzip_folder . "amazingaudioplayer-plugin/" );
		
		return $ret;
	}
	
	
	function add_audioplayer_to_db($folder, $id) {
		
		$this->create_db_table();
		return $this->insert_audioplayer_to_db_table($folder, $id);
	}
	
	function is_db_table_exists() {
		
		global $wpdb;
		$table_name = $wpdb->prefix . "amazingaudioplayer";
		
		return ( $wpdb->get_var("SHOW TABLES LIKE '$table_name'") == $table_name );
	}
	
	function create_db_table() {
		
		global $wpdb;
		$table_name = $wpdb->prefix . "amazingaudioplayer";
		
		$charset = '';
		if ( !empty($wpdb -> charset) ) 
			$charset = "DEFAULT CHARACTER SET $wpdb->charset";
		if ( !empty($wpdb -> collate) ) 
			$charset .= " COLLATE $wpdb->collate";
		
		$sql = "CREATE TABLE $table_name (
		id mediumint(9) NOT NULL AUTO_INCREMENT,
		time datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
		authorid tinytext NOT NULL,
		name tinytext DEFAULT '' NOT NULL,
		images text DEFAULT '' NOT NULL,
		audios text DEFAULT '' NOT NULL,
		audioplayercode text DEFAULT '' NOT NULL,
		PRIMARY KEY  (id)
		) $charset;";
			
		require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
		dbDelta($sql);
	}
	
	function insert_audioplayer_to_db_table($folder, $id) {
		
		global $wpdb, $user_ID;
		$table_name = $wpdb->prefix . "amazingaudioplayer";
		
		$file = $folder . "audioplayer.html";
		if ( !is_file($file) )
			return new WP_Error('filesystem', __("Cannot find audioplayer file", "amazingaudioplayer"));
		
		$time = current_time('mysql');
		$authorid = $user_ID;
		
		if ( ($id > 0) && $this->is_id_exist($id) )
		{
			$ret = $wpdb->query( $wpdb->prepare(
					"
					UPDATE $table_name
					SET time=%s, authorid=%s 
					WHERE id=%d
					",
					$time,
					$authorid,
					$id
			) );	
			if (!$ret)
				return new WP_Error('wp_db', __("Cannot insert audioplayer to database", "amazingaudioplayer"));
		}
		else
		{
			$ret = $wpdb->query( $wpdb->prepare(
					"
					INSERT INTO $table_name (time, authorid, name, images, audios, audioplayercode)
					VALUES (%s, %s, %s, %s, %s, %s)
					",
					$time,
					$authorid,
					"",
					"",
					"",
					""
			) );
			if (!$ret)
				return new WP_Error('wp_db', __("Cannot insert audioplayer to database", "amazingaudioplayer"));
			
			$id = $wpdb->insert_id;
		}
		
		$ret = $this->read_audioplayer($file, $id);
		if ( is_wp_error($ret) )
			return $ret;
		
		$name = $ret['name'];
		$images = $ret['images'];
		$audios = $ret['audios'];
		$audioplayercode = $ret['audioplayercode'];
		
		$ret = $wpdb->query( $wpdb->prepare(
				"
				UPDATE $table_name 
				SET name=%s, images=%s, audios=%s, audioplayercode=%s 
				WHERE id=%d
				",
				$name,
				$images,
				$audios,
				$audioplayercode,
				$id
		) );
		
		return array(
				"id" => $id);
	}
	
	function read_audioplayer($file, $id) {
		
		$dest_url = $this->get_upload_url() . $id . '/';
		$content = file_get_contents($file);
		
		$name = "";
		$pattern = '/<title>(.*)<\/title>/';
		if ( preg_match($pattern, $content, $matches) )
			$name = $matches[1];
						
		$audioplayercode = "";
		$pattern = '/<!-- Insert to your webpage where you want to display the audio player -->(.*)<!-- End of body section HTML codes -->/s';
		if ( preg_match($pattern, $content, $matches) )
		{
			$audioplayercode = str_replace("%DESTURL%", $dest_url, $matches[1]);
			$audioplayercode = str_replace("%AUDIOPLAYERID%", $id, $audioplayercode);
		}
		
		$images = "";
		$audios = "";
		return array(
				"name" => $name,
				"images" => $images,
				"audios" => $audios,
				"audioplayercode" => $audioplayercode);
	}
	
	function is_id_exist($id)
	{
		global $wpdb;
		$table_name = $wpdb->prefix . "amazingaudioplayer";
		
		$audioplayer_row = $wpdb->get_row( $wpdb->prepare("SELECT * FROM $table_name WHERE id = %d", $id) );
		return ($audioplayer_row != null);
	}
	
	function generate_body_code($id)
	{
		global $wpdb;
		$table_name = $wpdb->prefix . "amazingaudioplayer";
		
		$ret = "";
		$audioplayer_row = $wpdb->get_row( $wpdb->prepare("SELECT * FROM $table_name WHERE id = %d", $id) );
		if ($audioplayer_row != null)
		{
			$ret = '<link rel="stylesheet" type="text/css" media="all" href="' . $this->get_upload_url() . $id . '/audioplayerengine/initaudioplayer.css" />' . "\n";
			$ret .= $audioplayer_row->audioplayercode;
			$ret .= '<script src="' . $this->get_upload_url() . $id . '/audioplayerengine/initaudioplayer.js"></script>' . "\n";
		}
		else 
		{
			$ret = '<p>The specified audioplayer id does not exist.</p>';
		}
		return $ret;
	}
	
	function get_list_data()
	{
		
		global $wpdb;
		$table_name = $wpdb->prefix . "amazingaudioplayer";
		
		$audioplayer_rows = $wpdb->get_results( "SELECT * FROM $table_name", ARRAY_A);
		
		$ret = array();
		
		if ( $audioplayer_rows )
		{
			foreach ( $audioplayer_rows as $row )
			{
				$ret[] = array(
							"id" => $row['id'],
							'name' => $row['name'],
							'images' => $row['images'],
							'audios' => $row['audios'],
							'time' => $row['time'],
							'author' => $row['authorid']
						);
			}
		}
		
		return $ret;
	}
	
	function delete_audioplayer($id)
	{
		global $wpdb;
		$table_name = $wpdb->prefix . "amazingaudioplayer";
		
		$ret = $wpdb->query( $wpdb->prepare(
				"
				DELETE FROM $table_name WHERE id=%s
				",
				$id
		) );
		
		return $ret;
	}
}