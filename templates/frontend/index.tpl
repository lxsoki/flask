<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=9">
	<title>{PAGE_TITLE}</title>
	<link rel="apple-touch-icon" href="{SITE_URL}/images/apple-touch-icon.png">
	<meta name="keywords" content="{PAGE_KEYWORDS}" >
	<meta name="description" content="{PAGE_DESCRIPTION}" >
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="canonical" href="{CANONICAL_URL}" >
	
	

	<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    
	<link rel="stylesheet" href="{TEMPLATES_URL}/css/frontend/style.css" type="text/css" >
	<link rel="stylesheet" href="{SITE_URL}/externals/fonts/stylesheet.css" type="text/css" >
	
	<!--  jquery file upload  -->	
	<link rel="stylesheet" href="{SITE_URL}/externals/jquery-file-upload/css/jquery.fileupload.css">
	
	<script src="{SITE_URL}/externals/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="{TEMPLATES_URL}/js/frontend/main.js"></script>
	<!--[if lt IE 9]>
	<script src="{TEMPLATES_URL}/js/frontend/html5shim.js"></script>
	<![endif]-->
</head>
<body>
	<div id="wrapper">
		<header>
			<div id="header-content" class="clearfix">
				<div id="logo">
					<h1><a href="{SITE_URL}/"><span class="fa fa-flask"></span>{SITE_NAME}</a></h1>
				</div>
				{MENU_TOP}
			</div>
		</header>
		<div id="body">
			<div id="content">
				<h1>{PAGE_CONTENT_TITLE}</h1>
				{MESSAGE_BLOCK}
				{MAIN_CONTENT}
			</div>
			<div class="clear"></div>
		</div>
		<div id="push"></div>
	</div>
	<footer>
		<div id="footer-content">
			{MENU_FOOTER}
		</div>
		<div class="debugger">
			{DEBUGGER}
		</div>
	</footer>
</body>
</html>