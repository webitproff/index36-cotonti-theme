<!--
	/********************************************************************************
	* File: page.list.usersblog.tpl
	* Extension: Module 'page'
	* Description: HTML template for Pages Module - page.list.usersblog.tpl.
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
	<div class="row gap-2">	
		<!-- IF {PHP|cot_plugin_active('search')} -->
		<div class="col-lg-4">	
			<div class="card mx-auto border-0 shadow-sm rounded-5 p-2" style="max-width:420px">
				<form action="{PHP|cot_url('search','tab=pag&sq=$this')}" method="GET" id="search" name="search" class="w-100 d-flex">
					<div class="input-group input-group-lg">
						<input type="hidden" name="e" value="search" />
						<input type="hidden" name="tab" value="pag" />
						<input type="hidden" name="l" value="{PHP.lang}" />
						<input type="text" name="sq" class="rounded-start-5 form-control" placeholder="{PHP.L.Search}..." />
						<button type="submit" class="btn btn-primary rounded-end-5 " title="{PHP.L.Search}">
							<i class="fa-solid fa-magnifying-glass"></i>
						</button>
					</div>
				</form>	
			</div>
		</div>	
		<!-- ENDIF -->	
		<!-- IF {PHP|cot_plugin_active('tags')} -->
		<div class="col-lg-7 d-flex align-items-center justify-content-center">
			<div class="flex-grow-1">
				{LIST_TAG_CLOUD}
			</div>				
		</div>
		<!-- ENDIF -->
	</div>
</div>

<div class="container-xl py-5">
	<div class="row g-4">	
		<div class="col-lg-8">
			<!-- IF {LIST_CAT_TITLE} -->
			<div class="d-flex align-items-center gap-2">
				<h2 class="h4 fw-semibold mb-3">{LIST_CAT_TITLE}</h2>
			</div>
			<!-- ENDIF -->
			<!-- IF {LIST_CAT_DESCRIPTION} -->
			<p>{LIST_CAT_DESCRIPTION}</p>
			<!-- ENDIF -->			
		</div>	
		<div class="col-lg-4">		
			<div class="d-flex align-items-center justify-content-between py-3 py-lg-4">
				<!-- IF {PHP.usr.maingrp} == 5 -->
				<a href="{PHP|cot_url('admin', 'm=structure&n=page')}" type="button" 
				title="{PHP.langSkStr.pageStructureCats}" 
				data-bs-toggle="tooltip" 
				data-bs-title="{PHP.langSkStr.pageStructureCatsAdmin}" 
				class="btn btn-outline-secondary rounded-circle p-0 d-flex align-items-center justify-content-center" 
				style="width: 3rem; height: 3rem;">
					<i class="fa fa-list"></i>
				</a>
				<a href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=page')}" type="button" 
				title="{PHP.langSkStr.pageConfigModule}" 
				data-bs-toggle="tooltip" 
				data-bs-title="{PHP.langSkStr.pageConfigModuleAdmin}" 
				class="btn btn-outline-secondary rounded-circle p-0 d-flex align-items-center justify-content-center" 
				style="width: 3rem; height: 3rem;">
					<i class="fa fa-cog fa-lg"></i>
				</a>
				<!-- ENDIF -->
				<!-- IF {LIST_SUBMIT_NEW_PAGE_URL} -->
				<a href="{LIST_SUBMIT_NEW_PAGE_URL}" type="button" 
				title="{PHP.L.Submitnew}" 
				data-bs-toggle="tooltip" 
				data-bs-title="{PHP.L.Submitnew}" 
				class="btn btn-outline-secondary rounded-circle p-0 d-flex align-items-center justify-content-center" 
				style="width: 3rem; height: 3rem;">
					<i class="fa fa-plus fa-lg"></i>
				</a>
				<!-- ENDIF -->
				<!-- IF {PHP|cot_plugin_active('contact')} -->
				<a href="{PHP|cot_url('contact')}" type="button" 
				title="{PHP.L.contact_contactUs}"
				data-bs-toggle="tooltip" 
				data-bs-title="{PHP.L.contact_contactUs}" 
				class="btn btn-outline-secondary btn-lg rounded-circle d-flex align-items-center justify-content-center" 
				style="width: 3rem; height: 3rem;" 
				>
					<i class="fa-solid fa-house-flag fa-lg"></i>
				</a>
				<!-- ENDIF -->
				<a type="button" 
				title="{PHP.langSkStr.pageListIconHelp}" 
				data-bs-toggle="modal" 
				data-bs-target="#PageListIconsHelp"
				class="btn btn-outline-secondary btn-lg rounded-circle d-flex align-items-center justify-content-center" 
				style="width: 3rem; height: 3rem;" 
				>
					<i class="fa-solid fa-circle-info fa-lg"></i>
				</a>
				<!-- IF {PHP.usr.auth_write} -->
				<!-- IF !{PHP.structure.page.unvalidated.path} -->
				<a href="{PHP|cot_url('page', 'c=unvalidated')}" type="button"
				title="{PHP.L.page_validation}" 
				data-bs-toggle="tooltip" data-bs-title="{PHP.L.page_validation}"
				class="btn btn-outline-secondary btn-lg rounded-circle d-flex align-items-center justify-content-center" 
				style="width: 3rem; height: 3rem;" 
				>
					<i class="fa-solid fa-edit fa-lg"></i>
				</a>
				<!-- ENDIF -->
				<!-- ENDIF -->
			</div>			
		</div>
	</div>
	<div class="mt-5">	
		{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}		
		<!-- IF {LIST_CAT_ROW_COUNT} -->
		<div class="d-flex align-items-center my-4">
			<hr class="flex-grow-1">
			<span class="px-2 small text-uppercase">{PHP.L.Categories}</span>
			<hr class="flex-grow-1">
		</div>
		<!-- ENDIF -->
		<!-- BEGIN: LIST_CAT_ROW -->
		<div class="card mb-3 border-0 shadow-sm">
			<div class="card-body py-3">
				<h5 class="mb-1">
					<a href="{LIST_CAT_ROW_URL}" title="{LIST_CAT_ROW_TITLE}">{LIST_CAT_ROW_TITLE}</a>
					<span class="badge bg-secondary ms-2 align-middle">{LIST_CAT_ROW_COUNT}</span>
				</h5>
				<!-- IF {LIST_CAT_ROW_DESCRIPTION} -->
				<div class="text-muted small mt-1">{LIST_CAT_ROW_DESCRIPTION}</div>
				<!-- ENDIF -->
			</div>
		</div>
		<!-- END: LIST_CAT_ROW -->
		
		<!-- IF {LIST_CAT_PAGINATION} -->
		<nav class="my-4">
			<ul class="pagination pagination-sm justify-content-center">
				{LIST_CAT_PREVIOUS_PAGE}
				{LIST_CAT_PAGINATION}
				{LIST_CAT_NEXT_PAGE}
			</ul>
		</nav>
		<div class="text-center">
			{PHP.L.Page} {LIST_CAT_CURRENT_PAGE} {PHP.L.Of} {LIST_CAT_TOTAL_PAGES}
		</div>
		<!-- ENDIF -->
		<!-- IF {TOTAL_PAGES} > 0 -->
		<div class="d-flex align-items-center my-4">
			<hr class="flex-grow-1">
			<span class="px-2 small text-uppercase">{PHP.L.Pages}</span>
			<hr class="flex-grow-1">
		</div>
		<!-- ENDIF -->
		<div class="row row-cols-1 row-cols-xxl-4 row-cols-lg-3 row-cols-md-2 g-3 g-lg-4">
			<!-- BEGIN: LIST_ROW -->
			<div class="col">
				<div class="card h-100 border-0 shadow-sm overflow-hidden blog-card">
					<div class="row g-0 flex-lg-row">
						<div class="col-12">
							<div class="ratio ratio-4x3 ratio-lg-1x1 image-container">
								<!-- IF {PHP|cot_plugin_active('attacher')} -->
								<!-- IF {LIST_ROW_ID|att_count('page', $this, '', 'images')} > 0 --> 
								{LIST_ROW_ID|att_display('page',$this,'','attacher.display.listfirst','images',1)}
								<!-- ELSE -->
								<img src="{PHP.R.page_default_image}" class="card-img object-fit-cover" alt="{PAGE_TITLE}">
								<!-- ENDIF -->
								<!-- ELSE -->
								<img src="{PHP.R.page_default_image}" class="card-img object-fit-cover" alt="{PAGE_TITLE}">
								<!-- ENDIF --> 
								
							</div>
						</div>
						<div class="col-12">
							<div class="card-body d-flex flex-column h-100 p-4">
								<div class="d-flex justify-content-between align-items-center mb-2">
									<span class="badge bg-info-subtle text-info px-2 py-1">{LIST_ROW_HITS}</span><span class="badge bg-info-subtle text-info px-2 py-1">{LIST_ROW_CREATED}</span>
									<!-- IF {PHP.usr.isadmin} OR {PHP.usr.id} === {LIST_ROW_OWNER_ID} -->
									<div class="dropdown">
										<button class="btn btn-outline-warning btn-lg rounded-circle d-flex align-items-center justify-content-center shadow-sm" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="width:32px;height:32px;">
											<i class="fa-solid fa-ellipsis-v"></i>
										</button>
										<ul class="dropdown-menu dropdown-menu-end border shadow-sm py-2" style="min-width:280px;">
											<!-- IF {LIST_ROW_ADMIN_EDIT} -->
											<li>
												<a class="dropdown-item py-2 px-4" 
													href="{LIST_ROW_ADMIN_EDIT_URL}">
													{PHP.L.Edit}
												</a>
											</li>
											<!-- ENDIF -->
											<!-- IF {LIST_ROW_ADMIN_CLONE} -->
											<li>
												<a class="dropdown-item py-2 px-4" 
													href="{LIST_ROW_ADMIN_CLONE_URL}">
													{PHP.L.page_clone}
												</a>
											</li>
											<!-- ENDIF -->
											<!-- IF {LIST_ROW_ADMIN_DELETE} -->
											<li>
												<a class="dropdown-item py-2 px-4" 
													href="{LIST_ROW_ADMIN_DELETE_URL}">
													{PHP.L.Delete}
												</a>
											</li>
											<!-- ENDIF -->
											<!-- IF {LIST_ROW_ADMIN_UNVALIDATE} -->
											<li>
												<a class="dropdown-item py-2 px-4" 
													href="{LIST_ROW_ADMIN_UNVALIDATE_URL}">
													{PHP.L.Putinvalidationqueue}
												</a>
											</li>
											<!-- ENDIF -->
										</ul>
									</div>
									<!-- ENDIF -->
								</div>
								<h5 class="card-title fs-6 mb-2">
									<a href="{LIST_ROW_URL}" class="text-decoration-none">{LIST_ROW_TITLE}</a>
								</h5>
								<div class="d-none d-xl-block">
								<!-- IF {LIST_ROW_DESCRIPTION} -->
								<div class="card-text text-muted small flex-grow-1">
									{LIST_ROW_DESCRIPTION|strip_tags($this)|mb_substr($this,0,120,'UTF-8')}...
								</div>
								<!-- ELSE -->
								<div class="card-text text-muted small flex-grow-1">
									{LIST_ROW_TEXT_CUT|strip_tags($this)|mb_substr($this,0,120,'UTF-8')}...
								</div>
								<!-- ENDIF -->
								</div>
								<!-- IF {LIST_ROW_COMMENTS_COUNT} > 0 -->
								<div class="position-absolute top-0 end-0 mt-2 me-2" data-bs-toggle="tooltip" data-bs-title="{PHP.L.2wd_Comments}">
									<span class="badge bg-primary">{LIST_ROW_COMMENTS_COUNT}</span>
								</div>
								<!-- ENDIF -->								
								<div class="d-flex align-items-center small text-muted mt-3">
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
								<div class="mt-3 text-end">
									<a href="{LIST_ROW_URL}" class="btn btn-sm btn-outline-primary text-uppercase">{PHP.L.ReadMore}</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div> 
			<!-- END: LIST_ROW -->
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
</div>	  

<div class="modal fade" id="PageListIconsHelp" tabindex="-1" aria-labelledby="PageListIconsHelpLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="PageListIconsHelpLabel">{PHP.langSkStr.pageListIconHelp}</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				{PHP.langSkStr.pageListIconHelpContent}
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{PHP.L.Close}</button>
			</div>
		</div>
	</div>
</div>	
<!-- END: MAIN -->
