<!--
	/********************************************************************************
	* File: forums.sections.tpl
	* Extension: Module 'forums'
	* Description: HTML template for Forums Module - sections.
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

<div class="border-bottom py-3 px-3 mb-4">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-transparent mb-0 p-0">
            {FORUMS_SECTIONS_PAGETITLE}
		</ol>
	</nav>
</div>

<div class="container-xl py-4 py-md-5">
	
    <!-- Управление свёрткой + ссылки -->
    <div class="d-flex flex-wrap gap-3 mb-4 align-items-center">
        <div class="small fw-bold me-2">{PHP.L.forums_foldall} / {PHP.L.forums_unfoldall}:</div>
        <a href="{PHP|cot_url('forums','c=fold#top')}" rel="nofollow" onclick="return toggleAll('hide')" class="btn btn-sm btn-outline-secondary">
            <i class="fa-solid fa-compress me-1"></i>{PHP.L.forums_foldall}
		</a>
        <a href="{PHP|cot_url('forums','c=unfold#top')}" rel="nofollow" onclick="return toggleAll('show')" class="btn btn-sm btn-outline-secondary">
            <i class="fa-solid fa-expand me-1"></i>{PHP.L.forums_unfoldall}
		</a>
	</div>
	
    <!-- BEGIN: FORUMS_SECTIONS -->
	
    <!-- BEGIN: CAT -->
    <div class="mb-4">
        <h3 class="h5 mb-3 border-bottom pb-2">
            <a href="{FORUMS_SECTIONS_ROW_SECTIONSURL}"
			class="text-decoration-none "
			onclick="return toggleblock('blk_{FORUMS_SECTIONS_ROW_CAT}')">
                {FORUMS_SECTIONS_ROW_TITLE}
			</a>
		</h3>
		
        <div id="blk_{FORUMS_SECTIONS_ROW_CAT}"<!-- IF {FORUMS_SECTIONS_ROW_FOLD} --> style="display:none;"<!-- ENDIF --> >
			
            <!-- BEGIN: SECTION -->
            <div class="card mb-3 shadow-sm border-0">
                <div class="card-body">
                    <div class="row align-items-center g-3 g-md-4">
						
                        <div class="col-auto text-center">
                            <div class="fs-1 text-muted opacity-75">
								<!-- IF {FORUMS_SECTIONS_ROW_ICON} -->
								<img class="rounded me-2" src="{FORUMS_SECTIONS_ROW_ICON}" alt="{FORUMS_SECTIONS_ROW_TITLE}" width="32" height="32" style="object-fit: cover;">
								
								<!-- ELSE -->
								<img class="rounded-circle me-2" src="{PHP.R.app-logo}" alt="{FORUMS_SECTIONS_ROW_TITLE}" width="32" height="32" style="object-fit: cover;">
								<!-- ENDIF -->
							</div>
						</div>
						
                        <div class="col">
                            <h4 class="card-title mb-1 fs-5">
                                <a href="{FORUMS_SECTIONS_ROW_URL}" class="text-decoration-none">
                                    {FORUMS_SECTIONS_ROW_TITLE}
								</a>
							</h4>
							
                            <!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
                            <p class="text-muted small mb-2">
                                {FORUMS_SECTIONS_ROW_DESC}
							</p>
                            <!-- ENDIF -->
							
                            <!-- BEGIN: SUBSECTION -->
                            <ul class="list-unstyled d-flex flex-wrap gap-3 gap-md-4 small mb-0">
                                <li>
                                    {PHP.R.forums_icon_subforum}
                                    <a href="{FORUMS_SECTIONS_ROW_URL}" class="text-muted text-decoration-none">
                                        {FORUMS_SECTIONS_ROW_TITLE}
									</a>
								</li>
							</ul>
                            <!-- END: SUBSECTION -->
						</div>
						
                        <div class="col-12 col-md-auto text-center text-md-end small">
                            <div class="mb-2">
                                <strong>{FORUMS_SECTIONS_ROW_LASTPOST}</strong><br>
                                <span class="text-muted">
                                    {FORUMS_SECTIONS_ROW_LASTPOSTDATE} {FORUMS_SECTIONS_ROW_LASTPOSTER}
								</span>
							</div>
							
                            <div class="d-flex justify-content-center justify-content-md-end gap-4 gap-md-5 mt-2">
                                <div>
                                    <div class="fw-bold">{FORUMS_SECTIONS_ROW_TOPICCOUNT}</div>
                                    <div class="text-muted small">{PHP.L.forums_topics}</div>
								</div>
                                <div>
                                    <div class="fw-bold">{FORUMS_SECTIONS_ROW_POSTCOUNT}</div>
                                    <div class="text-muted small">{PHP.L.forums_posts}</div>
								</div>
                                <div>
                                    <div class="fw-bold">{FORUMS_SECTIONS_ROW_ACTIVITY}</div>
                                    <div class="text-muted small">{PHP.L.Activity}</div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
            <!-- END: SECTION -->
			
		</div>
	</div>
    <!-- END: CAT -->
	
    <!-- END: FORUMS_SECTIONS -->
	
    <div class="d-flex flex-wrap gap-4 gap-md-5 mt-5 small text-muted">
        <!-- IF {PHP|cot_plugin_active('search')} -->
        <a href="{PHP|cot_url('plug','e=search&amp;tab=frm')}" class="text-decoration-none">
            <i class="fa-solid fa-magnifying-glass me-1"></i>{PHP.L.forums_searchinforums}
		</a>
        <!-- ENDIF -->
		
        <!-- IF {PHP|cot_plugin_active('forumstats')} -->
        <a href="{PHP|cot_url('plug','e=forumstats')}" class="text-decoration-none">
            <i class="fa-solid fa-chart-simple me-1"></i>{PHP.L.Statistics}
		</a>
        <!-- ENDIF -->
		
        <a href="{FORUMS_SECTIONS_MARKALL_URL}" rel="nofollow" class="text-decoration-none">
            <i class="fa-solid fa-eye-slash me-1"></i>{PHP.L.forums_markasread}
		</a>
	</div>
	
</div>
<div class="container-xl">
	<!-- IF {FORUMS_SECTIONS_WHOSONLINE} -->
	<div class="mb-3">
        {FORUMS_SECTIONS_WHOSONLINE}
	</div>
	<!-- ENDIF -->
	<!-- IF {FORUMS_SECTIONS_TAG_CLOUD} -->
	<div class="mb-3">
        <h5 class="text-center text-md-start">
            <i class="fa-solid fa-tags me-2 text-primary"></i>{PHP.L.Tags}
		</h5>
        <div class="text-center text-md-start">
            {FORUMS_SECTIONS_TAG_CLOUD}
		</div>
	</div>
	<!-- ENDIF -->	  
</div>
<!-- END: MAIN -->