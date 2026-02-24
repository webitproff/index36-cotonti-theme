<!--
	/********************************************************************************
	* File: tags.tpl
	* Extension: Plugin 'tags'
	* Description: HTML template for tags plugin.
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
		<ol class="breadcrumb mb-0">
			{TAGS_BREADCRUMBS}
		</ol>
	</nav>
</div>

<div class="px-3 d-flex flex-column justify-content-center pb-5">
	<div class="row">
		<div class="col-12 col-md-8 mx-auto">
			<div class="card border-0 shadow-sm mt-4 mb-4">
				<div class="card-header" style="background-color: var(--bs-sidebar-bg)">
					<h2 class="h5 mb-0">{TAGS_TITLE}</h2>
				</div>
				<div class="card-body">
					<form id="tags-search-form" action="{TAGS_FORM_ACTION}" method="GET" class="mb-3">
						{TAGS_FORM_PARAMS}
						<div class="input-group">
							<input type="text" name="t" value="{TAGS_QUERY}" class="form-control" placeholder="{PHP.L.Search}" />
							<button type="submit" class="btn btn-primary">{PHP.L.Search}</button>
						</div>
						<div class="mt-2">{TAGS_FORM_ORDER}</div>
					</form>
					
					<!-- IF {PHP|count({PHP.tagAreas})} > 1 -->
					<p class="mb-3">
						<a href="{PHP.urlParams.t|cot_url('tags', 't=$this')}"<!-- IF {PHP.area} === 'all' --> class="active btn btn-outline-primary mx-2"<!-- ENDIF -->>{PHP.L.tags_All}</a>
						<!-- FOR {AREA}, {TITLE} IN {PHP.tagAreas} -->
						<a href="{PHP.urlParams.t|cot_url('tags','a={AREA}&t=$this')}"<!-- IF {PHP.area} === {AREA} --> class="active btn btn-outline-primary mx-2"<!-- ENDIF -->>{PHP|htmlspecialchars({TITLE})}</a>
						<!-- ENDFOR -->
					</p>
					<!-- ENDIF -->
					
					
					<!-- BEGIN: TAGS_RESULT -->
					<div class="p-3 mb-2 <!-- IF {TAGS_RESULT_ROW_ITEM_TYPE} == 'page' -->bg-info bg-opacity-10 text-info <!-- ELSE--> bg-primary-subtle bg-opacity-10 text-primary-emphasis <!-- ENDIF -->border-bottom">{TAGS_RESULT_TITLE}</div>
					<div class="list-group list-group-striped list-group-flush">
						<!-- BEGIN: TAGS_RESULT_ROW -->
						<li class="list-group-item list-group-item-action">
							<a class="fw-semibold text-primary-emphasis text-decoration-none" href="{TAGS_RESULT_ROW_URL}">{TAGS_RESULT_ROW_TITLE}</a>
							<div class="d-flex align-items-center my-0">
								<hr class="flex-grow-1">
								<span class="px-2 small text-uppercase">
									{PHP.L.Tags}
								</span>
								<hr class="flex-grow-1">
							</div>
							
							<div class="fs-6 bg-info bg-opacity-10 text-info mb-2"> {TAGS_RESULT_ROW_TAGS}</div>
							<div class="small text-muted">{PHP.L.Sections}: {TAGS_RESULT_ROW_PATH}</div>
							<!-- IF {TAGS_RESULT_ROW_PREVIEW} -->
							<p class="mt-1 small">{TAGS_RESULT_ROW_PREVIEW|strip_tags($this)|mb_substr($this, 0, 120, 'UTF-8')} ...</p>
							<!-- ENDIF -->
						</li>
						<!-- END: TAGS_RESULT_ROW -->
					</div>
					<!-- BEGIN: TAGS_RESULT_NONE -->
					<div class="alert alert-warning" role="alert">
						{PHP.L.Noitemsfound}
					</div>
					<!-- END: TAGS_RESULT_NONE -->
					<!-- END: TAGS_RESULT -->
					
					<!-- IF {PAGINATION} -->
					<nav aria-label="Pagination" class="mt-3">
						<ul class="pagination justify-content-center">
							{PREVIOUS_PAGE}
							{PAGINATION}
							{NEXT_PAGE}
						</ul>
					</nav>
					<!-- ENDIF -->
				</div>
			</div>
		</div>
		
		<div class="col-12 col-md-4 mx-auto">
			
			<!-- BEGIN: TAGS_CLOUD -->
			<div class="card border-0 rounded-5 shadow-sm p-3 mt-4 mb-4">
				{TAGS_CLOUD_BODY}
			</div>	
			
			
			<!-- END: TAGS_CLOUD -->
			
			<div class="card border-0 shadow-sm mt-4 mb-4">
				<div class="card-header" style="background-color: var(--bs-sidebar-bg)">
					<h2 class="h5 mb-0">{PHP.L.Tags}</h2>
				</div>
				<div class="card-body">
					{TAGS_HINT}
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->