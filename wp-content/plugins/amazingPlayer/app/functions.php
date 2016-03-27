<?php

function amazingaudioplayer_recurse_copy($src, $dst) {
	
	$dir = opendir( $src );
	@mkdir( $dst );
	while(false !== ( $file = readdir($dir)) ) {
		if (( $file != '.' ) && ( $file != '..' )) {
			if ( is_dir($src . '/' . $file) ) {
				amazingaudioplayer_recurse_copy($src . '/' . $file,$dst . '/' . $file);
			}
			else {
				copy($src . '/' . $file,$dst . '/' . $file);
			}
		}
	}
	closedir( $dir );
}

function amazingaudioplayer_unzip_file($file, $to)
{
	if ( class_exists('ZipArchive') )
	{
		$zipArchive = new ZipArchive();
		$result = $zipArchive->open( $file );
		if ($result === TRUE) 
		{	
			$zipArchive ->extractTo( $to );
			$zipArchive ->close();
		}
		else 
		{
			return new WP_Error('filesystem', __("Cannot unzip the file", "amazingaudioplayer"));
		}
	}
	else
	{
		if(! class_exists('PclZip'))
			require_once(ABSPATH . 'wp-admin/includes/class-pclzip.php');
		
		$archive = new PclZip($file);
		
		// extract all files in one folder
		if ($archive->extract(PCLZIP_OPT_PATH, $dir) == 0) 
		{
			return new WP_Error('filesystem', __("Cannot unzip the file", "amazingaudioplayer"));
		}			
	}
	
	return true;
}

function amazingaudioplayer_recurse_rmdir($dir) {
	
	if ( is_dir($dir) ) 
	{
		$objects = scandir($dir);
		foreach ($objects as $object) {
			if ($object != "." && $object != "..") {
				if (filetype($dir."/".$object) == "dir") 
					amazingaudioplayer_recurse_rmdir( $dir."/".$object ); 
				else 
					unlink($dir."/".$object);
			}
		}
		reset($objects);
		rmdir($dir);
	}
}