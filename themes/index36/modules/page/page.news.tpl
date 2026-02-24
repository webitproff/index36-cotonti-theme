<!--
	/********************************************************************************
	* File: page.news.tpl
	* Extension: Module 'page'
	* Description: HTML template for Pages Module - page.news.tpl.
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
			{PAGE_BREADCRUMBS}
		</ol>
	</nav>
</div>

<div class="container-xl py-4">
	<div class="row">
		<div class="col-12 col-lg-8">
			<!-- BEGIN: PAGE_MULTI -->
			<div class="card border-0 mb-4">
				<div class="card-header">
					{PHP.langSkStr.pageByEachContent}: {PAGE_TITLE}
				</div>
				<div class="card-body">
					{PAGE_MULTI_TABTITLES}
					<div class="mt-2 border-top">
						<nav aria-label="{PHP.langSkStr.pageByEachContent} Page Pagination" class="mt-3">
							<ul class="pagination pagination-sm justify-content-center">
								{PAGE_MULTI_TABNAV}
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<!-- END: PAGE_MULTI -->
			<div class="card border-0 shadow-sm p-3 p-lg-5 mb-5">
				<h1 class="fs-3 fw-bold mb-3">{PAGE_TITLE}</h1>
				<!-- IF {PAGE_DESCRIPTION} -->
				<p class="mb-4">{PAGE_DESCRIPTION}</p>
				<!-- ENDIF -->
				{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
				<div class="row">		
					<div class="col-lg-6 mb-3">	
						<div class="d-flex justify-content-between align-items-start flex-wrap gap-3">
							<div class="d-flex align-items-center gap-3">
								<div class="position-relative">
									<!-- IF {PHP|cot_plugin_active('userimages')} -->	
									<!-- IF {PAGE_OWNER_AVATAR_SRC} -->
									<img src="{PAGE_OWNER_AVATAR_SRC}" alt="{PAGE_OWNER_NICKNAME}" class="img-fluid rounded-circle overflow-hidden" width="52" height="52" />
									<!-- ELSE -->
									<img src="{PHP.R.userimg_default_avatar}" alt="{PAGE_OWNER_NICKNAME}" class="img-fluid rounded-circle overflow-hidden" width="52" height="52" />
									<!-- ENDIF -->	
									<!-- ENDIF -->
								</div>
								<div>
									{PAGE_OWNER_NAME}
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-lg-6 mb-3 d-flex align-items-center justify-content-center justify-content-lg-end">
						<div class="d-flex align-items-center gap-2">
							<!-- IF {PHP.pag_i18n_locales} > 1 -->
							<!-- BEGIN: I18N_LANG -->
							<ul class="list-inline mb-0 me-1"
							data-bs-toggle="tooltip"
							data-bs-title="{PHP.L.Language}"
							title="{PHP.L.Language}"
							>
								<!-- BEGIN: I18N_LANG_ROW -->
								<!-- IF {PHP.i18n_locale} != {I18N_LANG_ROW_CODE} -->
								<li class="list-inline-item">
									<a href="{I18N_LANG_ROW_URL}">
										<!-- IF {I18N_LANG_ROW_CODE|is_file('images/flags/$this.png')} -->
										<img src="images/flags/{I18N_LANG_ROW_CODE}.png" alt="{I18N_LANG_ROW_CODE}" class="me-1" style="width: 16px;" />
										<!-- ENDIF -->
										{I18N_LANG_ROW_TITLE}
									</a>
								</li>
								<!-- ENDIF -->
								<!-- END: I18N_LANG_ROW -->
							</ul>
							<!-- END: I18N_LANG -->
							<!-- ENDIF -->
							
							
							<!-- IF {PHP.usr.isadmin} -->
							<a href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=page')}" type="button"
							title="{PHP.L.Adminpanel}"
							data-bs-toggle="tooltip"
							class="btn btn-outline-secondary rounded-circle p-0 d-flex align-items-center justify-content-center"
							style="width: 3rem; height: 3rem;">
								<i class="fa fa-cog fa-lg"></i>
							</a>
							<!-- ENDIF -->
							
							<!-- IF {PHP.usr.auth_write} -->
							<a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}" type="button"
							title="{PHP.L.page_addtitle}"
							data-bs-toggle="tooltip"
							class="btn btn-outline-secondary rounded-circle p-0 d-flex align-items-center justify-content-center"
							style="width: 3rem; height: 3rem;">
								<i class="fa fa-plus fa-lg"></i>
							</a>
							<!-- ENDIF -->
							
							<!-- BEGIN: PAGE_ADMIN -->
							<div class="dropdown">
								<button class="btn btn-sm btn-outline-secondary rounded-circle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 3rem; height: 3rem;">
									<i class="fas fa-ellipsis-v fa-lg"></i>
								</button>
								<ul class="dropdown-menu dropdown-menu-end border shadow-sm py-2" style="min-width:280px;">
									<!-- IF {PAGE_ADMIN_EDIT} -->
									<li>
										<a class="dropdown-item py-2 px-4" href="{PAGE_ADMIN_EDIT_URL}">
											{PHP.L.Edit}
										</a>
									</li>
									<!-- ENDIF -->
									<li><hr class="dropdown-divider my-1"></li>
									<!-- IF {PAGE_ADMIN_CLONE} -->
									<li>
										<a class="dropdown-item py-2 px-4" href="{PAGE_ADMIN_CLONE_URL}">
											{PHP.L.page_clone}
										</a>
									</li>
									<!-- ENDIF -->
									<!-- IF {PAGE_ADMIN_DELETE} -->
									<li>
										<a class="dropdown-item py-2 px-4" href="{PAGE_ADMIN_DELETE_URL}">
											{PHP.L.Delete}
										</a>
									</li>
									<!-- ENDIF -->
									<!-- IF {PAGE_ADMIN_UNVALIDATE} -->
									<li>
										<a class="dropdown-item py-2 px-4" href="{PAGE_ADMIN_UNVALIDATE_URL}">
											{PHP.L.Putinvalidationqueue}
										</a>
									</li>
									<!-- ENDIF -->
									<!-- IF {PHP|cot_plugin_active('i18n')} -->
									<li><hr class="dropdown-divider my-1"></li>
									<!-- IF {PAGE_I18N_TRANSLATE} -->
									<li>
										<a class="dropdown-item py-2 px-4" href="{PAGE_I18N_TRANSLATE_URL}">
											{PHP.L.i18n_translate}
										</a>
									</li>
									<!-- ENDIF -->
									<!-- IF {I18N_LANG_ROW_CLASS} == "selected" -->
									<li>
										<a class="dropdown-item py-2 px-4"
										href="{PHP|cot_url('plug','e=i18n','?m=page&a=edit&id={PHP.pag.page_id}&l={PHP.i18n_locale}')}">
											{PHP.L.i18n_editing}
										</a>
									</li>
									<!-- ENDIF -->
									<!-- IF {PAGE_I18N_DELETE} -->
									<li>
										<a class="dropdown-item py-2 px-4" href="{PAGE_I18N_DELETE_URL}">
											{PHP.L.i18n_delete}
										</a>
									</li>
									<!-- ENDIF -->
									<!-- ENDIF -->
								</ul>
							</div>
							<!-- END: PAGE_ADMIN -->			
						</div>
					</div>
				</div>
				
				<div class="row text-center mb-5">
					<div class="col-12 col-sm-6 col-lg-3">
						<span class="badge bg-primary-subtle text-info-emphasis px-2 py-1">{PAGE_CREATED}</span>
						<span>·</span>
						<span class="badge rounded bg-success-subtle text-success-emphasis">{PAGE_LOCAL_STATUS}</span>
					</div>
					<div class="col-12 col-sm-6 col-lg-3">
						<span>8 min read</span> <!-- заглушка под время чтения -->
					</div>
					<div class="col-6 col-lg-3">
						<span class="badge bg-primary rounded-pill px-3 py-2 fs-6 shadow" 
						title="{PHP.L.Views}"
						data-bs-toggle="tooltip">
							<i class="fa-solid fa-thumbs-up"></i>
							{PAGE_HITS}
						</span>
					</div>
					<!-- IF {PHP|cot_plugin_active('comments')} -->
					<div class="col-6 col-lg-3">
						<span class="badge bg-primary rounded-pill px-3 py-2 fs-6 shadow" title="{PHP.L.comments_comments}">
							<i class="fa-solid fa-comment-dots"></i>
							{PAGE_COMMENTS_COUNT}
						</span>
					</div>
					<!-- ENDIF -->
				</div>				
				<div class="mb-4">
					<!-- IF {PHP|cot_plugin_active('attacher')} -->
					<!-- IF {PAGE_ID|att_count('page', $this, '', 'images')} > 0 --> 
					{PAGE_ID|att_display('page',$this,'','attacher.display.first','images',1)}
					<!-- ELSE -->
					<img src="{PHP.R.page_default_image}" class="img-fluid rounded" style="height:320px;width:100%;object-fit:cover;" alt="{PAGE_TITLE}">
					<!-- ENDIF -->
					<!-- ELSE -->
					<img src="{PHP.R.page_default_image}" class="img-fluid rounded" style="height:320px;width:100%;object-fit:cover;" alt="{PAGE_TITLE}">
					<!-- ENDIF -->      
				</div>
				<div class="mb-4">
					{PAGE_TEXT}
				</div>	
			</div>		
			<div class="d-flex justify-content-between align-items-center mb-3">
				<span class="small">
					<strong>{PHP.L.Filedunder}:</strong> {PAGE_CAT_PATH}
				</span>
			</div>
			<!-- IF {PHP|cot_plugin_active('tags')} -->
			<div class="mb-4">
				<!-- BEGIN: PAGE_TAGS_ROW -->
				<!-- IF {PHP.tag_i} > 0 --> <!-- ENDIF -->
				<a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow" class="text-decoration-none">
					<i class="fa-solid fa-tag fa-lg"></i> <span class="badge rounded-pill bg-info bg-opacity-10 text-info">{PAGE_TAGS_ROW_TAG}</span>
				</a>
				<!-- END: PAGE_TAGS_ROW -->
				<!-- BEGIN: PAGE_NO_TAGS -->
				<span class="text-muted">{PAGE_NO_TAGS}</span>
				<!-- END: PAGE_NO_TAGS -->
			</div>
			<!-- ENDIF --> 		
			<!-- IF {PHP|cot_plugin_active('comments')} -->
			{PAGE_COMMENTS}
			<!-- ENDIF --> 
		</div>
		
		<!-- SIDEBAR -->
		<div class="col-12 col-lg-4">		
			<div class="position-sticky" style="top: 2rem;">

				<div class="card border-0 shadow-sm mb-5 overflow-hidden">
			    <img src="{PHP.R.page_default_image}" class="card-img-top" style="height:112px; object-fit:cover;" alt="{PAGE_OWNER_NICKNAME}">
					<div class="card-body text-center pt-5 position-relative">
						<!-- IF {PHP|cot_plugin_active('userimages')} -->	
						<!-- IF {PAGE_OWNER_AVATAR_SRC} -->
						<img src="{PAGE_OWNER_AVATAR_SRC}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle border border-4 border-white position-absolute top-0 start-50 translate-middle-x" width="80" height="80" style="margin-top:-40px;">
						<!-- ELSE -->
						<img src="{PHP.R.userimg_default_avatar}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle border border-4 border-white position-absolute top-0 start-50 translate-middle-x" width="80" height="80" style="margin-top:-40px;">
						<!-- ENDIF -->	
						<!-- ENDIF -->
						<!-- IF {PAGE_OWNER_FIRSTNAME} -->
						<h5 class="card-title mb-1"><a href="{PAGE_OWNER_DETAILS_URL}" class="text-decoration-none fw-medium">{PAGE_OWNER_FULL_NAME}</a></h5>
						<!-- ENDIF -->
						<p class="small mb-2"><a href="{PAGE_OWNER_DETAILS_URL}" class="fw-medium">{PAGE_OWNER_NICKNAME}</a></p>
						<p class="card-text small mb-4">
							Professional product designer and amateur cyclist living in New York City, USA.
						</p>
						<div class=" d-flex align-items-center justify-content-center gap-2">
							<button class="btn btn-sm btn-outline-secondary rounded-pill px-4">Follow</button>
							<!-- IF {PHP.usr.id} == 0 -->
							<a data-bs-toggle="modal" data-bs-target="#authModal"
							title="{PHP.langSkStr.usersSendPM}"
							class="btn btn-outline-secondary rounded-circle p-0 d-flex align-items-center justify-content-center"
							style="width: 3rem; height: 3rem;">
								<i class="fa-regular fa-envelope fa-lg"></i>
							</a>
							<!-- ENDIF -->
							<!-- IF {PHP|cot_module_active('pm')} -->
							<!-- IF {PHP.usr.id} AND {PHP.usr.id} !== {PAGE_OWNER_ID} -->
							<a href="{PHP|cot_url('pm', 'm=send&to={PAGE_OWNER_ID}')}" 
							title="{PHP.langSkStr.usersSendPM}"
							class="btn btn-outline-info rounded-circle p-0 d-flex align-items-center justify-content-center"
							style="width:38px;height:38px;">
								<i class="fa-regular fa-envelope fa-lg"></i>
							</a>
							<!-- ENDIF -->
							<!-- ENDIF -->
							<button class="btn btn-sm btn-outline-secondary rounded-circle p-0 d-flex align-items-center justify-content-center" style="width:38px;height:38px;">
								<i class="fa-solid fa-ellipsis-h fa-lg"></i>
							</button>
						</div>
					</div>
				</div>
				
				<div>
					<h6 class="border-bottom pb-2 mb-4 fw-semibold">More from <a href="{PAGE_OWNER_DETAILS_URL}" class="text-decoration-none fw-medium">{PAGE_OWNER_FULL_NAME}</a></h6>
					<div class="card border-0 p-1 mb-4">
						<div class="d-flex gap-3">
							<div class="flex-grow-1">
								<div class="small text-muted">06 Nov</div>
								<a href="#" class="fw-semibold link-warning d-block mt-1">What is Cotonti CMF?</a>
								<div class="d-flex justify-content-between align-items-center mt-2 small text-muted">
									<span>2 min read</span>
									<div class="dropdown">
										<button class="btn btn-sm btn-outline-secondary rounded-circle p-0 border-0 shadow-none" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="width:28px;height:28px;">
											<i class="fas fa-ellipsis-v"></i>
										</button>
										<ul class="dropdown-menu dropdown-menu-end border-0 shadow-lg py-2 bg-white" style="min-width:280px;">
											<li><a class="dropdown-item py-2 px-4" href="#">Action</a></li>
											<li><a class="dropdown-item py-2 px-4" href="#">Another Action</a></li>
											<li><a class="dropdown-item py-2 px-4" href="#">Something else</a></li>
											<li><hr class="dropdown-divider my-1"></li>
											<li><a class="dropdown-item py-2 px-4" href="#">Separated Link</a></li>
										</ul>
									</div>
									<button class="btn btn-outline-danger rounded-circle p-0 d-flex align-items-center justify-content-center" 
									style="width: 2rem; height: 2rem;">
										<i class="fa-regular fa-bookmark"></i>
									</button>
								</div>
							</div>
							<img src="{PHP.R.page_default_image}" alt="" class="rounded" width="96" height="96" style="object-fit:cover;">
						</div>
					</div>
					
					<div class="card bg-transparent border-0 p-1 mb-4">
						<div class="d-flex gap-3">
							<div class="flex-grow-1">
								<div class="small text-muted">06 Nov</div>
								<a href="#" class="fw-medium d-block mt-1">25 Surprising Facts About Cotonti CMF</a>
								<div class="d-flex justify-content-between align-items-center mt-2 small text-muted">
									<span>2 min read</span>
									<div class="dropdown">
										<button class="btn btn-sm btn-outline-secondary rounded-circle p-0 border-0 shadow-none" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="width:28px;height:28px;">
											<i class="fas fa-ellipsis-v"></i>
										</button>
										<ul class="dropdown-menu dropdown-menu-end border shadow-sm py-2 bg-white text-success-emphasis" style="min-width:180px;">
											<li><a class="dropdown-item py-2 px-4" href="#">Action</a></li>
											<li><a class="dropdown-item py-2 px-4" href="#">Another Action</a></li>
											<li><a class="dropdown-item py-2 px-4" href="#">Something else</a></li>
											<li><hr class="dropdown-divider my-1"></li>
											<li><a class="dropdown-item py-2 px-4" href="#">Separated Link</a></li>
										</ul>
									</div>
									<button class="btn btn-sm btn-outline-secondary rounded-circle" style="width:28px;height:28px;">
										<i class="far fa-bookmark"></i>
									</button>
								</div>
							</div>
							<img src="{PHP.R.page_default_image}" alt="" class="rounded" width="96" height="96" style="object-fit:cover;">
						</div>
					</div>
					<div class="card bg-warning-subtle text-warning-emphasis border-2 border-warning p-1 mb-4">
						<div class="d-flex gap-3">
							<div class="flex-grow-1">
								<div class="small">06 Nov</div>
								<a href="#" class="fw-medium d-block mt-1">Cotonti CMF Top System</a>
								<div class="d-flex justify-content-between align-items-center mt-2 small">
									<span>2 min read</span>
									<div class="dropdown">
										<button class="btn btn-sm btn-outline-secondary rounded-circle p-0 border-0 shadow-none" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="width:28px;height:28px;">
											<i class="fas fa-ellipsis-v"></i>
										</button>
										<ul class="dropdown-menu dropdown-menu-end border shadow-sm py-2 bg-info-subtle text-info-emphasis" style="min-width:180px;">
											<li><a class="dropdown-item py-2 px-4" href="#">Action</a></li>
											<li><a class="dropdown-item py-2 px-4" href="#">Another Action</a></li>
											<li><a class="dropdown-item py-2 px-4" href="#">Something else</a></li>
											<li><hr class="dropdown-divider my-1"></li>
											<li><a class="dropdown-item py-2 px-4" href="#">Separated Link</a></li>
										</ul>
									</div>
									<button class="btn btn-sm btn-outline-secondary rounded-circle" style="width:28px;height:28px;">
										<i class="far fa-bookmark"></i>
									</button>
								</div>
							</div>
							<img src="{PHP.R.page_default_image}" alt="" class="rounded" width="96" height="96" style="object-fit:cover;">
						</div>
					</div>
				</div>
			</div>				
		</div>
	</div>
</div>

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "WebPage",
      "url": "{PHP.cfg.mainurl}/{PAGE_URL}",
      "@id": "{PHP.cfg.mainurl}/{PAGE_URL}#webpage",
      "name": "{PAGE_TITLE}",
	   "description": "{PAGE_TEXT|strip_tags($this)|mb_substr($this,0,1999,'UTF-8')|preg_replace('/([\"\\\\])/u','\\$1',$this)|preg_replace('/\\s+/u',' ',$this)}", 
      "headline": "{PAGE_TITLE}",
      "inLanguage": "{PHP.usr.lang}",
      "relatedLink": [
        "{PHP.cfg.mainurl}/{PAGE_CAT_URL}",
        "{PHP.cfg.mainurl}/contact"
      ],
      "isPartOf": {
        "@type": "WebSite",
        "@id": "{PHP.cfg.mainurl}/#website",
        "url": "{PHP.cfg.mainurl}/"
      },
      "breadcrumb": {
        "@id": "{PHP.cfg.mainurl}/{PAGE_URL}#breadcrumb"
      }
    },
    {
      "@type": "BreadcrumbList",
      "@id": "{PHP.cfg.mainurl}/{PAGE_URL}#breadcrumb",
      "itemListElement": [
        {
          "@type": "ListItem",
          "position": 1,
          "name": "{PHP.L.Main}",
          "item": "{PHP.cfg.mainurl}"
        },
        {
          "@type": "ListItem",
          "position": 2,
          "name": "{PAGE_CAT_TITLE}",
          "item": "{PHP.cfg.mainurl}/{PAGE_CAT_URL}"
        },
        {
          "@type": "ListItem",
          "position": 3,
          "name": "{PAGE_TITLE}",
          "item": "{PHP.cfg.mainurl}/{PAGE_URL}"
        }
      ]
    }
  ]
}
</script>
<!-- END: MAIN -->
