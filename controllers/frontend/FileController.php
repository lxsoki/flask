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

$fileView = new File_View($tpl);
$fileModel = new File();
// all actions MUST set  the variable  $pageTitle
$pageTitle = $option->pageTitle->action->{$registry->requestAction};
switch ($registry->requestAction)
{
	default:
	case 'upload':
	case 'upload-old':
		if(count($_POST)>0)
		{
			foreach($_FILES['files']['name'] as $key => $name)
			{
				$fileData = $fileModel->processFile($name,
				$_FILES['files']['type'][$key],
				$_FILES['files']['tmp_name'][$key],
				$_FILES['files']['error'][$key],
				$_FILES['files']['size'][$key]);
				$uploadedFiles[] = $fileData;
			}
			$fileView->showUploadedFiles('upload-complete', $uploadedFiles);
		}
		else 
		{
			$fileView->showPage('upload-old');
		}
	break;
	
	
	case 'upload-beta':
		$fileView->showPage('upload');
	break;
	
	case 'upload-json';
	if(count($_FILES)>0)
	{
		foreach($_FILES['files']['name'] as $key => $name)
		{
			$fileData = $fileModel->processFile($name,
									$_FILES['files']['type'][$key],
									$_FILES['files']['tmp_name'][$key],
									$_FILES['files']['error'][$key],
									$_FILES['files']['size'][$key]);
			$uploadedFiles[] = $fileData;
		}
		foreach($uploadedFiles as &$file)
		{
			$file['thumbnailUrl'] = SITE_URL .'/file/t/'. $file['hash'];
			$file['url'] = SITE_URL . $file['url'];
		}
		echo json_encode(array('success'=>true, 'files'=>$uploadedFiles));
		exit();
	}
	else
	{
		echo json_encode(['success'=>false]);
		exit;
	}
	break;
	
	case 't':
		$hash = isset($registry->request['h'])?$registry->request['h']:null;
		header('Content-Type: image/jpeg');
		readfile(APPLICATION_PATH.$fileModel->getThumbnail());
		exit;
		break;
	break;
}