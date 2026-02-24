<!--
	/********************************************************************************
	* File: pm.send.tpl
	* Extension: Module 'pm'
	* Description: HTML template for Private Messages Module.
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

<!-- BEGIN: BEFORE_AJAX -->
<div id="ajaxBlock">
	<!-- END: BEFORE_AJAX -->
	
	<div class="container-xl py-4">
		<div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center mb-4 gap-3">
			<div>
				<h2 class="h3 mb-1">{PMSEND_TITLE}</h2>
				<div class="text-muted small">{PHP.L.pmsend_subtitle}</div>
			</div>
			
			<div class="d-flex flex-wrap gap-2">
				<a href="{PMSEND_INBOX_URL}" class="btn btn-outline-primary">{PHP.L.pm_inbox}</a>
				<a href="{PMSEND_SENTBOX_URL}" class="btn btn-outline-primary">{PHP.L.pm_sentbox}</a>
				<a href="{PMSEND_SENDNEWPM_URL}" class="btn btn-primary active">
					<i class="fa-solid fa-paper-plane me-1"></i> {PHP.L.pm_sendnew}
				</a>
			</div>
		</div>
		
		{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
		
		<div class="card shadow-sm border-0">
			<div class="card-body p-4 p-md-5">
				<form action="{PMSEND_FORM_SEND}" method="post" name="newmessage" id="newmessage" class="ajax">
					<div class="row g-4">
						
						<!-- BEGIN: PMSEND_USERLIST -->
						<div class="col-12">
							<label class="form-label fw-bold">{PHP.L.Recipients}</label>
							<div class="input-group input-group-lg">
								{PMSEND_FORM_TOUSER}
							</div>
							<div class="form-text text-muted mt-1">
								{PHP.L.pm_sendmessagetohint}
							</div>
						</div>
						<!-- END: PMSEND_USERLIST -->
						
						<div class="col-12">
							<label class="form-label fw-bold">{PHP.L.Subject}</label>
							{PMSEND_FORM_TITLE}
						</div>
						
						<div class="col-12">
							<label class="form-label fw-bold">{PHP.L.Message}</label>
							{PMSEND_FORM_TEXT}
						</div>
						
						<div class="col-12">
							<div class="form-check">
								{PMSEND_FORM_NOT_TO_SENTBOX}
								<label class="form-check-label" for="not_sentbox">
									{PHP.L.pm_notcopytosentbox}
								</label>
							</div>
						</div>
						
						<div class="col-12 pt-2">
							<button type="submit" class="btn btn-primary btn-lg px-5">
								<i class="fa-solid fa-paper-plane me-2"></i>
								{PHP.L.Submit}
							</button>
						</div>
						
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- BEGIN: AFTER_AJAX -->
</div>
<!-- END: AFTER_AJAX -->

<!-- END: MAIN -->