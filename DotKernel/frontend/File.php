<?php
/**
* DotBoost Technologies Inc.
* DotKernel Application Framework
*
* @category   DotKernel
* @copyright  Copyright (c) 2009-2016 DotBoost Technologies Inc. (http://www.dotboost.com)
* @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
* @version    $Id: Page.php 1019 2016-04-25 17:00:45Z gabi $
*/

/**
* Page Model
* Dummy class, doesn't do anything yet
* @category   DotKernel
* @package    Frontend 
* @author     DotKernel Team <team@dotkernel.com>
*/

class File extends Dot_Model
{
	/**
	 * Constructor
	 * @access public
	 * @return Frontend_Page 
	 */
	public function __construct()
	{
		parent::__construct();
	}
	
	public function isHashAvailable($hash)
	{
		$select = $this->db->select()
							->from('file')
							->where('hash = ?', $hash);
		return  (count($this->db->fetchAll($select)) == 0);
	}
	
	public function generateShortUrl($name, $minLength=4)
	{
		// actual generation 
		
		for($l=$minLength; $l<=20; $l++)
		{
			for($i=0; $i<3; $i++)
			{
				$hash = md5(microtime(true)) ;
				$newHash = substr($hash, 0, $l);
				if($this->isHashAvailable($newHash))
				{
					return $newHash;
				}
			}
		}
	}
	
	public function getExtension($name)
	{
		$name = explode('.', $name);
		if(count($name)>1)
		{
			return $name[count($name)-1];
		}
		else 
		{
			return '';
		}
	}
	
	public function addFileToDb($name, $type, $tmpName, $error, $size, $extension, $hash, $userId = null, $shareOptions = null)
	{
		// add to db
		$fileData = array('hash'=> $hash, 'name'=>$name, 'type' => $type, 'extension' => $extension , 'size'=>$size, );
		if($userId != null) $fileData['userId'] = $userId;
		if($userId != null) $fileData['shareOptions'] = $shareOptions;
		
		$this->db->insert('file', $fileData);
		return true;
	}
	
	public function getFileFromDb($hash)
	{
		$select = $this->db->select()
		->from('file')
		->where('hash = ?', $hash);
		$files = $this->db->fetchAll($select);
		if(count($files) == 1)
		{
			return array_shift($files);
		}
		return false;
	}
	
	public function storeFile($tmpName, $hash)
	{
		$directory = FLASK_UPLOAD_PATH.'/'.substr($hash,0,2);
		$file = substr($hash, 2, strlen($hash));
		if(!file_exists($directory))
		{
			mkdir(FLASK_UPLOAD_PATH.'/'.substr($hash,0,2), 0777, true);
		}
		move_uploaded_file($tmpName, $directory.'/'.$file);
		return true;
	}
	
	public function getThumbnail($hash = null)
	{
		return '/data/thumbnails/file.png';
	}
	/**/
	public function getFileFromDisk($hash)
	{
		$directory = FLASK_UPLOAD_PATH.'/'.substr($hash,0,2);
		$file = substr($hash, 2, strlen($hash));
		return $directory.'/'.$file;
	}
	
	public function generateThumbnail($hash)
	{
		return true;
	}
	public function processFile($name, $type, $tmpName, $error, $size, $userId = null, $shareOptions = null)
	{
		// validation
		$hash = $this->generateShortUrl($name);
		$extension = $this->getExtension($name);
		$name = trim($name, '.'.$extension);
		
		// store to disk
		$this->storeFile($tmpName, $hash);
		
		$this->generateThumbnail($hash);
		
		// add to db
		$this->addFileToDb($name, $type, $tmpName, $error, $size, $extension, $hash, $userId, $shareOptions);
		
		return array('name'=>$name, 'extension'=> $extension, 'size'=>$size, 'hash'=> $hash, 
						'type'=>$type,
						'url' => '/d/'.$hash ,
						'thumbnailUrl' => '/data/thumbnails/file.png',
						'deleteUrl' => '#',
						'deleteType' => 'DELETE'
		); 
	}
	
}