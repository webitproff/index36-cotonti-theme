<!--
/********************************************************************************
 * File: recentitems.forums.tpl
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
        <a href="{PHP|cot_url('forums')}" class="text-decoration-none">{PHP.L.Forums}</a>
    </h3>

    <!-- BEGIN: TOPICS_ROW -->
    <div class="card mb-3 border shadow-sm {FORUM_ROW_ODDEVEN}">
        <div class="card-body py-3">
            <div class="row g-3 align-items-start">

                <div class="col-auto">
                    <div class="fs-4">
                        {FORUM_ROW_ICON}
                    </div>
                </div>

                <div class="col">
                    <h5 class="card-title mb-1 fs-6">
                        <a href="{FORUM_ROW_URL}" class="text-decoration-none">
                            {FORUM_ROW_TITLE}
                        </a>
                    </h5>

                    <div class="small mb-1">
                        {FORUM_ROW_PATH}
                    </div>

                    <div class="small">
                        <span>{FORUM_ROW_CREATED}</span>
                        <span class="mx-2">{PHP.cfg.separator}</span>
                        <span>{FORUM_ROW_FIRST_POSTER}</span>
                        <!-- IF {FORUM_ROW_PAGES} -->
                        <span class="mx-2">{PHP.cfg.separator}</span>
                        <span>{FORUM_ROW_PAGES}</span>
                        <!-- ENDIF -->
                    </div>
                </div>

                <div class="col-auto col-md text-center text-md-start small">
                    <div>
                        <strong>{FORUM_ROW_UPDATED}</strong>
                        <!-- IF {FORUM_ROW_LAST_POSTER_ID} > 0 -->
                        <span class="mx-2">{PHP.cfg.separator}</span>
                        <span>{FORUM_ROW_LAST_POSTER}</span>
                        <!-- ENDIF -->
                    </div>
                    <div class="text-muted">
                        {FORUM_ROW_TIME_AGO}
                    </div>
                </div>

                <div class="col-auto col-md-1 text-center small">
                    <div><i class="far fa-comment-dots me-1"></i>{FORUM_ROW_POSTS_COUNT}</div>
                </div>

                <div class="col-auto col-md-1 text-center small">
                    <div><i class="far fa-eye me-1"></i>{FORUM_ROW_VIEWS_COUNT}</div>
                </div>

            </div>
        </div>
    </div>
    <!-- END: TOPICS_ROW -->

    <!-- BEGIN: NO_TOPICS_FOUND -->
    <div class="alert alert-info text-center py-5 my-5" role="alert">
        {PHP.L.recentitems_nonewposts}
    </div>
    <!-- END: NO_TOPICS_FOUND -->

</div>

<!-- END: MAIN -->