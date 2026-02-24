<!--
	/********************************************************************************
	* File: footer.tpl
	* Extension: Core'
	* Description: HTML template for footer.tpl.
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
<!-- BEGIN: FOOTER -->
</main>
<footer class="shadow-sm py-3">
    <div class="container-fluid text-center small">
		© 2026 {PHP.cfg.maintitle}. All rights reserved.
	</div>
</footer>
<div class="offcanvas offcanvas-end" tabindex="-1" id="guestOffCanvas" aria-labelledby="guestOffCanvasLabel">
	<div class="offcanvas-header border-bottom">
		<h5 class="offcanvas-title" id="guestOffCanvasLabel">{PHP.langSkStr.Account}</h5>
		<button type="button" class="btn-close shadow-sm" style="color: var(--bs-purple);" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	</div>
	<div class="offcanvas-body">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link" href="{PHP|cot_url('login')}" data-bs-toggle="modal" data-bs-target="#authModal">
					<i class="fa-solid fa-right-to-bracket me-1"></i>{PHP.L.Login}
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="{PHP|cot_url('users','m=register')}">
					<i class="fa-solid fa-user-plus me-1"></i>{PHP.L.Register}
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="{PHP|cot_url('users','m=passrecover')}">
					<i class="fa-solid fa-key me-1"></i>{PHP.L.users_lostpass}
				</a>
			</li>
		</ul>
	</div>
	<div class="offcanvas-footer border-top">
		<div class="p-3">
			<div class="border-bottom">
				<h6 class="mb-3">
					<a href="https://github.com/Cotonti/Cotonti" target="_blank" data-bs-toggle="tooltip" data-bs-title="{PHP.langSkStr.footer_cotonti_tooltip}">
						<span class="me-2 link-warning">{PHP.langSkStr.footer_engine}</span>
						<span class="fw-semibold">{PHP.langSkStr.footer_cotonti}</span>
					</a>
				</h6>
			</div>				
			
			<ul class="nav flex-column">
				<li class="nav-item mt-2">
					<p class="small">{PHP.langSkStr.footer_core_version}: v.{PHP.cfg.version}</p>
				</li>
				<li class="nav-item">
					<p class="small">{PHP.langSkStr.footer_db_version}: v.{PHP|getRevisionValue()}</p>
				</li>
				<li class="nav-item">
					<p class="small">{PHP.langSkStr.footer_php_version}: {PHP|custom_php_version()}</p>
				</li>
				<li class="nav-item">
					<p class="small">{PHP.langSkStr.footer_legacy_mode}: {PHP|getLegacyModeStatus()}</p>
				</li>
			</ul>
		</div>
	</div>
</div>
<div class="modal fade" id="authModal" tabindex="-1" aria-labelledby="authModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header" style="background-color: var(--bs-header-bg);">
				<h5 class="modal-title" id="authModalLabel">{PHP.L.Login}</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form action="{PHP|cot_url('login','a=check')}" method="post">
					<div class="mb-3">
						<label for="inputEmail" class="form-label">{PHP.L.users_nameormail}</label>
						<input type="text" class="form-control" name="rusername" id="inputEmail" />
					</div>
					<div class="mb-3">
						<label for="inputPassword" class="form-label">{PHP.L.Password}</label>
						<input type="password" class="form-control" name="rpassword" id="inputPassword" />
						<a href="{PHP|cot_url('users', 'm=passrecover')}" class="small text-decoration-none">{PHP.L.users_lostpass}</a>
					</div>
					<div class="mb-3 form-check">
						<input type="checkbox" class="form-check-input" id="rememberMe" name="rremember">
						<label class="form-check-label" for="rememberMe">{PHP.L.users_rememberme}</label>
					</div>
					<button type="submit" class="btn btn-primary">{PHP.L.Login}</button>
				</form>
			</div>
		</div>
	</div>
</div>
<div class="offcanvas offcanvas-end" tabindex="-1" id="profileRightOffcanvas" aria-labelledby="profileRightOffcanvasLabel">
	<div class="offcanvas-header">
        <h5 class="offcanvas-title" id="rightOffcanvasLabel">
			<!-- IF {PHP.usr.profile.user_firstname} -->
			<span class="h6 mt-2 mb-1 ms-2"> {PHP.usr.profile.user_firstname} {PHP.usr.profile.user_lastname} </span>
			<!-- ELSE -->
			<span class="mb-1 ms-2">{PHP.usr.profile.user_name}</span>
			<!-- ENDIF -->
		</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	</div>
	<div class="offcanvas-body">
        <ul class="nav flex-column">
			<!-- IF {PHP.usr.id} != 0 -->
			<!-- IF {PHP.usr.maingrp} == 5 -->
			<li class="nav-item">
				<a class="nav-link" href="{PHP|cot_url('admin')}">
				<i class="fa-solid fa-user-shield me-1"></i> {PHP.L.Adminpanel} </a>
			</li>
			<hr class="my-2">
			<!-- ENDIF -->
			<li class="nav-item"> 
				<a class="nav-link" href="{PHP.usr.name|cot_url('users', 'm=details&u=$this')}">
					<i class="fa-solid fa-universal-access fa-lg me-1"></i>{PHP.L.users_myProfile}
				</a>
			</li> 
			<li class="nav-item"> 
				<a class="nav-link" href="{PHP|cot_url('users','m=profile')}">
					<i class="fa-solid fa-sliders fa-lg me-1"></i>{PHP.L.users_profileSettings}
				</a>
			</li> 
			<!-- IF {PHP|cot_module_active('pm')} -->
			<li class="nav-item"> 
				<a class="nav-link" href="{PHP|cot_url('pm')}">
					<i class="fa-brands fa-kakao-talk fa-lg me-1"></i>{PHP.L.Private_Messages}
				</a>
			</li> 
			<!-- ENDIF -->
			<!-- IF {PHP|cot_module_active('pfs')} -->
			<li class="nav-item"> 
				<a class="nav-link" href="{PHP|cot_url('pfs')}">
					<i class="fa-solid fa-photo-film fa-lg me-1"></i>{PHP.langSkStr.PFS_myFiles_Title}
				</a>
			</li> 
			<!-- ENDIF -->
			
			<!-- IF {PHP.out.notices} -->
			<li class="nav-item">
				<a class="nav-link d-flex align-items-center position-relative" 
				data-bs-toggle="collapse" 
				href="#collapse-notices" 
				role="button" 
				aria-expanded="false">
					<i class="fa-solid fa-bell me-2"></i>
					<span>{PHP.langSkStr.noticesLinkTitle}</span>
					<i class="fa fa-angle-down ms-auto"></i>
				</a>
				<div class="collapse" id="collapse-notices">
					<ul class="nav flex-column ps-3 small">
						{PHP.out.notices}
					</ul>
				</div>
			</li>
			<!-- ENDIF -->			
			<hr class="my-2">
			<li class="nav-item">
				<a class="nav-link" href="{PHP.out.loginout_url}">
				<i class="fa-solid fa-right-from-bracket me-1"></i> {PHP.L.Logout} </a>
			</li>
			<!-- ENDIF -->
		</ul>
	</div>
</div>
<div class="modal fade" id="blank_temporary_example_BodyModalFooter" tabindex="-1" aria-labelledby="blank_temporary_exampleLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="blank_temporary_exampleLabel">{PHP.langSkStr.blank_temporary_example_title}</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				{PHP.langSkStr.blank_temporary_example_desc}
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{PHP.L.Close}</button>
			</div>
		</div>
	</div>
</div>	
<!-- back-to-top -->
<button type="button" data-bs-toggle="tooltip" data-bs-title="back to top" class="btn btn-outline position-fixed bottom-0 end-0 m-3" id="btn-back-to-top" style="z-index: 7999;">
	<i class="fa-solid fa-square-caret-up fa-lg"></i>
</button>
<!-- JavaScript -->
<script>
	let backToTopButton = document.getElementById("btn-back-to-top");
	
	// Скролл наверх при клике
	backToTopButton.addEventListener("click", function() {
		window.scrollTo({ top: 0, behavior: "smooth" });
	});
</script>	
{FOOTER_RC}
</body>
</html>
<!-- END: FOOTER -->
