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

$fileView = new Page_View($tpl);
// all actions MUST set  the variable  $pageTitle
$pageTitle = $option->pageTitle->action->{$registry->requestAction};
$userData = $registry->session->user;

switch ($registry->requestAction)
{
	default:
	case 'home';
		// call showPage method to view the home page
		if(isset($registry->session->user->username, $registry->session->user->id) )
		{
			$fileView->showPage('../file/upload-user');
		}
		else 
		{
			$fileView->showPage('../file/upload');
		}
	break;

}