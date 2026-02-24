<!--
	/********************************************************************************
	* File: page.list.unvalidated.tpl
	* Extension: Module 'page'
	* Description: HTML template for Pages Module - page.list.unvalidated.tpl.
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
			{LIST_BREADCRUMBS}
		</ol>
	</nav>
</div>
<div class="container py-3">
	<p class="mb-3">{PHP.L.page_validation_desc}</p>	
			{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}	
			<div class="card border-0 shadow-sm">
				<div class="list-group list-group-striped list-group-flush">
					<!-- BEGIN: LIST_ROW -->
					<li class="list-group-item list-group-item-action {LIST_ROW_ODDEVEN}">
						<div class="row g-3">
							<div class="col-12 col-md-8">
								<h5 class="mb-2 fs-6 fw-semibold"><a href="{LIST_ROW_URL}">{LIST_ROW_TITLE}</a></h5>
								<!-- IF {LIST_ROW_DESCRIPTION} -->
								<p class="mb-1 small">{LIST_ROW_DESCRIPTION}</p>
								<!-- ELSE -->
								<p class="mb-1 small">{LIST_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 90, 'UTF-8')} ...</p>
								<!-- ENDIF -->
							</div>
							<div class="col-12 col-md-4 text-center ">
								<div>
									<span class="badge rounded-pill bg-warning bg-opacity-10 text-warning">{LIST_ROW_LOCAL_STATUS}
									</span>
								</div>
								<div>
									{LIST_ROW_ADMIN_EDIT}
								</div>
							</div>
						</div>
						<div class="row g-3">
							<div class="col-12 col-md-6">
								<div class="d-flex align-items-center">
                                    <!-- IF {PHP|cot_plugin_active('userimages')} -->	
                                    <!-- IF {LIST_ROW_OWNER_AVATAR_SRC} -->
                                    <img src="{LIST_ROW_OWNER_AVATAR_SRC}" alt="{LIST_ROW_OWNER_NICKNAME}" class="img-fluid rounded-circle overflow-hidden" width="36" height="36" />
                                    <!-- ELSE -->
                                    <img src="{PHP.R.userimg_default_avatar}" alt="{LIST_ROW_OWNER_NICKNAME}" class="img-fluid rounded-circle overflow-hidden" width="36" height="36" />
                                    <!-- ENDIF -->	
                                    <!-- ENDIF -->
									<span class="mx-2">·</span>
									<span>{LIST_ROW_OWNER_NAME}</span>
								</div>
							</div>
							<div class="col-12 col-md-6 d-flex align-items-center">
								<span class="mx-2"><small>{PHP.L.Date} {LIST_ROW_CREATED_STAMP|cot_date('date_full', $this)}</small></span>
								
								<span class="mx-2"><small>{LIST_ROW_CAT_TITLE} ({LIST_ROW_HITS})</small></span>
							</div>
						</div>
					</li>
					<!-- END: LIST_ROW -->
					
				</div>
				
			</div>
		<!-- IF {PAGINATION} -->
		<nav class="mt-5">
			<ul class="pagination justify-content-center">
				{PREVIOUS_PAGE}
				{PAGINATION}
				{NEXT_PAGE}
			</ul>
		</nav>
		<div class="text-center">
			{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}
		</div>
		<!-- ENDIF -->	
</div>
<!-- END: MAIN -->
