
<!--
/********************************************************************************
 * File: contact.tpl
 * Extension: plugin 'contact'
 * Description: HTML template for contact plugin.
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

<div class="border-bottom py-3 px-3">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb d-flex mb-0 align-items-center">
            <i class="fa-solid fa-envelope-open-text me-3 fs-4 text-primary"></i>
            <li class="breadcrumb-item active fw-bold">{CONTACT_TITLE}</li>
		</ol>
	</nav>
</div>

<div class="container-xl mt-4 mt-md-5 mb-5">
	
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
	
    <div class="row g-4 g-lg-5">
		
        <!-- Левая колонка: описание + карта (на больших экранах шире) -->
        <div class="col-12 col-lg-5 col-xl-4 order-2 order-lg-1">
			
            <!-- IF {PHP.cfg.plugin.contact.about} -->
            <div class="text-muted mb-4 mb-lg-5 lh-lg">
                {PHP.cfg.plugin.contact.about}
			</div>
			<!-- ELSE -->
			<div class="text-muted mb-4 mb-lg-5 lh-lg">
                CONTENT for PHP.cfg.plugin.contact.about
			</div>
			<!-- ENDIF -->
			
			
            <!-- IF {PHP.cfg.plugin.contact.map} -->
            <div class="shadow rounded-3 overflow-hidden border mb-4 mb-lg-0">
                {PHP.cfg.plugin.contact.map}
			</div>
			<!-- ELSE -->
			<div class="text-muted mb-4 mb-lg-5 lh-lg">
                CONTENT for cfg.plugin.contact.map 
			</div>
            <!-- ENDIF -->
			
		</div>
		
        <!-- Правая колонка: форма (на больших экранах шире) -->
        <div class="col-12 col-lg-7 col-xl-8 order-1 order-lg-2">
			
            <!-- BEGIN: FORM -->
            <div class="card border-0 shadow-lg rounded-4">
                <div class="card-body p-4 p-md-5">
					
                    <form action="{CONTACT_FORM_SEND}" method="post" name="contact_form" enctype="multipart/form-data" class="needs-validation" novalidate>
						
                        <div class="row g-4">
							
                            <div class="col-12 col-sm-4">
                                <label class="form-label fw-bold text-muted small">{PHP.L.Username}:</label>
							</div>
                            <div class="col-12 col-sm-8">
                                <div class="form-control-plaintext fw-medium">
                                    {CONTACT_FORM_AUTHOR}
								</div>
							</div>
							
                            <div class="col-12 col-sm-4">
                                <label class="form-label fw-bold text-muted small">{PHP.L.Email}:</label>
							</div>
                            <div class="col-12 col-sm-8">
                                <div class="form-control-plaintext fw-medium">
                                    {CONTACT_FORM_EMAIL}
								</div>
							</div>
							
                            <div class="col-12 col-sm-4">
                                <label for="subject" class="form-label fw-bold required">{PHP.L.Subject}:</label>
							</div>
                            <div class="col-12 col-sm-8">
                                {CONTACT_FORM_SUBJECT}
							</div>
							
                            <div class="col-12">
                                <label for="message" class="form-label fw-bold required">{PHP.L.Message}:</label>
                                <div>
                                    {CONTACT_FORM_TEXT}
								</div>
							</div>
							
                            <!-- BEGIN: EXTRAFLD -->
                            <div class="col-12 col-sm-4">
                                <label class="form-label fw-bold">{CONTACT_FORM_EXTRAFLD_TITLE}:</label>
							</div>
                            <div class="col-12 col-sm-8">
                                {CONTACT_FORM_EXTRAFLD}
							</div>
                            <!-- END: EXTRAFLD -->
							
                            <!-- BEGIN: CAPTCHA -->
                            <div class="col-12">
                                <div class="d-flex flex-column flex-sm-row gap-4 align-items-sm-center">
                                    <div class="flex-shrink-0">
                                        {CONTACT_FORM_VERIFY_IMG}
									</div>
                                    <div class="flex-grow-1">
                                        {CONTACT_FORM_VERIFY_INPUT}
									</div>
								</div>
							</div>
                            <!-- END: CAPTCHA -->
							
                            <div class="col-12 text-center text-sm-end mt-4 pt-4 border-top">
                                <button type="submit" class="btn btn-primary btn-lg px-5 py-3">
                                    <i class="fa-solid fa-paper-plane me-2"></i>{PHP.L.Submit}
								</button>
							</div>
							
						</div>
						
					</form>
					
				</div>
			</div>
            <!-- END: FORM -->
			
		</div>
		
	</div>
	
</div>

<!-- END: MAIN -->