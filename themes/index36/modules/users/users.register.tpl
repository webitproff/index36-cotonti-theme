<!--
	/********************************************************************************
	* File: users.register.tpl
	* Extension: Module 'users'
	* Description: HTML template for Users Module - users.register.tpl. 
 	* Compatibility: CMF/CMS Cotonti Siena v0.9.26[](https://github.com/Cotonti/Cotonti)
	* Dependencies: 
	* 		 Bootstrap 5.3.+[](https://getbootstrap.com/); 
	* 		 Font Awesome Free 7.1[](https://fontawesome.com/)
	* Theme: Index36  
	* Version: 1.0.2 
	* Created: 01 Feb 2026 
	* Updated: 23 Feb 2026 
	* Copyright (c) 2026 webitproff | https://github.com/webitproff
	* Source: https://github.com/webitproff/index36-cotonti-theme
	* Demo : https://freelance-script.abuyfile.com/ 
	* Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
	* License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)  
	********************************************************************************/
-->
<!-- BEGIN: MAIN -->
<div class="d-flex h-100">
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<div class="d-none d-lg-flex flex-grow-1 align-items-center justify-content-center">
		<div class="p-4" style="max-width:520px">
			<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/queue-dark.svg" class="img-fluid" alt="">
		</div>
	</div>
	<div class="card border-0 rounded-0 d-flex flex-column align-items-center justify-content-center col-12 col-lg-6 col-xl-5 pt-5 pb-5">
		<div class="w-100 p-4">
			<div class="text-center mb-4">
				<img src="{PHP.R.app-logo}" width="75" alt="logo">
			</div>
			<!-- IF {PHP.usr.id} -->
			<div class="vh-100">
				<div class="alert alert-warning">
					<p>{PHP.L.users_loggedinas} <strong>{PHP.usr.name}</strong>.<br/>{PHP.L.users_logoutfirst}</p>
					<p><a class="button" href="{PHP.sys.xk|cot_url('login','out=1&x=$this', '', 0, 1)}">{PHP.L.Logout}</a></p>
				</div>
			</div>
			<!-- ENDIF -->
			<!-- IF {PHP.usr.id} < 1 OR {PHP.usr.id} == 0 -->
			<div class="d-flex align-items-center my-4">
				<hr class="flex-grow-1">
				<span class="px-2 small text-uppercase">{USERS_REGISTER_TITLE}</span>
				<hr class="flex-grow-1">
			</div>
			<form id="user-register" name="register" action="{USERS_REGISTER_SEND}" method="post" enctype="multipart/form-data">
				<!-- IF {USERS_REGISTER_GROUPSELECTBOX} -->
				<div class="mb-4">
					<label class="form-label small">{PHP.L.profile_group} <span class="text-danger">*</span></label>
					{USERS_REGISTER_GROUPSELECTBOX}
				</div>
				<!-- ENDIF -->
				<div class="mb-4 position-relative">
					<i class="fa-solid fa-circle-user position-absolute top-50 start-0 translate-middle-y ms-3"></i>
					{USERS_REGISTER_USER}
				</div>
				<div class="mb-4 position-relative">
					<i class="fa-solid fa-envelope position-absolute top-50 start-0 translate-middle-y ms-3"></i>
					{USERS_REGISTER_EMAIL}
				</div>
				
				<div class="mb-4 position-relative">
					<i class="fa-solid fa-lock position-absolute top-50 start-0 translate-middle-y ms-3"></i>
					{USERS_REGISTER_PASSWORD}
				</div>
				<div class="mb-4 position-relative">
					<i class="fa-solid fa-lock position-absolute top-50 start-0 translate-middle-y ms-3"></i>
					{USERS_REGISTER_PASSWORDREPEAT}
				</div>
				<!-- IF {PHP.cfg.captchamain|cot_plugin_active($this)} -->
				<div class="mb-4">
					<label for="rverify" class="form-label small">{PHP.langSkStr.captchaVerify}</label>
					<div class="d-flex align-items-center">
						<div class="flex-grow-1">{USERS_REGISTER_VERIFY_IMG}</div>
						<span class="">{USERS_REGISTER_VERIFY_INPUT}</span>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- USER AGREEMENT -->
				<!-- IF {PHP|cot_plugin_active('useragreement')} -->
				<div class="form-check mb-4 d-flex align-items-center">
					<input class="form-check-input" type="checkbox" name="ruseragreement" value="1" id="ruseragreement">
					<div class="flex-grow-1">
						<label class="form-check-label ms-3 small" for="ruseragreement">
							<a href="{PHP|cot_url('plug', 'e=useragreement')}" target="blank">
								{PHP.L.useragreement_agree}
							</a>
						</label>
					</div>
				</div>
				<!-- ENDIF -->
				<button class="btn btn-success w-100 mb-5" type="submit">{PHP.L.Register}</button>
			</form>
			<hr>
			<ul class="nav flex-column">
				<li class="nav-item mb-2">
					<a class="small text-reset" href="{PHP|cot_url('users','m=passrecover')}">
						<i class="fa-solid fa-key me-2"></i>{PHP.L.users_lostpass}
					</a>
				</li>
				<li class="nav-item">
					<a class="small text-reset" href="{PHP|cot_url('login')}">
						<i class="fa-solid fa-user-plus me-2"></i>{PHP.L.Login}
					</a>
				</li>
			</ul>
			<!-- ENDIF -->
		</div>
	</div>
</div>
<!-- END: MAIN -->