<?php 

require_once 'class-amazingaudioplayer-list-table.php';

class AmazingAudioPlayer_View {

	private $controller;
	private $list_table;
	
	function __construct($controller) {
		
		$this->controller = $controller;
	}
	
	function print_add_new() {
		
		if ( !empty($_POST) && (isset($_POST['amzingaudioplayer-upload']) || isset($_POST['amzingaudioplayer-upload-url'])) && wp_verify_nonce($_POST['amazingaudioplayer-nonce'],'amazingaudioplayer-add-new-add-new') )
		{	
			if ( isset($_POST['amzingaudioplayer-upload']) )	
			{	
				if ( !isset($_FILES['amazingaudioplayer-zip']) || ($_FILES["amazingaudioplayer-zip"]["error"] > 0) )
				{
					if ($_FILES["amazingaudioplayer-zip"]["error"] == 1)
						echo '<div class="error"><p>' . __('The uploaded file exceeds the upload_max_filesize directive in php.ini', 'amazingaudioplayer')  . '</p></div>';
					else
						echo '<div class="error"><p>' . __('Please select a ZIP file created with Amazing Audio Player', 'amazingaudioplayer')  . '</p></div>';
				}
				else
				{		
					$uploadfile = wp_handle_upload($_FILES['amazingaudioplayer-zip'], array(
							'test_form' => false,
							'mimes' => array('zip' => 'application/zip')
					));
					
					if ( isset($uploadfile['error']) )
					{
						echo '<div class="error"><p>' . esc_attr($uploadfile['error'])  . '</p></div>';
					}
					else
					{
						$id = ( isset($_POST['amazingaudioplayer-replace']) && ($_POST['amazingaudioplayer-replace'] == 'yes') && isset($_POST['amazingaudioplayer-replace-id']) ) ? ($_POST['amazingaudioplayer-replace-id']) : -1;
						$ret = $this->controller->install_audioplayer($uploadfile['file'], $id);
						if ( is_wp_error($ret) )
						{
							echo '<div class="error"><p>' . $ret->get_error_message()  . '</p></div>';
						}
						else
						{		
							if ( $ret["new"] )
								echo '<div class="error"><p>This is a new version Amazing Audio Player WordPress Plugin. In addition to adding the audio player here, you also need to update the Plugin itself. Fore more inforamtion, visit <a href="http://amazingaudioplayer.com/how-to-update-amazing-audio-player-wordpress-plugin/" target="_blank">How to update Amazing Audio Player WordPress Plugin</a>.</p></div>';
															
							echo '<div class="updated"><p>The audio player is successfully installed. &nbsp;&nbsp;<a href="?page=amazingaudioplayer_view_audioplayer&audioplayerid=' . $ret["id"] . '">View The Audio Player</a></p></div>';
							echo '<div class="updated"><p> To embed the audioplayer into your page, use shortcode <strong>[amazingaudioplayer id="' . $ret["id"] . '"]</strong></p></div>';
							echo '<div class="updated"><p> To embed the audioplayer into your template, use php code <strong>' . esc_attr('<?php echo do_shortcode(\'[amazingaudioplayer id="' . $ret["id"] . '"]\'); ?>') . '</strong></p></div>';						
						}
					}
				}
			}
			else if ( isset($_POST['amzingaudioplayer-upload-url']) )
			{				
				if ( !isset($_POST['amazingaudioplayer-zip-url']) || strlen($_POST['amazingaudioplayer-zip-url']) == 0)	
				{
					echo '<div class="error"><p>' . __('Please specify a URL of ZIP file created with Amazing Audio Player', 'amazingaudioplayer')  . '</p></div>';
				}	
				else
				{
					$accepted_status_codes = array( 200, 301, 302 );
					$response = wp_remote_head( $_POST['amazingaudioplayer-zip-url'] );
					if ( is_wp_error( $response ) || !in_array( wp_remote_retrieve_response_code( $response ), $accepted_status_codes ) ) {
						echo '<div class="error"><p>' . __('The specified URL does not exist', 'amazingaudioplayer')  . '</p></div>';
					}
					else
					{				
						$uploadfile = fopen($_POST['amazingaudioplayer-zip-url'], "r");
						if ( !$uploadfile )
						{
							echo '<div class="error"><p>' . __('The specified URL does not exist', 'amazingaudioplayer')  . '</p></div>';
						}
						else
						{						
							$uploads = wp_upload_dir();
							$zipfile = $uploads['basedir'] . '/amazingaudioplayer/amazingaudioplayer-url-upload.zip';
							
							while ( !feof($uploadfile) )
							{
								file_put_contents($zipfile, fread($uploadfile, 4096), FILE_APPEND);
							}
							fclose($uploadfile);
							
							$id = ( isset($_POST['amazingaudioplayer-replace']) && ($_POST['amazingaudioplayer-replace'] == 'yes') && isset($_POST['amazingaudioplayer-replace-id']) ) ? ($_POST['amazingaudioplayer-replace-id']) : -1;
							$ret = $this->controller->install_audioplayer($zipfile, $id);
							if ( is_wp_error($ret) )
							{
								echo '<div class="error"><p>' . $ret->get_error_message()  . '</p></div>';
							}
							else
							{
								if ( $ret["new"] )
									echo '<div class="error"><p>This is a new version Amazing Audio Player WordPress Plugin. In addition to adding the audio player here, you also need to update the Plugin itself. Fore more inforamtion, visit <a href="http://amazingaudioplayer.com/how-to-update-amazing-audio-player-wordpress-plugin/" target="_blank">How to update Amazing Audio Player WordPress Plugin</a>.</p></div>';
									
								echo '<div class="updated"><p>The audio player is successfully installed. &nbsp;&nbsp;<a href="?page=amazingaudioplayer_view_audioplayer&audioplayerid=' . $ret["id"] . '">View The Audio Player</a></p></div>';
								echo '<div class="updated"><p> To embed the audioplayer into your page, use shortcode <strong>[amazingaudioplayer id="' . $ret["id"] . '"]</strong></p></div>';
								echo '<div class="updated"><p> To embed the audioplayer into your template, use php code <strong>' . esc_attr('<?php echo do_shortcode(\'[amazingaudioplayer id="' . $ret["id"] . '"]\'); ?>') . '</strong></p></div>';
							}
						}
					}
				}
			}	
		}
		?>
		<div class="wrap">
			<div id="icon-amazingaudioplayer" class="icon32"><br /></div>
			
			<h2><?php _e( 'Add New Audio Player', 'amazingaudioplayer' ); ?> <a href="<?php echo admin_url('admin.php?page=amazingaudioplayer_show_audioplayers'); ?>" class="add-new-h2">Show All Audio Players</a></h2>
			
			<h3><?php _e( 'Install the ZIP file created with <a href="http://amazingaudioplayer.com" target="_blank">Amazing Audio Player</a>', 'amazingaudioplayer' ); ?></h3>
						
			<form id="form-amazingaudioplayer-add-new" method="post" enctype="multipart/form-data"> 
				<ul>
					<li>
						<h4><?php _e( 'Upload ZIP file:', 'amazingaudioplayer' ); ?></h4>
						<input type="file" id="amazingaudioplayer-zip" name="amazingaudioplayer-zip" />
						<input id="amzingaudioplayer-upload" name="amzingaudioplayer-upload" type="submit" class="button" value="<?php esc_attr_e('Install', 'amazingaudioplayer') ?>" />
					</li> 
					<li>
						<h4><?php _e( 'Or install from URL:', 'amazingaudioplayer' ); ?></h4>
						<p><?php _e( 'If the ZIP file is too large, you can upload the file to your web server via FTP, then install the ZIP file from URL.', 'amazingaudioplayer' ); ?></p>
						<input type="text" id="amazingaudioplayer-zip-url" name="amazingaudioplayer-zip-url" size="35" />
						<input id="amzingaudioplayer-upload-url" name="amzingaudioplayer-upload-url" type="submit" class="button" value="<?php esc_attr_e('Install', 'amazingaudioplayer') ?>" />
						<p><strong><?php _e( '* Installing may take a while depending on the size of your ZIP file. Please be patient.', 'amazingaudioplayer' ); ?></strong></p>
					</li> 
					<li>
						<input type="checkbox" name="amazingaudioplayer-replace" value="yes"><?php esc_attr_e('Replace an existing audio player', 'amazingaudioplayer') ?>:&nbsp;
						<select name="amazingaudioplayer-replace-id">
							<?php 
							global $wpdb;
							$table_name = $wpdb->prefix . "amazingaudioplayer";
							$audioplayer_rows = $wpdb->get_results( "SELECT * FROM $table_name", ARRAY_A);						
							if ( $audioplayer_rows )
							{
								foreach ( $audioplayer_rows as $row )
									echo '<option value="' . $row['id'] . '">' . $row['id'] . ' : ' . $row['name'] . '</option>';
							}
							?>
						</select>
					</li>
	  			</ul>
	  			<?php wp_nonce_field('amazingaudioplayer-add-new-add-new','amazingaudioplayer-nonce'); ?>
	  		</form>              
		</div>
		<?php
	}
	
