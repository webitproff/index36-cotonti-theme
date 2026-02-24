<!--
	/********************************************************************************
	* File: comments.edit.tpl
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
<div class="border-bottom py-3 px-3">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb d-flex mb-0 align-items-center">
            <i class="fa fa-pen-to-square fa-xl me-3 fs-4 text-primary"></i>
            {TITLE}
		</ol>
	</nav>
</div>
<div class="container-xl my-4 my-md-5">
	
    <div class="card border-0 shadow-sm">
        <div class="card-header fw-bold d-flex justify-content-between align-items-center" style="background-color: var(--bs-header-bg);">
			
            <a href="{BACK_URL}" class="btn btn-sm btn-light d-flex align-items-center gap-2">
                <i class="fa-solid fa-arrow-left"></i>
                {PHP.L.Back}
			</a>
		</div>
		
        <div class="card-body">
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
			
            <form action="{COMMENT_FORM_ACTION}" method="post" name="comment-form" class="needs-validation" novalidate>
                {COMMENT_FORM_PARAMS}
				
                <div class="row g-4">
					
                    <div class="col-12 col-md-3">
                        <label class="form-label fw-bold text-muted small d-block">{PHP.L.Poster}:</label>
					</div>
                    <div class="col-12 col-md-9">
                        <div class="comment-form-poster d-flex flex-wrap align-items-center gap-3">
                            <!-- IF {AUTHOR_DETAILS_URL} -->
							<a href="{AUTHOR_DETAILS_URL}" class="text-decoration-none">
								<!-- ENDIF -->
                                <div class="flex-shrink-0">
                                    {AUTHOR_AVATAR}
								</div>
								<!-- IF {AUTHOR_DETAILS_URL} -->
							</a>
							<!-- ENDIF -->
							
                            <div class="flex-grow-1">
                                <!-- IF {AUTHOR_DETAILS_URL} --><a href="{AUTHOR_DETAILS_URL}" class="fw-bold text-decoration-none"><!-- ENDIF -->
                                    {AUTHOR}
								<!-- IF {AUTHOR_DETAILS_URL} --></a><!-- ENDIF -->
								
                                <!-- IF {AUTHOR_ID} == 0 AND {PHP.usr.id} > 0 -->
                                <span class="badge bg-secondary ms-2">{PHP.L.Guest}</span>
                                <!-- ENDIF -->
							</div>
						</div>
					</div>
					
                    <div class="col-12 col-md-3">
                        <label class="form-label fw-bold text-muted small d-block">{PHP.L.Ip}:</label>
					</div>
                    <div class="col-12 col-md-9">
                        <div class="form-control-plaintext fw-medium text-monospace">
                            {COMMENT_IP}
						</div>
					</div>
					
                    <div class="col-12 col-md-3">
                        <label class="form-label fw-bold text-muted small d-block">{PHP.L.Date}:</label>
					</div>
                    <div class="col-12 col-md-9">
                        <div class="form-control-plaintext">
                            {COMMENT_DATE}
						</div>
					</div>
					
                    <!-- BEGIN: EXTRA_FIELD -->
                    <div class="col-12 col-md-3">
                        <label class="form-label fw-bold">{COMMENT_FORM_EXTRA_FIELD_TITLE}:</label>
					</div>
                    <div class="col-12 col-md-9">
                        {COMMENT_FORM_EXTRA_FIELD}
					</div>
                    <!-- END: EXTRA_FIELD -->
					
                    <div class="col-12">
                        <label class="form-label fw-bold d-block mb-2">Комментарий</label>
                        <div>
                            {COMMENT_FORM_TEXT}
						</div>
						
                        <div class="d-flex flex-wrap gap-3 mt-3 align-items-center">
                            <!-- IF {COMMENT_FORM_PFS} -->
                            {COMMENT_FORM_PFS}
                            <!-- ENDIF -->
							
                            <!-- IF {COMMENT_FORM_SFS} -->
                            <!-- IF {COMMENT_FORM_PFS} --><span class="align-self-center mx-2">{PHP.cfg.separator}</span><!-- ENDIF -->
                            {COMMENT_FORM_SFS}
                            <!-- ENDIF -->
						</div>
					</div>
					
				</div>
				
                <div class="text-end mt-5 pt-4 border-top">
                    <button type="submit" class="btn btn-primary btn-lg">
                        <i class="fa-solid fa-save me-2"></i>{PHP.L.Update}
					</button>
				</div>
			</form>
		</div>
	</div>
</div>

<style>
    .comment-form-poster img.avatar,
    .comment-form-poster img {
	max-height: 75px;
	border-radius: 50%;
	object-fit: cover;
    }
    @media (max-width: 767.98px) {
	.comment-form-poster {
	flex-direction: column;
	align-items: flex-start;
	}
    }
</style>

<!-- END: MAIN -->