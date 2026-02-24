<!--
/********************************************************************************
 * File: recentitems.tpl
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
<div class="container-xl py-4 py-md-5">


            <h2 class="h3 mb-0 fw-bold text-center text-md-start">
                <i class="fa-solid fa-clock-rotate-left me-3"></i>{PHP.L.recentitems_new}
            </h2>




            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}

            <div class="d-flex flex-wrap gap-2 gap-md-3 mb-5 justify-content-center justify-content-md-start">
                <span class="align-self-center small fw-semibold me-2">{PHP.L.recentitems_shownew}:</span>

                <!-- IF {PHP.days} == 0 -->
                <a href="{PHP.modeUrl|cot_url('recentitems', $this)}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-primary text-white">
                    {PHP.L.Today}
                </a>
                <!-- ELSE -->
                <a href="{PHP.modeUrl|cot_url('recentitems', $this)}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-light text-dark border">
                    {PHP.L.Today}
                </a>
                <!-- ENDIF -->

                <!-- IF {PHP.usr.id} > 0 -->
                <!-- IF {PHP.days} == -1 -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=-1&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-primary text-white">
                    {PHP.L.recentitems_fromlastvisit}
                </a>
                <!-- ELSE -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=-1&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-light text-dark border">
                    {PHP.L.recentitems_fromlastvisit}
                </a>
                <!-- ENDIF -->
                <!-- ENDIF -->

                <!-- IF {PHP.days} == 1 -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=1&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-primary text-white">
                    {PHP.L.recentitems_1day}
                </a>
                <!-- ELSE -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=1&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-light text-dark border">
                    {PHP.L.recentitems_1day}
                </a>
                <!-- ENDIF -->

                <!-- IF {PHP.days} == 2 -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=2&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-primary text-white">
                    {PHP.L.recentitems_2days}
                </a>
                <!-- ELSE -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=2&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-light text-dark border">
                    {PHP.L.recentitems_2days}
                </a>
                <!-- ENDIF -->

                <!-- IF {PHP.days} == 3 -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=3&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-primary text-white">
                    {PHP.L.recentitems_3days}
                </a>
                <!-- ELSE -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=3&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-light text-dark border">
                    {PHP.L.recentitems_3days}
                </a>
                <!-- ENDIF -->

                <!-- IF {PHP.days} == '1w' -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=1w&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-primary text-white">
                    {PHP.L.recentitems_1week}
                </a>
                <!-- ELSE -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=1w&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-light text-dark border">
                    {PHP.L.recentitems_1week}
                </a>
                <!-- ENDIF -->

                <!-- IF {PHP.days} == '2w' -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=2w&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-primary text-white">
                    {PHP.L.recentitems_2weeks}
                </a>
                <!-- ELSE -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=2w&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-light text-dark border">
                    {PHP.L.recentitems_2weeks}
                </a>
                <!-- ENDIF -->

                <!-- IF {PHP.days} == '1m' -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=1m&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-primary text-white">
                    {PHP.L.recentitems_1month}
                </a>
                <!-- ELSE -->
                <a href="{PHP.modeUrl|cot_url('recentitems','days=1m&$this')}" rel="nofollow" 
                   class="badge rounded-pill px-3 py-2 fw-medium text-decoration-none bg-light text-dark border">
                    {PHP.L.recentitems_1month}
                </a>
                <!-- ENDIF -->
            </div>

            <div class="d-flex flex-wrap gap-2 gap-md-3 mb-5 justify-content-center justify-content-md-start">
                <span class="align-self-center small fw-semibold me-2">{PHP.L.Show}:</span>

                <!-- IF {PHP.mode} == '' -->
                <a href="{PHP.daysUrl|cot_url('recentitems', $this)}" rel="nofollow" 
                   class="badge rounded-pill px-4 py-2 fw-medium text-decoration-none bg-primary text-white">
                    {PHP.L.All}
                </a>
                <!-- ELSE -->
                <a href="{PHP.daysUrl|cot_url('recentitems', $this)}" rel="nofollow" 
                   class="badge rounded-pill px-4 py-2 fw-medium text-decoration-none bg-light text-dark border">
                    {PHP.L.All}
                </a>
                <!-- ENDIF -->

                <!-- IF {PHP.mode} == 'pages' -->
                <a href="{PHP.daysUrl|cot_url('recentitems','$this&mode=pages')}" rel="nofollow" 
                   class="badge rounded-pill px-4 py-2 fw-medium text-decoration-none bg-primary text-white">
                    {PHP.L.Pages}
                </a>
                <!-- ELSE -->
                <a href="{PHP.daysUrl|cot_url('recentitems','$this&mode=pages')}" rel="nofollow" 
                   class="badge rounded-pill px-4 py-2 fw-medium text-decoration-none bg-light text-dark border">
                    {PHP.L.Pages}
                </a>
                <!-- ENDIF -->

                <!-- IF {PHP.mode} == 'forums' -->
                <a href="{PHP.daysUrl|cot_url('recentitems','$this&mode=forums')}" rel="nofollow" 
                   class="badge rounded-pill px-4 py-2 fw-medium text-decoration-none bg-primary text-white">
                    {PHP.L.Forums}
                </a>
                <!-- ELSE -->
                <a href="{PHP.daysUrl|cot_url('recentitems','$this&mode=forums')}" rel="nofollow" 
                   class="badge rounded-pill px-4 py-2 fw-medium text-decoration-none bg-light text-dark border">
                    {PHP.L.Forums}
                </a>
                <!-- ENDIF -->
            </div>

            {RECENT_PAGES}
            {RECENT_FORUMS}

            <!-- IF {PAGINATION} -->
            <nav aria-label="Pagination" class="mt-5">
                <ul class="pagination pagination-lg justify-content-center">
                    {PREVIOUS_PAGE}
                    {PAGINATION}
                    {NEXT_PAGE}
                </ul>
            </nav>
            <!-- ENDIF -->


</div>
<!-- END: MAIN -->