	function print_audioplayers() {
		
		?>
		<div class="wrap">
		<div id="icon-amazingaudioplayer" class="icon32"><br /></div>
			
		<h2><?php _e( 'Installed Audio Players', 'amazingaudioplayer' ); ?> <a href="<?php echo admin_url('admin.php?page=amazingaudioplayer_add_new'); ?>" class="add-new-h2">Add New</a> </h2>
		
		<?php $this->process_delete_action(); ?>
		
		<form id="audioplayer-list-table" method="post">
		<input type="hidden" name="page" value="<?php echo $_REQUEST['page'] ?>" />
		<?php 
		
		if ( !is_object($this->list_table) )
			$this->list_table = new AmazingAudioPlayer_List_Table($this);
		$this->list_table->list_data = $this->controller->get_list_data();
		$this->list_table->prepare_items();
		$this->list_table->display();		
		?>								
        </form>
        
		</div>
		<?php
	}
	
	function process_delete_action()
	{
		$deleted = 0;
		
		if ( isset($_REQUEST['action']) && ($_REQUEST['action'] == 'delete') && isset( $_REQUEST['audioplayerid'] ) )
		{
			if ( is_array( $_REQUEST['audioplayerid'] ) )
			{
				foreach( $_REQUEST['audioplayerid'] as $id)
				{
					$ret = $this->controller->delete_audioplayer($id);
					if ($ret > 0)
						$deleted += $ret;
				}
			}
			else
			{
				$deleted = $this->controller->delete_audioplayer( $_REQUEST['audioplayerid'] );
			}
		}
	
		if ($deleted > 0)
		{
			echo '<div class="updated"><p>';
			printf( _n('%d audioplayer deleted.', '%d audioplayers deleted.', $deleted), $deleted );
			echo '</p></div>';
		}
		
	}
	
