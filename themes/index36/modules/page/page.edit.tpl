
<!--
	/********************************************************************************
	* File: page.edit.tpl
	* Extension: Module 'page'
	* Description: HTML template for Pages Module - page.edit.tpl.
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
			{PAGEEDIT_BREADCRUMBS}
		</ol>
	</nav>
</div>
<div class="container-xxl py-4">
    <h2 class="mb-4"><span class="fw-bold">ID# {PAGEEDIT_FORM_ID}</span> {PAGEEDIT_PAGETITLE} </h2>	
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<div class="alert alert-info shadow small mb-5">
		<button type="button" class="btn btn-lg position-absolute top-0 end-0 m-2" data-bs-dismiss="alert"
		aria-label="Close"><i class="fa fa-circle-xmark fa-lg fa-fw"></i></button>
		<h4>{PHP.langSkStr.pageFormNoticeTitle}</h4>
		<div class="alert-body">
			{PHP.langSkStr.pageFormNoticeContent}
		</div>
	</div>
	<form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
		<div class="row align-items-start mb-4">
			<div class="col-xl-4">
				<div class="d-flex align-items-center mb-1">
					<div class="me-2">
						<span class="fw-semibold">{PHP.L.Status}</span>
					</div>
					<div class="rounded bg-warning text-dark me-1 px-1">
						{PAGEEDIT_FORM_LOCAL_STATUS}
					</div>
				</div>				
			</div>
			<div class="col-xl-8">
				<div class="row align-items-center">
					<div class="col-xl-4">
						<!-- IF {PHP.usr_can_publish} -->
						<button type="submit" class="btn btn-success w-100 mb-1" name="rpagestate"
						value="0">{PHP.L.Publish}</button>
						<!-- ENDIF -->
					</div>
					<div class="col-xl-4">
						<button type="submit" class="btn btn-warning w-100 mb-1" name="rpagestate"
						value="1">{PHP.L.Submitforapproval}</button>
					</div>
					<div class="col-xl-4">
						<button type="submit" class="btn btn-secondary w-100 mb-1" name="rpagestate"
						value="2">{PHP.L.Saveasdraft}</button>
					</div>
				</div>
			</div>
		</div>
		<div class="row gx-4">
			<div class="col-xl-7 order-2 order-sm-2 order-lg-1">
				<div class="card mb-4">
					<div class="card-header bg-none fw-bold">
						{PHP.langSkStr.pageInformation}
					</div>
					<div class="card-body">
						<div class="mb-3">
							<label class="form-label">{PHP.L.Title} <span class="text-danger">*</span></label>
							{PAGEEDIT_FORM_TITLE}
						</div>
						<div class="mb-3">
							<label class="form-label">{PHP.langSkStr.pageDescriptionShort} <span
							class="text-danger">*</span></label>
							{PAGEEDIT_FORM_DESCRIPTION}
						</div>
						<div class="mb-3">
							<label class="form-label">{PHP.langSkStr.pageDescriptionFullContent} <span class="text-danger">*</span></label>
							{PAGEEDIT_FORM_TEXT}
						</div>
					</div>
				</div>
				<!-- IF {PHP|cot_module_active('pfs')} -->
				<div class="card mb-4">
					<div class="card-header d-flex align-items-center bg-none fw-bold">
						{PHP.langSkStr.pageFiles}
					</div>
					<div class="card-body">
						<div class="col-12">
							<label for="pageText" class="form-label fw-semibold">{PHP.L.PFS} <code>(PFS)</code></label>
							<div class="d-flex align-items-center mb-1">
								<div class="me-2">
									<!-- IF {PAGEEDIT_FORM_PFS} -->
									{PAGEEDIT_FORM_PFS}
									<!-- ENDIF -->
								</div>
								<div class="me-1 px-1">
									<!-- IF {PAGEEDIT_FORM_SFS} -->
									{PAGEEDIT_FORM_SFS}
									<!-- ENDIF -->
								</div>
							</div>
							<small class="form-text text-muted">{PHP.L.PFS_hint}</small>
						</div>
					</div>
				</div>				
				<div class="accordion" id="accordionExample">
					<div class="accordion-item card mb-4">
						<h5 class="accordion-header" id="headingOne">
							<button class="accordion-button" type="button" data-bs-toggle="collapse"
							data-bs-target="#pageFilePFS">
								{PHP.langSkStr.pageLocalFileByURL}
							</button>
						</h5>
						<div id="pageFilePFS" class="accordion-collapse collapse"
						data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<div class="col-12">
									<label for="pageFile" class="form-label fw-semibold">{PHP.L.page_file}</label>
									<div class="input-group has-validation"> {PAGEEDIT_FORM_FILE} </div>
									<small class="form-text text-muted">{PHP.L.page_filehint}</small>
								</div>
								<div class="col-12">
									<label for="pageUrl" class="form-label fw-semibold">{PHP.L.URL}</label>
									<div class="input-group has-validation"> {PAGEEDIT_FORM_URL} </div>
									<div class="mt-2"> {PAGEEDIT_FORM_URL_PFS}   {PAGEEDIT_FORM_URL_SFS} </div>
									<small class="form-text text-muted">{PHP.L.page_urlhint}</small>
								</div>
								<div class="col-12">
									<label for="pageSize"
									class="form-label fw-semibold">{PHP.L.page_filesize}</label>
									<div class="input-group has-validation"> {PAGEEDIT_FORM_SIZE} </div>
									<small class="form-text text-muted">{PHP.L.page_filesizehint}</small>
								</div>
								<div class="col-12">
									<label for="pageDownloads"
									class="form-label fw-semibold">{PHP.L.page_filehitcount}</label>
									<div class="input-group has-validation"> {PAGEEDIT_FORM_FILE_DOWNLOADS} </div>
									<small class="form-text text-muted">{PHP.L.page_filehitcounthint}</small>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {PHP|cot_plugin_active('attacher')} -->
				<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->
				<div class="card mb-4">
					<div class="card-header">
						<h4 class="fs-6 mb-0">{PHP.L.att_add_pict_files} <code>(attacher)</code></h4>
					</div>
					<div class="card-body">
						{PAGEEDIT_FORM_ID|att_filebox('page', $this)}
					</div>
				</div>
				<!-- ENDIF -->
				<!-- ENDIF -->
			</div>
			<div class="col-xl-5 order-2 order-sm-2 order-lg-2">
				<div class="card mb-4">
					<div class="card-header bg-none fw-bold d-flex align-items-center">
						<div class="flex-1">
							<div>{PHP.langSkStr.pageKeyControlPoints}</div>
						</div>
					</div>
					<div class="card-body">
						<div class="mb-3">
							<div class="d-flex align-items-center mb-1">
								<div class="me-2">
									<span class="fw-bold">{PHP.L.page_deletepage}:</span>
								</div>
								<div class="me-1 px-1">
									{PAGEEDIT_FORM_DELETE}
								</div>
							</div>
						</div>
						<hr>
						<div class="mb-3">
							<label class="form-label mb-2"><span class="me-3"><i class="fa-solid fa-folder-tree"></i></span><span
							class="fw-bold">{PHP.L.Category}</span></label>
							{PAGEEDIT_FORM_CAT}
						</div>
						
						<hr>
						<!-- IF {PHP|cot_plugin_active('multicat')} -->
						<div class="mb-3">
							<label for="multicat" class="form-label fw-semibold"><span class="me-3"><i class="fa-solid fa-folder-tree"></i></span>{PHP.L.multicat_cats}</label>
							<div class="text-warning"><small>{PAGEFORM_CAT_HINT}</small></div>
							<div class="input-group has-validation" id="multicat"> 
							{PAGEFORM_CAT} </div>
						</div>
						<hr>
						<!-- ENDIF -->	
						<div class="mb-3">
							<label class="form-label">{PHP.L.Parser}</label>
							{PAGEEDIT_FORM_PARSER}
						</div>
					</div>
				</div>
				<div class="accordion mb-4" id="accordionPageSeoMeta">
					<div class="accordion-item card mb-4">
						<h5 class="accordion-header" id="headingOne">
							<button class="accordion-button" type="button" data-bs-toggle="collapse"
							data-bs-target="#pageSeoMeta">
								{PHP.langSkStr.pageSeoMeta}
							</button>
						</h5>
						<div id="pageSeoMeta" class="accordion-collapse collapse"
						data-bs-parent="#accordionPageSeoMeta">
							<div class="accordion-body">
								<div class="mb-3">
									<label class="form-label">{PHP.L.page_metatitle}</label>
									{PAGEEDIT_FORM_METATITLE}
								</div>
								<div class="mb-3">
									<label class="form-label">{PHP.L.page_metadesc}</label>
									{PAGEEDIT_FORM_METADESC}
								</div>
								<div class="mb-3">
									<label class="form-label">{PHP.L.Alias}</label>
									{PAGEEDIT_FORM_ALIAS}
								</div>
							</div>
						</div>
					</div>
				</div>				
				<!-- IF {PAGEEDIT_FORM_TAGS} -->
				<div class="card mb-4">
					<div class="card-header bg-none fw-bold d-flex align-items-center">
						<div class="flex-1">
							<div>{PHP.L.Tags}</div>
						</div>
					</div>
					<div class="card-body">
						{PAGEEDIT_FORM_TAGS}
					</div>
				</div>
				<!-- ENDIF -->
				<div class="accordion mb-4" id="accordionPageDateTerms">
					<div class="accordion-item card mb-4">
						<h5 class="accordion-header" id="headingTwo">
							<button class="accordion-button" type="button" data-bs-toggle="collapse"
							data-bs-target="#pageDateTerms">
								{PHP.langSkStr.pageDateTerms}
							</button>
						</h5>
						<div id="pageDateTerms" class="accordion-collapse collapse"
						data-bs-parent="#accordionPageDateTerms">
							<div class="accordion-body">
								<div class="mb-3">
									<label class="form-label">{PHP.L.Date} {PHP.langSkStr.pageDateCreated}</label>
									{PAGEEDIT_FORM_DATE|cot_selectbox_date(
									'{PHP.pag.page_date}',
									'short',
									'rpagedate',
									'{PHP.R.page_years_max_range_threshold}',
									'{PHP.R.page_years_min_range_threshold}',
									false,
									false)}
								</div>
								<div class="mb-3">
									<label class="form-label">{PHP.L.Begin}</label>
									{PAGEEDIT_FORM_BEGIN}
								</div>
								<div class="mb-3">
									<label class="form-label">{PHP.L.Expire}</label>
									{PAGEEDIT_FORM_EXPIRE|cot_selectbox_date(
									'{PHP.pag.page_expire}',
									'full',
									'rpageexpire',
									'{PHP.R.page_years_max_range_threshold}',
									'{PHP.R.page_years_min_range_threshold}',
									false,
									false)}
								</div>
								<div class="mb-3">
									<div class="d-flex align-items-center bg-none fw-bold">
										<span>{PAGEEDIT_FORM_DATENOW}</span>
										<span>{PHP.L.page_date_now}</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="accordion mb-4" id="accordionPageAnotherData">
					<div class="accordion-item card mb-4">
						<h5 class="accordion-header" id="headingOne">
							<button class="accordion-button" type="button" data-bs-toggle="collapse"
							data-bs-target="#pageAnotherData">
								{PHP.langSkStr.pageAnotherData}
							</button>
						</h5>
						<div id="pageAnotherData" class="accordion-collapse collapse"
						data-bs-parent="#accordionPageAnotherData">
							<div class="accordion-body">
								<div class="mb-3">
									<label class="form-label">{PHP.L.Author}</label>
									{PAGEEDIT_FORM_AUTHOR}
								</div>
								<!-- BEGIN: ADMIN -->
								<div class="mb-3">
									<label class="form-label">{PHP.L.Owner}</label>
									{PAGEEDIT_FORM_OWNER_ID}
								</div>
								<div class="mb-3">
									<label class="form-label">{PHP.L.Hits}</label>
									{PAGEEDIT_FORM_HITS}
								</div>
								<!-- END: ADMIN -->
							</div>
						</div>
					</div>
				</div>	
			</div>
		</div>
	</form>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const collapses = document.querySelectorAll('.accordion-collapse');
		
        function toggleAccordions() {
            collapses.forEach(collapseEl => {
                if (window.innerWidth >= 768) {
                    // Развернуть на больших экранах
                    if (!collapseEl.classList.contains('show')) {
                        collapseEl.classList.add('show');
					}
					} else {
                    // Свернуть на маленьких
                    collapseEl.classList.remove('show');
				}
			});
		}
		
        toggleAccordions();
        window.addEventListener('resize', toggleAccordions);
	});
</script>

<!-- END: MAIN -->