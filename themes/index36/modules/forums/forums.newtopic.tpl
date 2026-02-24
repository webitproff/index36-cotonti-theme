<!--
	/********************************************************************************
	* File: forums.newtopic.tpl
	* Extension: Module 'forums'
	* Description: HTML template for Forums Module - Create new post/topic.
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
		<ol class="breadcrumb d-flex mb-0">
			{FORUMS_NEWTOPIC_BREADCRUMBS}
		</ol>
	</nav>
</div>

<div class="container-xl mt-4 mb-5">
	
	
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
	
    <form action="{FORUMS_NEWTOPIC_FORM_ACTION}" method="post" name="newtopic" class="needs-validation" novalidate>
		
        <div class="mb-4">
            <label class="form-label fw-bold required">{PHP.L.Title}</label>
            {FORUMS_NEWTOPIC_FORM_TITLE}
		</div>
		
        <div class="mb-4">
            <label class="form-label">{PHP.L.Description}</label>
            {FORUMS_NEWTOPIC_FORM_DESCRIPTION}
		</div>
		
        <!-- BEGIN: PRIVATE -->
        <div class="mb-4 form-check">
            <div class="d-flex align-items-center gap-2">
                {FORUMS_NEWTOPIC_FORM_PRIVATE}
                <label class="form-check-label" for="private_topic">
                    {PHP.L.forums_privatetopic1}
                    <small class="text-muted ms-1">({PHP.L.forums_privatetopic2})</small>
				</label>
			</div>
		</div>
        <!-- END: PRIVATE -->
		
        <div class="mb-5">
			{FORUMS_NEWTOPIC_FORM_TEXT}
			
			
            <div class="d-flex flex-wrap gap-3 mt-3 align-items-center">
                <!-- IF {FORUMS_NEWTOPIC_PFS} -->
                {FORUMS_NEWTOPIC_PFS}
                <!-- ENDIF -->
				
                <!-- IF {FORUMS_NEWTOPIC_SFS} -->
                <!-- IF {FORUMS_NEWTOPIC_PFS} --><span class="align-self-center">{PHP.cfg.separator}</span><!-- ENDIF -->
                {FORUMS_NEWTOPIC_SFS}
                <!-- ENDIF -->
				
                <!-- IF {FORUMS_NEWTOPIC_EDIT_TIMEOUT} -->
                <div class="text-muted small ms-auto">
                    {PHP.L.forums_edittimeoutnote} <strong>{FORUMS_NEWTOPIC_EDIT_TIMEOUT}</strong>
				</div>
                <!-- ENDIF -->
			</div>
		</div>
		
        <!-- BEGIN: POLL -->
        <div class="card mb-5 border">
            <div class="card-header bg-light fw-bold">
                {PHP.L.poll}
			</div>
            <div class="card-body">
				
                <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
                <script type="text/javascript">
                    var ansMax = {PHP.cfg.polls.max_options_polls};
				</script>
				
                {EDIT_POLL_IDFIELD}
				
                <div class="mb-3">
                    <label class="form-label">{PHP.L.Question}</label>
                    {EDIT_POLL_TEXT}
				</div>
				
                <div class="mb-3">
                    <label class="form-label">{PHP.L.Options}</label>
                    <div id="poll-options-container">
                        <!-- BEGIN: OPTIONS -->
                        <div class="input-group mb-2 poll-option-row">
                            {EDIT_POLL_OPTION_TEXT}
                            <button type="button" class="btn btn-outline-danger deloption">
                                <i class="fa-solid fa-xmark"></i>
							</button>
						</div>
                        <!-- END: OPTIONS -->
					</div>
					
                    <button id="addoption" type="button" class="btn btn-outline-primary mt-2">
                        <i class="fa-solid fa-plus me-1"></i>{PHP.L.Add}
					</button>
				</div>
				
                <div class="form-check mb-4">
                    {EDIT_POLL_MULTIPLE}
				</div>
				
			</div>
		</div>
        <!-- END: POLL -->
		
        <!-- IF {FORUMS_NEWTOPIC_FORM_TAGS} -->
        <div class="mb-5">
            <label class="form-label">{PHP.L.Tags}</label>
            {FORUMS_NEWTOPIC_FORM_TAGS}
            <div class="form-text text-muted small">
                Вводите через запятую
			</div>
		</div>
        <!-- ENDIF -->
		
        <div class="d-grid d-md-block text-md-end">
            <button type="submit" class="btn btn-primary btn-lg px-5">
                <i class="fa-solid fa-paper-plane me-2"></i>{PHP.L.Submit}
			</button>
		</div>
		
	</form>
</div>

<!-- END: MAIN -->