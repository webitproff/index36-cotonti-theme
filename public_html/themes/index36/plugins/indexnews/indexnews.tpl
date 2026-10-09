<!--
	/********************************************************************************
	* File: indexnews.tpl
	* Extension: plugin 'indexnews'
	* Description: HTML template for indexnews plugin.
	* Compatibility: CMF/CMS Cotonti v.1.0.0.[](https://github.com/Cotonti/Cotonti)
	* Dependencies: 
	* 		 Bootstrap 5.3.+[](https://getbootstrap.com/); 
	* 		 Font Awesome Free 7.3[](https://fontawesome.com/)
	* Theme: Index36  
	* Version=2.2.1 
	* Created: 01 Feb 2026 
	* Updated: 09 Oct 2026  
	* Copyright (c) 2026 webitproff | https://github.com/webitproff
	* Source: https://github.com/webitproff/index36-cotonti-theme
	* Demo : https://freelance-script.abuyfile.com 
	* Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
	* License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)  
	********************************************************************************/
-->
<!-- BEGIN: MAIN -->
<div class="row row-cols-1 row-cols-xxl-4 row-cols-lg-3 row-cols-md-2 g-3 g-lg-4">
	<!-- BEGIN: PAGE_ROW -->
	<div class="col">
		<div class="card h-100 border-0 shadow-sm overflow-hidden blog-card">
			<div class="row g-0 flex-lg-row">
				<div class="col-12">
					<a href="{PAGE_ROW_URL}" class="text-decoration-none" title="{PAGE_ROW_TITLE}">
						<!-- IF {PHP|cot_plugin_active('attacher')} -->
						<!-- IF {PAGE_ROW_ID|att_count('page', $this, '', 'images')} > 0 --> 
						{PAGE_ROW_ID|att_display('page',$this,'','attacher.display.listfirst','images',1)}
						<!-- ELSE -->
						<img src="{PHP.R.page_default_image}" class="card-img object-fit-cover" alt="{PAGE_TITLE}">
						<!-- ENDIF -->
						<!-- ELSE -->
						<img src="{PHP.R.page_default_image}" class="card-img object-fit-cover" alt="{PAGE_TITLE}">
						<!-- ENDIF --> 
					</a>
				</div>
				<div class="col-12">
					<div class="card-body d-flex flex-column h-100 p-4">
						<div class="d-flex justify-content-between align-items-center mb-2">
							<span class="badge bg-info-subtle text-info px-2 py-1">{PAGE_ROW_HITS}</span><span class="badge bg-info-subtle text-info px-2 py-1">{PAGE_ROW_CREATED}</span>
							<!-- IF {PHP.usr.isadmin} OR {PHP.usr.id} === {PAGE_ROW_OWNER_ID} -->
							<div class="dropdown">
								<button class="btn btn-outline-warning btn-lg rounded-circle d-flex align-items-center justify-content-center shadow-sm" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="width:32px;height:32px;">
									<i class="fa-solid fa-ellipsis-v"></i>
								</button>
								<ul class="dropdown-menu dropdown-menu-end border shadow-sm p-3" style="min-width:280px;">
									<!-- IF {PAGE_ROW_ADMIN_EDIT} -->
									<li>
										<a class="dropdown-item py-2 px-4" 
										href="{PAGE_ROW_ADMIN_EDIT_URL}">
											{PHP.L.Edit}
										</a>
									</li>
									<!-- ENDIF -->
									<!-- IF {PAGE_ROW_ADMIN_CLONE} -->
									<li>
										<a class="dropdown-item py-2 px-4" 
										href="{PAGE_ROW_ADMIN_CLONE_URL}">
											{PHP.L.page_clone}
										</a>
									</li>
									<!-- ENDIF -->
									<!-- IF {PAGE_ROW_ADMIN_DELETE} -->
									<li>
										<a class="dropdown-item py-2 px-4" 
										href="{PAGE_ROW_ADMIN_DELETE_URL}">
											{PHP.L.Delete}
										</a>
									</li>
									<!-- ENDIF -->
									<!-- IF {PAGE_ROW_ADMIN_UNVALIDATE} -->
									<li>
										<a class="dropdown-item py-2 px-4" 
										href="{PAGE_ROW_ADMIN_UNVALIDATE_URL}">
											{PHP.L.Putinvalidationqueue}
										</a>
									</li>
									<!-- ENDIF -->
								</ul>
							</div>
							<!-- ENDIF -->
						</div>
						<h5 class="card-title fs-6 mb-2">
							<a href="{PAGE_ROW_URL}" class="text-decoration-none" title="{PAGE_ROW_TITLE}">{PAGE_ROW_TITLE}</a>
						</h5>
						<div class="d-none d-xl-block">
							<!-- IF {PAGE_ROW_DESCRIPTION} -->
							<div class="card-text text-muted small flex-grow-1">
								{PAGE_ROW_DESCRIPTION|strip_tags($this)|mb_substr($this,0,120,'UTF-8')}...
							</div>
							<!-- ELSE -->
							<div class="card-text text-muted small flex-grow-1">
								{PAGE_ROW_TEXT_CUT|strip_tags($this)|mb_substr($this,0,120,'UTF-8')}...
							</div>
							<!-- ENDIF -->
						</div>
						<!-- IF {PAGE_ROW_COMMENTS_COUNT} > 0 -->
						<div class="position-absolute top-0 end-0 mt-2 me-2" data-bs-toggle="tooltip" data-bs-title="{PHP.L.2wd_Comments}">
							<span class="badge bg-primary">{PAGE_ROW_COMMENTS_COUNT}</span>
						</div>
						<!-- ENDIF -->								
						<div class="d-flex align-items-center small text-muted mt-3">
							<!-- IF {PHP|cot_plugin_active('userimages')} -->	
							<!-- IF {PAGE_ROW_OWNER_AVATAR_SRC} -->
							<img src="{PAGE_ROW_OWNER_AVATAR_SRC}" alt="{PAGE_ROW_OWNER_NICKNAME}" class="img-fluid rounded-circle overflow-hidden" width="36" height="36" />
							<!-- ELSE -->
							<img src="{PHP.R.userimg_default_avatar}" alt="{PAGE_ROW_OWNER_NICKNAME}" class="img-fluid rounded-circle overflow-hidden" width="36" height="36" />
							<!-- ENDIF -->	
							<!-- ENDIF -->
							<span class="mx-2">·</span>
							<span>{PAGE_ROW_OWNER_NAME}</span>
						</div>
						<div class="mt-3 text-end">
							<a href="{PAGE_ROW_URL}" class="btn btn-sm btn-outline-primary text-uppercase">{PHP.L.ReadMore}</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> 
	<!-- END: PAGE_ROW -->
</div>


<!-- END: MAIN -->



пагинацию, кому нужно, вставить сразу после блока END: PAGE_ROW
<!-- IF {PAGINATION} -->
<nav aria-label="Page Pagination" class="mt-5">
	<ul class="pagination pagination-sm justify-content-center">
		{PREVIOUS_PAGE}
		{PAGINATION}
		{NEXT_PAGE}
	</ul>
</nav>
<div class="text-center">
	{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}
</div>
<!-- ENDIF -->	