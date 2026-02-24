<!--
	/********************************************************************************
	* File: page.enum.tpl
	* Extension: Module 'page'
	* Description: HTML template for Pages Module - page.enum.tpl.
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
<div class="container my-4">

  <!-- BEGIN: PAGE_ROW -->
  <div class="card mb-4 shadow-sm">
    <div class="card-body">

      <h3 class="card-title mb-1">
        <!-- IF {PHP.usr.isadmin} -->
        <span class="me-2">[ {PAGE_ROW_ADMIN_EDIT} ]</span>
        <!-- ENDIF -->
        <a href="{PAGE_ROW_URL}" class="text-decoration-none" title="{PAGE_ROW_TITLE}">
          {PAGE_ROW_TITLE}
        </a>
      </h3>

      <!-- IF {PAGE_ROW_DESCRIPTION} -->
      <p class="text-muted small mb-2">{PAGE_ROW_DESCRIPTION}</p>
      <!-- ENDIF -->

      <div class="d-flex flex-wrap justify-content-between align-items-center mb-3 gap-2">

        <!-- BEGIN: PAGE_TAGS -->
        <div class="small">
          <strong>{PHP.L.Tags}:</strong>
          <!-- BEGIN: PAGE_TAGS_ROW -->
          <!-- IF {PAGE_TAGS_ROW_TAG_COUNT} > 0 -->, <!-- ENDIF -->
          <a href="{PAGE_TAGS_ROW_URL}" class="text-decoration-none" rel="nofollow" title="{PAGE_TAGS_ROW_TAG}">
            {PAGE_TAGS_ROW_TAG}
          </a>
          <!-- END: PAGE_TAGS_ROW -->
        </div>
        <!-- END: PAGE_TAGS -->

        <!-- BEGIN: PAGE_NO_TAGS -->
        <div class="small text-muted">
          {PHP.L.tags_Tag_cloud_none}
        </div>
        <!-- END: PAGE_NO_TAGS -->

        <div class="small text-end">
          <strong>{PHP.L.Filedunder}:</strong> {PAGE_ROW_CAT_PATH}
        </div>

      </div>

      <div class="card-text">
        {PAGE_ROW_TEXT_CUT}
        <!-- IF {PAGE_ROW_TEXT_IS_CUT} -->
        <div class="mt-2">
          {PAGE_ROW_MORE}
        </div>
        <!-- ENDIF -->
      </div>

    </div>
  </div>
  <!-- END: PAGE_ROW -->

  <!-- IF {PAGINATION} -->
  <nav class="d-flex justify-content-center">
    <div class="pagination">
      {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
    </div>
  </nav>
  <!-- ENDIF -->

</div>
<!-- END: MAIN -->
