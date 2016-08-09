<?php
/**
 * DotBoost Technologies Inc.
 * DotKernel Application Framework
 *
 * @category   DotKernel
 * @package    Frontend
 * @copyright  Copyright (c) 2009-2016 DotBoost Technologies Inc. (http://www.dotboost.com)
 * @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 * @version    $Id: PageController.php 1019 2016-04-25 17:00:45Z gabi $
*/

/**
 * Page Controller
 * @author     DotKernel Team <team@dotkernel.com>
 */

$dView = new D_View($tpl);
$dModel = new File();


// all actions MUST set  the variable  $pageTitle
$pageTitle = $option->pageTitle->action->{$registry->requestAction};
$hash = $registry->requestAction;
$key = isset($registry->request['k']) ? $registry->request['k'] : '';
switch ($registry->requestAction)
{
	default:
		$expiry = isset($registry->settings->freeFileExpiry) ? $registry->settings->freeFileExpiry : 24;
		$userId = isset($registry->session->user->id) ? $registry->session->user->id : null;
		$fileData = $dModel->getFileFromDb($hash);
		
		if(count($_POST)>0)
		{
			$key = (isset($_POST['key'])) ? $_POST['key'] : '';
			if($key == $fileData['key'])
			{
				flask_readFile($dModel, $hash);
			}
			else
			{
				$dView->showPage('ask-key');
			}
		}
		if(is_array($fileData))
		{
			// http://localhost/flask//d/051f/k/051f65fe7a064e2f
			// 
			
			$fileExpire = date(strtotime($fileData['dateUploaded'].'+'.$expiry.' hours'));
			$now = time();
			
			if($fileExpire < $now && ($fileData['userId'] == null || $userId == null ) )
			{
				$dView->showPage('file-expired');
			}
			elseif($key != $fileData['key'])
			{
				$dView->showPage('ask-key');
			}
			else
			{
				flask_readFile($dModel, $hash);
			}
		}
		else 
		{
			$dView->showPage('not-found');
		}
	break;
}

function flask_readFile($dModel, $hash){
	$file = $dModel->getFileFromDisk($hash);
	$fileData = $dModel->getFileFromDb($hash);
	$fp = fopen($file, 'rb');
	$attachmentName = $fileData['name'];
	$attachmentName .= (strlen($fileData['extension']) > 0) ? '.' . $fileData['extension'] : '';
	header('Content-Disposition: attachment; filename=' . $attachmentName);
	echo fread($fp, filesize($file));

	// optimisation + workaround for bigg files
	$fileSize = filesize($file);
	$pieceSize = (1024*1024)*16; // 16 mb per piece
	$filePieces = (int) ($fileSize / $pieceSize );
	$lastPiece = $fileSize % $pieceSize; /**/
	header('Content-Disposition: attachment; filename=2' . $attachmentName);
	for($i=0; $i<$filePieces; $i++)
	{
		echo fread($fp, $pieceSize );
	}
	echo fread($fp, $lastPiece );
	echo ' ---flask_EOF---' ;
	exit();
}