<div id="top_menu_button" class="menu_button" onclick="ShowTopMenu()">
	<span></span>
	<span></span>
	<span></span>
</div>
<ul id="top_menu" class="menu_top">
	<li class="{SEL_PAGE_HOME}">
		<a href="{SITE_URL}">Incarca fisier</a>
	</li>
	<!-- BEGIN top_menu_not_logged -->
	<li class="{SEL_USER_LOGIN}">
		<a href="{SITE_URL}/user/login">Logare</a>
	</li>
	<li class="{SEL_USER_REGISTER}">
		<a href="{SITE_URL}/user/register">Creare cont</a>
	</li>
	<!-- END top_menu_not_logged -->
	<!-- BEGIN top_menu_logged -->
	<li class="{SEL_USER_ACCOUNT}">
		<a href="{SITE_URL}/user/account">Contul meu</a>
	</li>
	<li>
		<a href="{SITE_URL}/user/logout">Delogare</a>
	</li>
	<!-- END top_menu_logged -->
</ul>