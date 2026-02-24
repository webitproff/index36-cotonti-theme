<!--
	/********************************************************************************
	* File: users.passrecover.tpl
	* Extension: Module 'users'
	* Description: HTML template for Users Module - users.passrecover.tpl. 
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
<div class="container pt-5 pb-5">
	<div class="d-flex flex-column align-items-center justify-content-center">
		<div class="card col-md-9 border-0 mb-5 shadow-sm p-4 overflow-hidden" style="background-color: var(--bs-sidebar-bg);">
			<div class="text-center mb-4">
				<img src="{PHP.R.app-logo}" width="75" alt="logo">
			</div>
			<div class="d-flex align-items-center my-4">
				<hr class="flex-grow-1">
				<span class="px-2 small text-uppercase">{PASSRECOVER_TITLE}</span>
				<hr class="flex-grow-1">
			</div>
			<!-- IF {PHP.msg} == 'request' -->
			<div class="alert alert-success" role="alert">{PHP.L.pasrec_mailsent}</div>
			<!-- ENDIF -->
			<!-- IF {PHP.msg} == 'auth' -->
			<div class="alert alert-success" role="alert">{PHP.L.pasrec_mailsent2}</div>
			<!-- ENDIF -->
			<!-- IF !{PHP.msg} -->
			<div class="alert alert-info border-0 mb-4">
				<ol class="list-group list-group-flush list-group-numbered">
					<li class="list-group-item py-2 bg-transparent">{PHP.L.pasrec_explain1}</li>
					<li class="list-group-item py-3 bg-transparent">{PHP.L.pasrec_explain2}</li>
					<li class="list-group-item py-2 bg-transparent">{PHP.L.pasrec_explain3}</li>
				</ol>
			</div>
			<form id="password-recover" name="reqauth" action="{PASSRECOVER_URL_FORM}" method="post" class="mb-5">			
				<div class="mb-2">
					<label for="email" class="form-label">{PHP.L.pasrec_youremail}</label>			
				</div>
				<div class="mb-4 position-relative">
					<i class="fa-solid fa-envelope position-absolute top-50 start-0 translate-middle-y ms-3"></i>
					<input type="email" class="form-control ps-5" id="email" name="email" value="" placeholder="{PHP.langSkStr.emailCurrentRecover}" maxlength="64" required>
				</div>
				<div class="text-center mb-4">
					<button type="submit" class="btn btn-primary w-50">{PHP.L.pasrec_request}</button>
				</div>			
			</form>
			<!-- ENDIF -->
		</div>
		<div class="alert alert-light col-md-9 border-0 shadow-sm">
			<p class="small" style="color: var(--bs-body-color);">{PHP.L.pasrec_explain4}</p>
		</div>
	</div>
</div>
<!-- END: MAIN -->
