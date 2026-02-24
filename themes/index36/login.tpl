<!--
	/********************************************************************************
	* File: login.tpl
	* Extension: Core System Cotonti
	* Description: HTML template for login.tpl.
	* Compatibility: CMF/CMS Cotonti Siena v0.9.26[](https://github.com/Cotonti/Cotonti)
	* Dependencies: 
	* 		 Bootstrap 5.3.+[](https://getbootstrap.com/); 
	* 		 Font Awesome Free 7.1[](https://fontawesome.com/)
	* Theme: Index36  
	* Version: 1.0.2 
	* Created: 01 Feb 2026 
	* Updated: 24 Feb 2026 
	* Copyright (c) 2026 webitproff | https://github.com/webitproff
	* Source: https://github.com/webitproff/index36-cotonti-theme
	* Demo : https://freelance-script.abuyfile.com/ 
	* Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
	* License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)  
	********************************************************************************/
-->

<!-- BEGIN: MAIN -->
<!-- BEGIN: USERS_AUTH_MAINTENANCE -->
<div class="alert alert-danger mb-0">
    <h4>{PHP.L.users_maintenance1}</h4>
    <p>{PHP.L.users_maintenance2}</p>
</div>
<!-- END: USERS_AUTH_MAINTENANCE -->
<div class="d-flex">
	<div class="d-none d-lg-flex flex-grow-1 align-items-center justify-content-center">
		<div class="p-4" style="max-width:520px">
			<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/auth.svg" class="img-fluid" alt="{USERS_AUTH_TITLE}">
		</div>
	</div>
	<div class="d-flex flex-column align-items-center justify-content-center vh-100 col-12 col-lg-6 col-xl-4" style="background-color: var(--bs-sidebar-bg);" data-bs-theme="inherit">
		<div class="w-100 p-4">
			<div class="text-center mb-4">
				<img src="{PHP.R.app-logo}" width="75" alt="logo">
			</div>
			<!-- IF {PHP.usr.id} -->
			<div class="alert alert-warning">
				<p>{PHP.L.users_loggedinas} <strong>{PHP.usr.name}</strong>.<br/>{PHP.L.users_logoutfirst}</p>
				<p><a class="button" href="{PHP.sys.xk|cot_url('login','out=1&x=$this', '', 0, 1)}">{PHP.L.Logout}</a></p>
			</div>
			<!-- ENDIF -->
			<!-- IF {PHP.usr.id} < 1 OR {PHP.usr.id} == 0 -->
			<div class="d-flex align-items-center my-4">
				<hr class="flex-grow-1">
				<span class="px-2 small text-uppercase">{USERS_AUTH_TITLE}</span>
				<hr class="flex-grow-1">
			</div>
			<form id="login" name="login" action="{USERS_AUTH_SEND}" method="post">
				<div class="mb-3 position-relative">
					<i class="fa-solid fa-circle-user position-absolute top-50 start-0 translate-middle-y ms-3 text-purple"></i>
					{USERS_AUTH_USER}
				</div>
				<div class="mb-3 position-relative">
					<i class="fa-solid fa-lock position-absolute top-50 start-0 translate-middle-y ms-3"></i>
					{USERS_AUTH_PASSWORD}
				</div>
				<div class="form-check mb-4 d-flex align-items-center">
					{USERS_AUTH_REMEMBER}
				</div>
				<button class="btn btn-primary w-100 mb-3" type="submit" name="rlogin" value="0">{PHP.L.Login}</button>
			</form>
			<hr>
			<ul class="nav flex-column">
				<li class="nav-item mb-3">
					<a class="small text-reset" href="{PHP|cot_url('users','m=passrecover')}">
						<i class="fa-solid fa-key me-2"></i>{PHP.L.users_lostpass}
					</a>
				</li>
				<li class="nav-item">
					<a class="small" href="{PHP|cot_url('users','m=register')}">
						<i class="fa-solid fa-user-plus me-2"></i>{PHP.L.Register}
					</a>
				</li>
			</ul>
			<!-- ENDIF -->
		</div>
	</div>
</div>
<!-- END: MAIN -->