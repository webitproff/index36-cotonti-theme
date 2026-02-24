<!--
	/********************************************************************************
	* File: indexnews.tpl
	* Extension: plugin 'indexnews'
	* Description: HTML template for indexnews plugin.
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

<!-- BEGIN: PAGE_ROW -->
<div class="card mb-3 border-0 shadow-sm rounded-4">
	<div class="card-body position-relative">
		
		<!-- IF {PHP|cot_plugin_active('comments')} -->
		<div class="position-absolute bottom-0 end-0 mb-2 me-2">
			<span class="badge bg-primary rounded-pill px-3 py-2 fs-6 d-flex align-items-center gap-2 shadow">
				<i class="fa-solid fa-comment-dots"></i>
				{PAGE_ROW_COMMENTS_COUNT}
			</span>
		</div>
		<!-- ENDIF -->
		<h3 class="h5 mb-3 pe-5 pe-md-0">
			<a href="{PAGE_ROW_URL}" class="text-decoration-none">
				{PAGE_ROW_TITLE}
			</a>
		</h3>
		
		<div class="d-flex flex-column flex-md-row justify-content-between mb-2 small">
			<!-- IF {PHP|cot_plugin_active('tags')} -->
			<div>
				<strong>{PHP.L.Tags}:</strong>
				<!-- BEGIN: PAGE_TAGS -->
				<!-- BEGIN: PAGE_TAGS_ROW -->
				<!-- IF {PAGE_TAGS_ROW_TAG_COUNT} > 0 -->  <!-- ENDIF -->
				<a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow" class="text-decoration-none">
					<span class="badge rounded-pill bg-info bg-opacity-10 text-info">{PAGE_TAGS_ROW_TAG}</span>
				</a>
				<!-- END: PAGE_TAGS_ROW -->
				<!-- END: PAGE_TAGS -->
				
				<!-- BEGIN: PAGE_NO_TAGS -->
				{PHP.L.tags_Tag_cloud_none}
				<!-- END: PAGE_NO_TAGS -->
			</div>
			<!-- ENDIF -->
			
			<div class="text-md-end">
			<!-- IF {PHP.usr.isadmin} -->
			<span class="me-3 small">[ {PAGE_ROW_ADMIN_EDIT} ]</span>
			<!-- ENDIF -->
				<strong>{PHP.L.Filedunder}:</strong>
				<span class="text-decoration-none">{PAGE_ROW_CAT_PATH}</span>
			</div>
		</div>
		
		<div class="page-text">
            <!-- IF {PAGE_ROW_DESCRIPTION} -->
            <p class="mb-1">
                {PAGE_ROW_DESCRIPTION}
			</p>
            <!-- ELSE -->
			{PAGE_ROW_TEXT_CUT|strip_tags($this)}
			<!-- IF {PAGE_ROW_TEXT_IS_CUT} -->
			<div class="mt-1">
				{PAGE_ROW_MORE}
			</div>
			<!-- ENDIF -->
			<!-- ENDIF -->
		</div>
		
	</div>
</div>
<!-- END: PAGE_ROW -->

<!-- IF {PAGINATION} -->
<div class="col-12">
  <nav aria-label="Page Pagination" class="mt-3">
    <div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div>
    <ul class="pagination pagination-sm justify-content-center">
      {PAGINATION}
    </ul>
  </nav>
</div>
<!-- ENDIF -->

<!-- END: MAIN -->