	function view_audioplayer()
	{
		if ( !isset( $_REQUEST['audioplayerid'] ) )
			return;
		
		?>
		<div class="wrap">
		<div id="icon-amazingaudioplayer" class="icon32"><br /></div>
					
		<h2><?php _e( 'View Audio Player', 'amazingaudioplayer' ); ?> <a href="<?php echo admin_url('admin.php?page=amazingaudioplayer_show_audioplayers'); ?>" class="add-new-h2">Show All Audio Players</a> <a href="<?php echo admin_url('admin.php?page=amazingaudioplayer_add_new'); ?>" class="add-new-h2">Add New</a> </h2>
		
		<div class="updated"><p style="text-align:center;"> To embed the audio player into your page, use shortcode <strong><?php echo esc_attr('[amazingaudioplayer id="' . $_REQUEST['audioplayerid'] . '"]'); ?></strong></p></div>

		<div class="updated"><p style="text-align:center;"> To embed the audio player into your template, use php code <strong><?php echo esc_attr('<?php echo do_shortcode(\'[amazingaudioplayer id="' . $_REQUEST['audioplayerid'] . '"]\'); ?>'); ?></strong></p></div>
		
		<?php
		echo $this->controller->generate_body_code( $_REQUEST['audioplayerid'] ); 
		?>	 

		</div>
		<?php
	}
		
}