<!--
/********************************************************************************
 * File: comments.recent.widget.tpl
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

<div class="card border-0 shadow-sm">
    <div class="card-header bg-gradient-primary text-white d-flex justify-content-between align-items-center">
        <h2 class="h5 mb-0 fw-bold">
            <i class="fa-solid fa-comments me-2"></i>{PHP.L.comments_recent}
            <!-- IF {TOTAL_ENTRIES} > 0 -->
            <small class="ms-2 opacity-75">({PHP.L.Total}: {TOTAL_ENTRIES})</small>
            <!-- ENDIF -->
		</h2>
	</div>
	
    <div class="card-body p-0">
        <div class="wrapper">
			
            <!-- IF {TOTAL_ENTRIES} === 0 -->
            <div class="text-center py-5 text-muted fst-italic">
                <i class="fa-solid fa-comment-slash fa-2x mb-3 opacity-50 d-block"></i>
                {PHP.L.comments_noYet}
			</div>
            <!-- ENDIF -->
			
            <!-- BEGIN: COMMENTS_ROW -->
            <div id="com{COMMENTS_ROW_ID}" class="comment-row border-bottom last-child-no-border">
                <div class="p-3 p-md-4 d-flex flex-column flex-md-row gap-3 gap-md-4 align-items-start">
					
                    <div class="flex-shrink-0 text-center text-md-start">
                        {COMMENTS_ROW_AUTHOR_AVATAR}
					</div>
					
                    <div class="flex-grow-1 w-100" style="min-width:0;">
						
                        <div class="d-flex flex-column flex-md-row justify-content-between align-items-start gap-2 mb-2">
                            <h6 class="mb-0 fw-bold text-truncate">
                                <!-- IF {COMMENTS_AUTH_ADMIN} -->#{COMMENTS_ROW_ID}.&nbsp;<!-- ENDIF -->
                                {COMMENTS_ROW_TITLE}
							</h6>
							
                            <div class="small text-muted text-nowrap">
                                {COMMENTS_ROW_DATE}
							</div>
						</div>
						
                        <div class="mb-2">
                            <!-- IF {COMMENTS_ROW_AUTHOR_DETAILS_URL} --><a href="{COMMENTS_ROW_AUTHOR_DETAILS_URL}" class="text-decoration-none"><!-- ENDIF -->
                                <strong>{COMMENTS_ROW_AUTHOR_FULL_NAME}</strong>
							<!-- IF {COMMENTS_ROW_AUTHOR_DETAILS_URL} --></a><!-- ENDIF -->
						</div>
						
                        <div class="comment-text closed mb-3" id="text-{COMMENTS_ROW_ID}">
                            {COMMENTS_ROW_TEXT}
						</div>
						
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-3 small">
							
                            <div class="d-flex gap-3">
                                <!-- IF {COMMENTS_ROW_URL} -->
                                <a href="{COMMENTS_ROW_URL}" class="text-primary text-decoration-none d-flex align-items-center gap-1">
                                    <i class="fa-solid fa-arrow-up-right-from-square fa-xs"></i>
                                    {PHP.L.Open}
								</a>
                                <!-- ENDIF -->
								
                                <!-- IF {COMMENTS_ROW_EDIT_URL} -->
                                <a href="{COMMENTS_ROW_EDIT_URL}" class="text-success text-decoration-none d-flex align-items-center gap-1">
                                    <i class="fa-solid fa-pen-to-square fa-xs"></i>
                                    {PHP.L.Edit}
								</a>
                                <!-- ENDIF -->
								
                                <!-- IF {COMMENTS_ROW_DELETE_URL} -->
                                <a href="{COMMENTS_ROW_DELETE_URL}" class="confirmLink text-danger text-decoration-none d-flex align-items-center gap-1">
                                    <i class="fa-solid fa-trash-can fa-xs"></i>
                                    {PHP.L.Delete}
								</a>
                                <!-- ENDIF -->
							</div>
							
                            <div class="d-flex align-items-center gap-3 text-muted">
                                <!-- IF {COMMENTS_ROW_AUTHOR_IP} -->
                                <span>IP: {COMMENTS_ROW_AUTHOR_IP}</span>
                                <!-- ENDIF -->
								
                                <a href="#" class="comment-text-toggle text-primary text-decoration-none" 
								style="display:none;" 
								title="{PHP.L.Unfold}"
								data-bs-toggle="collapse"
								data-bs-target="#text-{COMMENTS_ROW_ID}"
								aria-expanded="false">
                                    <i class="fa-solid fa-chevron-down"></i>
								</a>
							</div>
							
						</div>
					</div>
				</div>
			</div>
            <!-- END: COMMENTS_ROW -->
			
            <!-- IF {COMMENTS_ADMIN_URL} -->
            <div class="text-center py-4 border-top">
                <a href="{COMMENTS_ADMIN_URL}" class="btn btn-outline-primary px-4">
                    <i class="fa-solid fa-list-ul me-2"></i>{PHP.L.More}
				</a>
			</div>
            <!-- ENDIF -->
			
		</div>
	</div>
</div>

<style>
    .comment-row:last-child {
	border-bottom: none !important;
    }
    .comment-text {
	transition: max-height 0.4s ease-out;
	overflow: hidden;
    }
    .comment-text.closed {
	max-height: 4.5em;          /* примерно 3–4 строки */
	position: relative;
    }
    .comment-text.closed::after {
	content: '';
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	height: 24px;
	background: linear-gradient(to bottom, transparent, var(--bs-body-bg));
	pointer-events: none;
    }
    .comment-text p:last-child {
	margin-bottom: 0;
    }
    @media (max-width: 575.98px) {
	.comment-row .d-flex.flex-md-row {
	flex-direction: column !important;
	}
    }
</style>

<script>
	document.addEventListener('DOMContentLoaded', function () {
		document.querySelectorAll('.comment-text').forEach(function (el) {
			const toggle = el.parentElement.querySelector('.comment-text-toggle');
			if (!toggle) return;
			
			// Показываем кнопку разворачивания только если текст действительно обрезается
			if (el.scrollHeight > el.clientHeight + 10) {
				toggle.style.display = '';
			}
			
			toggle.addEventListener('click', function (e) {
				e.preventDefault();
				const isClosed = el.classList.contains('closed');
				
				if (isClosed) {
					el.classList.remove('closed');
					toggle.innerHTML = '<i class="fa-solid fa-chevron-up"></i>';
					toggle.title = '{PHP.L.Fold}';
					} else {
					el.classList.add('closed');
					toggle.innerHTML = '<i class="fa-solid fa-chevron-down"></i>';
					toggle.title = '{PHP.L.Unfold}';
				}
			});
		});
	});
</script>

<!-- END: MAIN -->