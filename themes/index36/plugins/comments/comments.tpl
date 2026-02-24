<!--
	/********************************************************************************
	* File: comments.tpl
	* Extension: plugin 'comments'
	* Description: HTML template for comments plugin.
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
<!-- IF !{COMMENTS_IS_AJAX} -->
<!-- IF {COMMENTS_DISPLAY} === 'none' -->
<div class="text-end mb-3">
    <a href="#" onclick="toggleblock('comments'); return false" class="btn btn-outline-warning btn-lg d-inline-flex align-items-center gap-2">
        <i class="fa-solid fa-comment-dots"></i>
        {PHP.L.comments_comments}: <strong>{TOTAL_ENTRIES}</strong>
	</a>
</div>
<!-- ENDIF -->

<div id="comments" class="comments-container mb-5" {COMMENTS_CONTAINER_PARAMS}
<!-- IF {COMMENTS_DISPLAY} == 'none' -->style="display:none;"<!-- ENDIF -->>
	<!-- ENDIF -->
	
    <div id="comments-block" class="comments-block" {COMMENTS_BLOCK_PARAMS}>
		
        <!-- BEGIN: COMMENTS_ROW -->
        <div id="com{COMMENTS_ROW_ID}" class="card mb-4 border shadow-sm comment-row">
            <div class="card-header d-flex align-items-center gap-3 py-2 px-3">
                <div class="flex-shrink-0 comment-form-poster">
                    {COMMENTS_ROW_AUTHOR_AVATAR}
				</div>
                <div class="flex-grow-1">
                    <div class="fw-bold">
                        <a href="{COMMENTS_ROW_URL}" class="me-2">#{COMMENTS_ROW_ORDER}</a>
                        <!-- IF {COMMENTS_ROW_AUTHOR_DETAILS_URL} --><a href="{COMMENTS_ROW_AUTHOR_DETAILS_URL}" class="text-decoration-none"><!-- ENDIF -->
                            {COMMENTS_ROW_AUTHOR_FULL_NAME}
						<!-- IF {COMMENTS_ROW_AUTHOR_DETAILS_URL} --></a><!-- ENDIF -->
					</div>
                    <div class="small text-muted">
                        {COMMENTS_ROW_DATE}
					</div>
				</div>
			</div>
			
            <div class="card-body">
                <div class="mb-3">
                    {COMMENTS_ROW_TEXT}
				</div>
				
                <!-- IF {COMMENTS_ROW_DELETE} OR {COMMENTS_ROW_EDIT} -->
                <div class="d-flex flex-wrap gap-3 justify-content-end small text-muted mt-3 pt-3 border-top">
                    <!-- IF {COMMENTS_ROW_AUTHOR_IP} -->
                    <div>IP: {COMMENTS_ROW_AUTHOR_IP}</div>
                    <!-- ENDIF -->
                    <div class="d-flex gap-3">
                        {COMMENTS_ROW_EDIT}
                        {COMMENTS_ROW_DELETE}
					</div>
				</div>
                <!-- ENDIF -->
			</div>
		</div>
        <!-- END: COMMENTS_ROW -->
		
        <!-- IF {PAGINATION} -->
        <nav aria-label="Comments pagination" class="mt-4">
            <div class="d-flex flex-column flex-md-row justify-content-between align-items-center gap-3 small text-muted">
                <div>
                    {PHP.L.Total}: <strong>{TOTAL_ENTRIES}</strong> • 
                    {PHP.L.Onpage}: <strong>{ENTRIES_ON_CURRENT_PAGE}</strong>
				</div>
                <ul class="pagination pagination-sm mb-0">
                    {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
				</ul>
			</div>
		</nav>
        <!-- ENDIF -->
		
        <!-- IF {TOTAL_ENTRIES} === 0 -->
        <div class="alert alert-info text-center my-4">
            {PHP.L.comments_noYet}
		</div>
        <!-- ENDIF -->
		
        <!-- BEGIN: NEW_COMMENT -->
		<div class="comments-warnings mb-4">
			{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
		</div>
		
		<div class="alert alert-danger comments-error mb-4" style="display: none">
			<h5 class="alert-heading">{PHP.L.Error}</h5>
			<div class="comments-message"></div>
		</div>
		
		<div class="alert alert-success comments-success mb-4" style="display: none">
			<h5 class="alert-heading">{PHP.L.Done}</h5>
			<div class="comments-message"></div>
		</div>
        <div class="card border-0 mt-5 shadow-sm">
            <div class="card-header fw-bold" style="background-color: var(--bs-header-bg);">
                <i class="fa-solid fa-comment-medical me-2"></i>{PHP.L.comments_newComment}
			</div>
            <div class="card-body">
                <form action="{COMMENT_FORM_ACTION}" method="post" name="comment-form" class="needs-validation" novalidate>
					
                    <!-- BEGIN: GUEST -->
                    <div class="mb-3">
                        <label class="form-label fw-bold">{PHP.L.Name}</label>
                        {COMMENT_FORM_AUTHOR}
					</div>
                    <!-- END: GUEST -->
					
                    <!-- BEGIN: EXTRA_FIELD -->
                    <div class="mb-3">
                        <label class="form-label fw-bold">{COMMENT_FORM_EXTRA_FIELD_TITLE}</label>
                        {COMMENT_FORM_EXTRA_FIELD}
					</div>
                    <!-- END: EXTRA_FIELD -->
					
                    <div class="mb-4">
						<label for="comment-text">{PHP.L.Message}</label>
                        <div>
                            {COMMENT_FORM_TEXT}
						</div>
						
                        <div class="d-flex flex-wrap gap-3 mt-2 align-items-center">
                            <!-- IF {COMMENT_FORM_PFS} -->
                            {COMMENT_FORM_PFS}
                            <!-- ENDIF -->
                            <!-- IF {COMMENT_FORM_SFS} -->
                            <!-- IF {COMMENT_FORM_PFS} --><span class="mx-2">{PHP.cfg.separator}</span><!-- ENDIF -->
                            {COMMENT_FORM_SFS}
                            <!-- ENDIF -->
						</div>
					</div>
					
                    <!-- IF {PHP.usr.id} == 0 AND {COMMENT_FORM_VERIFY_IMG} -->
                    <div class="mb-4">
                        <div class="d-flex align-items-center gap-3">
                            {COMMENT_FORM_VERIFY_IMG}
                            <!-- IF {COMMENT_FORM_VERIFY_INPUT} -->
                            {COMMENT_FORM_VERIFY_INPUT}
                            <!-- ENDIF -->
						</div>
					</div>
                    <!-- ENDIF -->
					
                    <!-- IF {COMMENT_FORM_HINT} -->
                    <div class="alert alert-secondary small mb-4">
                        {COMMENT_FORM_HINT}
					</div>
                    <!-- ENDIF -->
					
                    <div class="text-end">
                        <button type="submit" class="btn btn-primary btn-lg px-5">
                            <i class="fa-solid fa-paper-plane me-2"></i>{PHP.L.Submit}
						</button>
					</div>
				</form>
			</div>
		</div>
        <!-- END: NEW_COMMENT -->
		
        <!-- BEGIN: COMMENTS_CLOSED -->
        <div class="alert alert-warning mt-4">
            {COMMENTS_CLOSED}
		</div>
        <!-- END: COMMENTS_CLOSED -->
		
	</div>
	
	<!-- IF !{COMMENTS_IS_AJAX} -->
</div>
<!-- ENDIF -->
<style>
    .comment-form-poster img.avatar,
    .comment-form-poster img {
	max-height: 75px;
	border-radius: 50%;
	object-fit: cover;
    }
</style>
<!-- END: MAIN -->