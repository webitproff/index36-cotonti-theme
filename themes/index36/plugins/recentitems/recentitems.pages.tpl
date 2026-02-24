<!--
/********************************************************************************
 * File: recentitems.pages.tpl
 * Extension: plugin 'recentitems'
 * Description: HTML template for recentitems plugin.
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

<div class="py-4">
    <h3 class="mb-4">
        <a href="{PHP|cot_url('index')}" class="text-decoration-none">{PHP.L.Pages}</a>
    </h3>

    <!-- BEGIN: PAGE_ROW -->
    <div class="card mb-3 border shadow-sm {PAGE_ROW_ODDEVEN}">
        <div class="card-body py-3">
            <div class="row g-3 align-items-start">

                <div class="col-auto">
                    <div class="fs-4">
                        {PHP.R.icon_page}
                    </div>
                </div>

                <div class="col">
                    <h5 class="card-title mb-2">
                        <a href="{PAGE_ROW_URL}" class="text-body text-decoration-none">
                            {PAGE_ROW_TITLE}
                        </a>
                    </h5>

                    <!-- IF {PAGE_ROW_DESCRIPTION} -->
                    <p class="text-muted mb-2 small">
                        {PAGE_ROW_DESCRIPTION}
                    </p>
                    <!-- ENDIF -->

                    <div class="text-muted small mb-2">
                        {PAGE_ROW_CAT_PATH}
                    </div>

                    <div class="d-flex flex-wrap gap-4 small">
                        <div>
                            <i class="far fa-calendar me-1"></i>
                            {PAGE_ROW_DATE}
                        </div>
                        <div>
                            <i class="far fa-user me-1"></i>
                            {PAGE_ROW_OWNER}
                        </div>
                        <div>
                            <i class="far fa-eye me-1"></i>
                            {PAGE_ROW_HITS}
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- END: PAGE_ROW -->

    <!-- BEGIN: NO_PAGES_FOUND -->
    <div class="alert alert-info text-center py-5 my-5" role="alert">
        {PHP.L.recentitems_nonewpages}
    </div>
    <!-- END: NO_PAGES_FOUND -->
</div>

<!-- END: MAIN -->