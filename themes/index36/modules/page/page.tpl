<!--
	/********************************************************************************
	* File: page.tpl
	* Extension: Module 'page'
	* Description: HTML template for Pages Module - page.tpl.
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
<div class="container-xxl py-4">
	<div class="row">
		<div class="col-12 col-lg-8">	
			<h1 class="h3 mb-2">{PAGE_TITLE}</h1>		
			<!-- IF {PAGE_DESCRIPTION} -->
			<p class="text-muted mb-2">{PAGE_DESCRIPTION}</p>
			<!-- ENDIF -->
			{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
			
			<div class="d-flex justify-content-between align-items-center mb-3">
				<!-- IF {PHP|cot_plugin_active('comments')} -->
                <span class="badge bg-primary rounded-pill px-3 py-2 fs-6 d-flex align-items-center gap-2 shadow">
                    <i class="fa-solid fa-comment-dots"></i>
                    {PAGE_COMMENTS_COUNT}
				</span>
				<!-- ENDIF -->
				<span class="badge rounded-pill bg-warning bg-opacity-10 text-warning">{PAGE_LOCAL_STATUS}</span>
				<span class="small">
					<strong>{PHP.L.Filedunder}:</strong> {PAGE_CAT_PATH}
				</span>
			</div>
			<!-- IF {PHP|cot_plugin_active('tags')} -->
			<div class="mb-4">
				<strong>{PHP.L.Tags}:</strong>
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
			
			<article class="card shadow-sm mb-4">
				<div class="card-body">
					<div class="content">
						{PAGE_TEXT}
					</div>
					<!-- BEGIN: PAGE_FILE -->
					<div class="mt-4 p-3 border rounded">		
						<!-- BEGIN: MEMBERSONLY -->
						<p class="fw-bold mb-2">
							<i class="fa-solid fa-lock"></i> {PAGE_TITLE}
						</p>
						<!-- END: MEMBERSONLY -->					
						<!-- BEGIN: DOWNLOAD -->
						<p class="mb-2">
							<i class="fa-solid fa-download"></i>
							{PHP.L.Download}:
							<a href="{PAGE_FILE_URL}" class="fw-bold">{PAGE_TITLE}</a>
						</p>
						<!-- END: DOWNLOAD -->						
						<p class="mb-1">
							{PHP.L.Filesize}: {PAGE_FILE_SIZE}{PHP.L.kb}
						</p>
						<p class="mb-0">
							{PHP.L.Downloaded}: {FILE_DOWNLOADS_TIMES}
						</p>
					</div>
					<!-- END: PAGE_FILE -->
				</div>
			</article>	
			<!-- IF {PHP|cot_plugin_active('comments')} -->
			{PAGE_COMMENTS}
			<!-- ENDIF --> 
		</div>
		
		<!-- SIDEBAR -->
		<div class="col-12 col-lg-4">		
			<!-- BEGIN: PAGE_ADMIN -->
			<div class="card shadow-sm mb-4">
				<div class="card-header" style="background-color: var(--bs-header-bg);">
					<p class="h6 my-2">
						<i class="fa-solid fa-gear fa-xl"></i> {PHP.L.Adminpanel}
					</p>
				</div>
				<ul class="list-group list-group-flush">
					<!-- IF {PHP.usr.isadmin} -->
					<li class="list-group-item">
						<a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
					</li>
					<!-- ENDIF -->
					<li class="list-group-item">
						<a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a>
					</li>
					<li class="list-group-item">{PAGE_ADMIN_UNVALIDATE}</li>
					<li class="list-group-item">{PAGE_ADMIN_EDIT}</li>
					<li class="list-group-item">{PAGE_ADMIN_CLONE}</li>
					<li class="list-group-item">{PAGE_ADMIN_DELETE}</li>
					<!-- IF {PAGE_I18N_TRANSLATE} -->
					<li class="list-group-item">{PAGE_I18N_TRANSLATE}</li>
					<!-- ENDIF -->
					<!-- IF {PAGE_I18N_DELETE} -->
					<li class="list-group-item">{PAGE_I18N_DELETE}</li>
					<!-- ENDIF -->
				</ul>
			</div>
			<!-- END: PAGE_ADMIN -->			
			
			<!-- BEGIN: PAGE_MULTI -->
			<div class="card shadow-sm">
				<div class="card-header">
					<h2 class="h6 mb-0">
						<i class="fa-solid fa-list"></i> {PHP.L.Summary}
					</h2>
				</div>
				<div class="card-body">
					{PAGE_MULTI_TABTITLES}
					<div class="mt-2 border-top">
						<nav aria-label="{PHP.L.Summary} Page Pagination" class="mt-3">
							<ul class="pagination pagination-sm justify-content-center">
								{PAGE_MULTI_TABNAV}
							</ul>
						</nav>
						
					</div>
				</div>
			</div>
			<!-- END: PAGE_MULTI -->	
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
