<!--
	/********************************************************************************
	* File: page.add.tpl
	* Extension: Module 'page'
	* Description: HTML template for Pages Module - page.add.tpl.
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
			{PAGEADD_BREADCRUMBS}
		</ol>
	</nav>
</div>
<div class="container py-5">
	{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
	<div class="card shadow-sm mb-4">
		<div class="card-header" style="background-color: var(--bs-header-bg);">
			<h2 class="h6 py-2 mb-0">
				<i class="fa-solid fa-gear fa-xl"></i> {PAGEADD_PAGETITLE}
			</h2>
		</div>	
		<div class="card-body">
			
			<form action="{PAGEADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform" class="row g-4">
				
				<div class="col-12">
					<label class="form-label">{PHP.L.Category}</label>
					{PAGEADD_FORM_CAT}
				</div>
				
				<div class="col-12">
					<label class="form-label">{PHP.L.Title}</label>
					{PAGEADD_FORM_TITLE}
				</div>
				
				<div class="col-12">
					<label class="form-label">{PHP.L.Description}</label>
					{PAGEADD_FORM_DESCRIPTION}
				</div>
				
				<div class="col-12">
					<label class="form-label">{PHP.L.Alias}</label>
					{PAGEADD_FORM_ALIAS}
				</div>
				
				<!-- META -->
				
				<div class="col-12">
					<label class="form-label">{PHP.L.page_metatitle}</label>
					{PAGEADD_FORM_METATITLE}
				</div>
				
				<div class="col-12">
					<label class="form-label">{PHP.L.page_metadesc}</label>
					{PAGEADD_FORM_METADESC}
				</div>
				<div class="col-md-6">
					<label class="form-label">{PHP.L.Begin}</label>
					{PAGEADD_FORM_BEGIN}
				</div>
				<div class="col-md-6">
					<label class="form-label">{PHP.L.Expire}</label>
					{PAGEADD_FORM_EXPIRE}
				</div>
				<!-- TAGS -->
				<!-- IF {PAGEADD_FORM_TAGS} -->
				<div class="col-12">
					<label class="form-label">{PHP.L.Tags}</label>
					{PAGEADD_FORM_TAGS}
				</div>
				<!-- ENDIF -->
				
				<!-- OWNER, BEGIN, EXPIRE, PARSER -->
				<div class="col-md-4">
					<label class="form-label">{PHP.L.Owner}</label>
					<div>{PAGEADD_FORM_OWNER}</div>
				</div>
				<!-- AUTHOR, ALIAS -->
				<div class="col-md-4">
					<label class="form-label">{PHP.L.Author}</label>
					{PAGEADD_FORM_AUTHOR}
				</div>
				<div class="col-md-4">
					<label class="form-label">{PHP.L.Parser}</label>
					{PAGEADD_FORM_PARSER}
				</div>
				
				<!-- PAGE TEXT -->
				<div class="col-12">
					{PAGEADD_FORM_TEXT}
					<!-- IF {PAGEADD_FORM_PFS} -->{PAGEADD_FORM_PFS}<!-- ENDIF -->
					<!-- IF {PAGEADD_FORM_SFS} -->
					<span class="mx-2">{PHP.cfg.separator}</span>
					{PAGEADD_FORM_SFS}
					<!-- ENDIF -->
				</div>
				
				<!-- FILE UPLOAD -->
				<div class="col-md-6">
					<label class="form-label">{PHP.L.page_file}</label>
					{PAGEADD_FORM_FILE}
					<small class="form-text text-muted">{PHP.L.page_filehint}</small>
				</div>
				
				<!-- URL -->
				<div class="col-md-6">
					<label class="form-label">{PHP.L.URL}</label>
					{PAGEADD_FORM_URL}<br>
					<small class="text-muted">{PHP.L.page_urlhint}</small><br>
					{PAGEADD_FORM_URL_PFS} &nbsp; {PAGEADD_FORM_URL_SFS}
				</div>
				
				<!-- FILE SIZE -->
				<div class="col-md-6">
					<label class="form-label">{PHP.L.Filesize}</label>
					{PAGEADD_FORM_SIZE}
					<small class="form-text text-muted">{PHP.L.page_filesizehint}</small>
				</div>
				
				<!-- SUBMIT BUTTONS -->
				<div class="col-12 d-flex gap-2 flex-wrap mt-3">
					<!-- IF {PHP.usr_can_publish} -->
					<button type="submit" name="rpagestate" value="0" class="btn btn-success">{PHP.L.Publish}</button>
					<!-- ENDIF -->
					<button type="submit" name="rpagestate" value="2" class="btn btn-secondary">{PHP.L.Saveasdraft}</button>
					<button type="submit" name="rpagestate" value="1" class="btn btn-primary">{PHP.L.Submitforapproval}</button>
				</div>
				
			</form>
		</div>	
	</div>
	<div class="help mt-3">
		<div class="alert alert-info small">
			{PHP.L.page_formhint}
		</div>
	</div>
	
</div>
<!-- END: MAIN -->
