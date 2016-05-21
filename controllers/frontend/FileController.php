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

$pageView = new File_View($tpl);
$fileModel = new File();
// all actions MUST set  the variable  $pageTitle
$pageTitle = $option->pageTitle->action->{$registry->requestAction};
switch ($registry->requestAction)
{
	default:
	case 'upload';
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
			$pageView->showUploadedFiles('upload-complete', $uploadedFiles);
		}
		else 
		{
			$pageView->showPage('upload');
		}
	break;
}