<!--
	/********************************************************************************
	* File: polls.index.tpl
	* Extension: Module 'polls'
	* Description: HTML template for Polls Module - polls.index.tpl. 
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
<div id="poll_{POLL_ID}" class="mb-4">
    <p>
        <i class="fa-solid fa-poll me-2"></i>Опрос
	</p>
    
        <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" 
		class="ajax post-poll_{POLL_ID};index.php;e=polls&mode=ajax&poll_theme=index">
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
                <button type="submit" class="btn btn-primary px-4" title="{PHP.L.polls_Vote}">
                    <i class="fa-solid fa-check-to-slot me-2"></i>{PHP.L.polls_Vote}
				</button>
			</div>
		</form>
	
</div>
<!-- END: POLL_VIEW -->

<!-- BEGIN: POLL_VIEW_VOTED -->
<div class="mb-4">
    <p>
        <i class="fa-solid fa-chart-column me-2"></i>Результаты опроса
	</p>
    
        <!-- BEGIN: POLLTABLE -->
        <div class="mb-4">
            <div class="d-flex justify-content-between mb-1 small fw-medium">
                <div>{POLL_OPTIONS}</div>
                <div>{POLL_PER}% ({POLL_COUNT})</div>
			</div>
            <div class="progress" role="progressbar" aria-valuenow="{POLL_PER}" aria-valuemin="0" aria-valuemax="100" style="height: 1.25rem;">
                <div class="progress-bar bg-success" style="width: {POLL_PER}%"></div>
			</div>
		</div>
        <!-- END: POLLTABLE -->
		
        <p class="text-center small text-muted mb-0 mt-3">
            {PHP.L.Votes}: <strong>{POLL_VOTERS}</strong>
		</p>
</div>

<script type="text/javascript">
	function anim() {
		$('.progress-bar').each(function() {
			let percentage = $(this).width() / $(this).parent().width() * 100;
			if (percentage > 0) {
				$(this).width(0).animate({ width: percentage + '%' }, 1200);
			}
		});
	}
	$(document).ready(anim);
</script>
<!-- END: POLL_VIEW_VOTED -->

<!-- BEGIN: POLL_VIEW_DISABLED -->
<div class="mb-4">
    <p>
        <i class="fa-solid fa-lock me-2"></i>Опрос
	</p>

        <!-- BEGIN: POLLTABLE -->
        <div class="mb-3 fw-medium">{POLL_OPTIONS}</div>
        <!-- END: POLLTABLE -->
		
        <div class="alert alert-warning mb-0">
            {PHP.L.rat_registeredonly}
		</div>

</div>
<!-- END: POLL_VIEW_DISABLED -->

<!-- BEGIN: POLL_VIEW_LOCKED -->
<div class="mb-4">
    <p>
        <i class="fa-solid fa-lock me-2"></i>Опрос завершён
	</p>

        <!-- BEGIN: POLLTABLE -->
        <div class="mb-4">
            <div class="d-flex justify-content-between mb-1 small fw-medium">
                <div>{POLL_OPTIONS}</div>
                <div>{POLL_PER}% ({POLL_COUNT})</div>
			</div>
            <div class="progress" role="progressbar" aria-valuenow="{POLL_PER}" aria-valuemin="0" aria-valuemax="100" style="height: 1.25rem;">
                <div class="progress-bar bg-secondary" style="width: {POLL_PER}%"></div>
			</div>
		</div>
        <!-- END: POLLTABLE -->
		
        <p class="text-center small text-muted mb-0">
            {PHP.L.Date} <strong>{POLL_SINCE_SHORT}</strong> • 
            {PHP.L.Votes} <strong>{POLL_VOTERS}</strong>
		</p>

</div>
<!-- END: POLL_VIEW_LOCKED -->

<!-- BEGIN: INDEXPOLLS -->
<div class="mb-4 h-100">
    <p>
        <i class="fa-solid fa-poll me-2"></i>Актуальные опросы
	</p>
    
        <!-- BEGIN: POLL -->
        <div class="mb-3">
            <a href="{IPOLLS_URL}" class="fw-bold text-decoration-none d-block mb-2">
                {IPOLLS_TITLE}
			</a>
            {IPOLLS_FORM}
		</div>
        <!-- END: POLL -->
		
        <!-- BEGIN: ERROR -->
        <p class="text-center small fw-medium text-danger mb-3">{IPOLLS_ERROR}</p>
        <!-- END: ERROR -->
		
        <p class="text-center small mb-0">
            <a href="{IPOLLS_ALL}" class="text-primary text-decoration-none">
                <i class="fa-solid fa-archive me-1"></i>{PHP.L.polls_viewarchives}
			</a>
		</p>
	
</div>
<!-- END: INDEXPOLLS -->