<!--
	/********************************************************************************
	* File: polls.tpl
	* Extension: Module 'polls'
	* Description: HTML template for Polls Module - polls.tpl. 
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
<!-- BEGIN: POLL_VIEW -->
<div id="poll_{POLL_ID}" class="card border mb-4 shadow-sm">
    <div class="card-header bg-primary text-white fw-bold">
        <i class="fa-solid fa-poll me-2"></i>Голосование
	</div>
    <div class="card-body">
        <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}"
		class="ajax post-poll_{POLL_ID};index.php;e=polls&mode=ajax">
            <input type="hidden" name="poll_id" value="{POLL_ID}" />
			
            <div class="d-grid gap-3 mb-4">
                <!-- BEGIN: POLLTABLE -->
                <div class="form-check">
                    {POLL_INPUT}
                    <label class="form-check-label">
                        {POLL_OPTIONS}
					</label>
				</div>
                <!-- END: POLLTABLE -->
			</div>
			
            <div class="text-end">
                <button type="submit" class="btn btn-primary px-5" title="{PHP.L.polls_Vote}">
                    <i class="fa-solid fa-check-to-slot me-2"></i>{PHP.L.polls_Vote}
				</button>
			</div>
		</form>
		
        <p class="text-center text-muted small mt-4 mb-0">
            {POLL_VOTERS} голосов • {PHP.L.Date} {POLL_SINCE}
		</p>
	</div>
</div>

<script type="text/javascript">
	function anim() {
		$(".progress-bar").each(function () {
			let width = $(this).css("width");
			if (width !== '0px') {
				$(this).css("width", "0%").animate({ width: width }, 800);
			}
		});
	}
	$(document).ready(anim);
</script>
<!-- END: POLL_VIEW -->


<!-- BEGIN: POLL_VIEW_VOTED -->
<div class="card border-success mb-4 shadow-sm">
    <div class="card-header bg-success text-white fw-bold">
        <i class="fa-solid fa-chart-simple me-2"></i>Результаты
	</div>
    <div class="card-body">
        <!-- BEGIN: POLLTABLE -->
        <div class="mb-4">
            <div class="d-flex justify-content-between align-items-center mb-2 small">
                <div class="fw-medium">{POLL_OPTIONS}</div>
                <div class="text-end">
                    <strong>{POLL_PER}%</strong> ({POLL_COUNT})
				</div>
			</div>
            <div class="progress" role="progressbar" aria-valuenow="{POLL_PER}" aria-valuemin="0" aria-valuemax="100" style="height: 1.25rem;">
                <div class="progress-bar bg-success" style="width: {POLL_PER}%"></div>
			</div>
		</div>
        <!-- END: POLLTABLE -->
		
        <div class="alert alert-info text-center mb-0 small">
            {PHP.L.polls_alreadyvoted}
		</div>
		
        <p class="text-center text-muted small mt-3 mb-0">
            {POLL_VOTERS} голосов • {PHP.L.Date} {POLL_SINCE}
		</p>
	</div>
</div>
<!-- END: POLL_VIEW_VOTED -->


<!-- BEGIN: POLL_VIEW_LOCKED -->
<div class="card border-secondary mb-4 shadow-sm">
    <div class="card-header bg-secondary text-white fw-bold">
        <i class="fa-solid fa-lock me-2"></i>Опрос закрыт
	</div>
    <div class="card-body">
        <!-- BEGIN: POLLTABLE -->
        <div class="mb-4">
            <div class="d-flex justify-content-between align-items-center mb-2 small">
                <div class="fw-medium">{POLL_OPTIONS}</div>
                <div class="text-end">
                    <strong>{POLL_PER}%</strong> ({POLL_COUNT})
				</div>
			</div>
            <div class="progress" role="progressbar" aria-valuenow="{POLL_PER}" aria-valuemin="0" aria-valuemax="100" style="height: 1.25rem;">
                <div class="progress-bar bg-secondary" style="width: {POLL_PER}%"></div>
			</div>
		</div>
        <!-- END: POLLTABLE -->
		
        <div class="alert alert-secondary text-center mb-3 small">
            {PHP.L.polls_locked}
		</div>
		
        <p class="text-center text-muted small mb-0">
            {POLL_VOTERS} голосов • {PHP.L.Date} {POLL_SINCE}
		</p>
	</div>
</div>
<!-- END: POLL_VIEW_LOCKED -->


<!-- BEGIN: POLL_VIEW_DISABLED -->
<div class="card border-warning mb-4 shadow-sm">
    <div class="card-header bg-warning text-dark fw-bold">
        <i class="fa-solid fa-lock me-2"></i>Голосование
	</div>
    <div class="card-body text-center">
        <!-- BEGIN: POLLTABLE -->
        <div class="mb-4 fw-medium">
            {POLL_OPTIONS}
		</div>
        <!-- END: POLLTABLE -->
		
        <div class="alert alert-warning mb-0">
            {PHP.L.rat_registeredonly}
		</div>
	</div>
</div>
<!-- END: POLL_VIEW_DISABLED -->


<!-- BEGIN: MAIN -->
<div class="container py-4">
	<!-- BEGIN: POLLS_VIEW -->
	
    <h2 class="text-primary fs-5 mb-3">
        <i class="fa-solid fa-poll fa-xl me-2"></i>{POLLS_TITLE}
	</h2>
	
	{POLLS_FORM}
	
	<div class="mt-4 pt-3 border-top">
		<h3 class="h6 fw-bold mb-3">
			{PHP.L.comments_comments}: {POLLS_COMMENTS_LINK}
		</h3>
		{POLLS_COMMENTS}
	</div>
	
	<!-- END: POLLS_VIEW -->
	
	
	<!-- BEGIN: POLLS_VIEWALL -->
	
    <h2 class="fs-5 mb-3">
        <i class="fa-solid fa-archive fa-xl me-2"></i>{PHP.L.polls_viewarchives}
	</h2>
	
	<div class="list-group list-group-flush">
		<!-- BEGIN: POLL_ROW -->
		<div class="list-group-item px-4 py-3">
			<div class="row align-items-center g-3">
				<div class="col-auto small text-muted">
					{POLL_DATE}
				</div>
				<div class="col">
					<a href="{POLL_HREF}" class="text-decoration-none fw-medium">
						{POLL_TEXT}
					</a>
				</div>
				<div class="col-auto">
					{POLLS_COMMENTS_LINK}
				</div>
			</div>
		</div>
		<!-- END: POLL_ROW -->
		
		<!-- BEGIN: POLL_NONE -->
		<div class="list-group-item text-center py-4 text-muted">
			{PHP.L.None}
		</div>
		<!-- END: POLL_NONE -->
	</div>
	
	<!-- END: POLLS_VIEWALL -->
	
	{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
</div>
<!-- END: MAIN -->