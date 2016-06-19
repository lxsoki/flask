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
switch ($registry->requestAction)
{
	default:
		$expiry = isset($registry->settings->freeFileExpiry) ? $registry->settings->freeFileExpiry : 24;
		$userId = isset($registry->session->user->id) ? $registry->session->user->id : null;
		$fileData = $dModel->getFileFromDb($hash);
		if(is_array($fileData))
		{
			
			$fileExpire = date(strtotime($fileData['dateUploaded'].'+'.$expiry.' hours'));
			$now = time();
			if($fileExpire < $now && ($fileData['userId'] == null || $userId == null ) )
			{
				$dView->showPage('file-expired');
			}
			else
			{
				$file = $dModel->getFileFromDisk($hash);
				$fp = fopen($file, 'rb');
				$attachmentName = $fileData['name'];
				$attachmentName .= (strlen($fileData['extension']) > 0) ? '.' . $fileData['extension'] : '';
				header('Content-Disposition: attachment; filename=' . $attachmentName);
				echo fread($fp, filesize($file));
				exit();
			}
		}
		else 
		{
			$dView->showPage('not-found');
		}
	break;
}