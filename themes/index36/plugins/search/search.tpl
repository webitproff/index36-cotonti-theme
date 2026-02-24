<!--
	/********************************************************************************
	* File: search.tpl
	* Extension: plugin 'search'
	* Description: HTML template for the site search plugin, covering articles, news, forums, and comments. Supports filtering by various parameters.
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

<div class="container py-4">
	
    <div class="mb-4">
        <h2 class="mb-3">{PLUGIN_BREADCRUMBS}</h2>
		
        <ul class="nav nav-tabs mb-4 flex-wrap">
            <li class="nav-item">
                <a href="{PHP.sq|cot_url('search','sq=$this')}" 
				class="nav-link <!-- IF {PHP.tab} == '' -->active<!-- ENDIF -->">
                    {PHP.L.plu_tabs_all}
				</a>
			</li>
            <!-- IF {PHP|cot_module_active('page')} -->
            <li class="nav-item">
                <a href="{PHP.sq|cot_url('search','tab=pag&sq=$this')}" 
				class="nav-link <!-- IF {PHP.tab} === 'pag' -->active<!-- ENDIF -->">
                    {PHP.L.Pages}
				</a>
			</li>
            <!-- ENDIF -->
            <!-- IF {PHP|cot_module_active('forums')} -->
            <li class="nav-item">
                <a href="{PHP.sq|cot_url('search','tab=frm&sq=$this')}" 
				class="nav-link <!-- IF {PHP.tab} === 'frm' -->active<!-- ENDIF -->">
                    {PHP.L.Forums}
				</a>
			</li>
            <!-- ENDIF -->
            <!-- IF {PHP|cot_plugin_active('comments')} -->
            <li class="nav-item">
                <a href="{PHP.sq|cot_url('search','tab=com&sq=$this')}" 
				class="nav-link <!-- IF {PHP.tab} === 'com' -->active<!-- ENDIF -->">
                    {PHP.L.comments_comments}
				</a>
			</li>
            <!-- ENDIF -->
		</ul>
	</div>
	
    <div class="card shadow-sm mb-5">
        <div class="card-body">
            <form id="search" name="search" action="{PLUGIN_SEARCH_ACTION}" method="GET">
                <!-- IF {PHP.cfg.plugin.urleditor.preset} !== 'handy' -->
                <input type="hidden" name="e" value="search"/>
                <!-- ENDIF -->
                <!-- IF {PHP.tab} -->
                <input type="hidden" name="tab" value="{PHP.tab}"/>
                <!-- ENDIF -->
				<div class="row">
					<div class="col-6">
						<a href="#searchOptions" class="btn btn-warning btn-sm" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="searchOptions"><i class="fa-solid fa-check-double"></i> {PHP.langSkStr.searchFilters}</a>
					</div>
					<div class="col-6">
						{PHP.L.plu_search_req}:
					</div>
				</div>
				<div class="col-12 mb-5 mt-3">
					<div class="input-group input-group-lg">
						{PLUGIN_SEARCH_TEXT}
						<button type="submit" class="btn btn-primary">
							{PHP.L.plu_search_key}
						</button>
					</div>
				</div>
				<div class="collapse" id="searchOptions">
                    <div class="col-12 mb-3">
						<label class="form-label mb-2">{PHP.L.plu_other_userfilter}:</label>
						<div>
							{PLUGIN_SEARCH_USER}
						</div>
					</div>
					
					
					<div class="row mb-4">
						<div class="col-12">
							<label class="form-label d-block mb-2">{PHP.L.plu_other_date}:</label>
							<div class="row align-items-center mb-4">
								<div class="col-12">
									{PLUGIN_SEARCH_DATE_SELECT|cot_rc_modify($this, 'class="form-control"')}
								</div>
							</div>
							<div class="row">
								<label class="form-label fw-semibold">{PHP.langSkStr.period}:</label>
								<div class="col-12 col-md-6 mb-2">
									{PHP.langSkStr.periodStart}:{PLUGIN_SEARCH_DATE_FROM}
								</div>
								<div class="col-12 col-md-6">
									{PHP.langSkStr.periodEnd}:{PLUGIN_SEARCH_DATE_TO}
								</div>
							</div>
						</div>
					</div>
					
					<!-- BEGIN: PAGES_OPTIONS -->
					<div class="border-top pt-4 mt-4">
						<h4 class="mb-3">{PHP.L.Pages}</h4>
						<div class="row g-4">
							<div class="col-md-6">
								<p class="fw-bold mb-2">{PHP.L.plu_pag_set_sec}:</p>
								{PLUGIN_PAGE_SEC_LIST}
								{PLUGIN_PAGE_SEARCH_SUBCAT}
								<p class="small text-muted mt-2">{PHP.L.search_allCategories}</p>
								
								<p class="fw-bold mb-2 mt-4">{PHP.L.plu_res_sort}:</p>
								{PLUGIN_PAGE_RES_SORT|cot_rc_modify($this, 'class="form-control"')}
								{PLUGIN_PAGE_RES_SORT_WAY}
							</div>
							<div class="col-md-6">
								<p class="fw-bold mb-2">{PHP.L.plu_other_opt}:</p>
								<div class="d-flex flex-column gap-2">
									{PLUGIN_PAGE_SEARCH_NAMES}
									{PLUGIN_PAGE_SEARCH_DESC}
									{PLUGIN_PAGE_SEARCH_TEXT}
									{PLUGIN_PAGE_SEARCH_FILE}
								</div>
							</div>
						</div>
					</div>
					<!-- END: PAGES_OPTIONS -->
					
					<!-- BEGIN: FORUMS_OPTIONS -->
					<div class="border-top pt-4 mt-5">
						<h4 class="mb-3">{PHP.L.Forums}</h4>
						<div class="row g-4">
							<div class="col-md-6">
								<p class="fw-bold mb-2">{PHP.L.plu_frm_set_sec}:</p>
								{PLUGIN_FORUM_SEC_LIST}
								{PLUGIN_FORUM_SEARCH_SUBCAT}
								<p class="small text-muted mt-2">{PHP.L.search_allCategories}</p>
								
								<p class="fw-bold mb-2 mt-4">{PHP.L.plu_res_sort}:</p>
								{PLUGIN_FORUM_RES_SORT|cot_rc_modify($this, 'class="form-control"')}
								{PLUGIN_FORUM_RES_SORT_WAY}
							</div>
							<div class="col-md-6">
								<p class="fw-bold mb-2">{PHP.L.plu_other_opt}:</p>
								<div class="d-flex flex-column gap-2">
									{PLUGIN_FORUM_SEARCH_NAMES}
									{PLUGIN_FORUM_SEARCH_POST}
									{PLUGIN_FORUM_SEARCH_ANSW}
								</div>
							</div>
						</div>
					</div>
					<!-- END: FORUMS_OPTIONS -->
					
					<!-- BEGIN: COMMENTS_OPTIONS -->
					<div class="border-top pt-4 mt-5">
						<h4 class="mb-3">{PHP.L.comments_comments}</h4>
						<div class="row g-4">
							<div class="col-md-6">
								<p class="fw-bold mb-2">{PHP.L.plu_com_set_area}:</p>
								{PLUGIN_COMMENT_SEC_LIST|cot_rc_modify($this, 'class="form-control"')}
								<p class="small text-muted mt-2">{PHP.L.plu_ctrl_list}</p>
							</div>
							<div class="col-md-6">
								<p class="fw-bold mb-2">{PHP.L.plu_res_sort}:</p>
								{PLUGIN_COMMENT_RES_SORT|cot_rc_modify($this, 'class="form-control"')}
								{PLUGIN_COMMENT_RES_SORT_WAY}
							</div>
						</div>
					</div>
					<!-- END: COMMENTS_OPTIONS -->
				</div>
			</form>
		</div>
	</div>
	
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
	
    <!-- BEGIN: RESULTS -->
	
    <!-- BEGIN: PAGES -->
    <div class="card shadow-sm mb-5">
		<div class="card-header" style="background-color: var(--bs-header-bg);">
			<h2 class="h6 mb-0 py-2">
				<i class="fa-solid fa-gear fa-xl"></i> {PHP.L.Pages} — {PHP.L.plu_result}
			</h2>
		</div>
        <div class="list-group list-group-flush">
            <!-- BEGIN: ITEM -->
            <div class="list-group-item {PLUGIN_PR_ODDEVEN} px-4 py-3">
                <div class="mb-2 fs-5 fw-semibold">
                    {PLUGIN_PR_LINK}
				</div>
                <div class="mb-3 text-muted">
                    {PLUGIN_PR_TEXT}
				</div>
                <div class="d-flex justify-content-between small text-muted">
                    <div>{PHP.L.plu_last_date}: <strong>{PLUGIN_PR_TIME}</strong></div>
                    <div>{PHP.L.plu_section}: <strong>{PLUGIN_PR_CATEGORY}</strong></div>
				</div>
			</div>
            <!-- END: ITEM -->
		</div>
	</div>
    <!-- END: PAGES -->
	
    <!-- BEGIN: FORUMS -->
    <div class="card shadow-sm mb-5">
		<div class="card-header" style="background-color: var(--bs-header-bg);">
			<h2 class="h6 mb-0 py-2">
				<i class="fa-solid fa-gear fa-xl"></i> {PHP.L.Forums} — {PHP.L.plu_result}
			</h2>
		</div>
		
        <div class="list-group list-group-flush">
            <!-- BEGIN: ITEM -->
            <div class="list-group-item {PLUGIN_FR_ODDEVEN} px-4 py-3">
                <div class="mb-2 fs-5 fw-semibold">
                    {PLUGIN_FR_LINK}
				</div>
                <!-- IF {PLUGIN_FR_TEXT} -->
                <div class="mb-3 text-muted">
                    {PLUGIN_FR_TEXT}
				</div>
                <!-- ENDIF -->
                <div class="d-flex justify-content-between small text-muted">
                    <div>{PHP.L.plu_last_date}: <strong>{PLUGIN_FR_TIME}</strong></div>
                    
				</div>
				<div class="small">{PHP.L.plu_section}: <strong class="text-wrap">{PLUGIN_FR_CATEGORY}</strong></div>
			</div>
            <!-- END: ITEM -->
		</div>
	</div>
    <!-- END: FORUMS -->
	
    <!-- BEGIN: COMMENTS -->
    <div class="card shadow-sm mb-5">
        <div class="card-header bg-light">
            <h3 class="mb-0">{PHP.L.comments_comments} — {PHP.L.plu_result}</h3>
		</div>
        <div class="list-group list-group-flush">
            <!-- BEGIN: ITEM -->
            <div class="list-group-item {PLUGIN_CM_ODDEVEN} px-4 py-3">
                <div class="mb-2 fs-5 fw-semibold">
                    {PLUGIN_CM_AUTHOR_LINK}
				</div>
                <!-- IF {PLUGIN_CM_TEXT} -->
                <div class="mb-3 text-muted">
                    {PLUGIN_CM_TEXT}
				</div>
                <!-- ENDIF -->
                <div class="d-flex justify-content-between small text-muted">
                    <div>{PHP.L.plu_last_date}: <strong>{PLUGIN_CM_TIME}</strong></div>
                    <div>{PLUGIN_CM_LINK}</div>
				</div>
			</div>
            <!-- END: ITEM -->
		</div>
	</div>
    <!-- END: COMMENTS -->
	
    <!-- END: RESULTS -->
	
    <!-- IF {PAGINATION} -->
    <nav aria-label="Search pagination">
        <ul class="pagination justify-content-center mt-5">
            {PREVIOUS_PAGE}
            {PAGINATION}
            {NEXT_PAGE}
		</ul>
	</nav>
    <!-- ENDIF -->
	
</div>

<!-- END: MAIN -->