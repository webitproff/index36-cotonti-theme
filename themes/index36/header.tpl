<!--
	/********************************************************************************
	* File: header.tpl
	* Extension: Core'
	* Description: HTML template for header.tpl.
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
<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html lang="{PHP.usr.lang}" data-bs-theme="light">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>{HEADER_TITLE}</title>
		<!-- IF {HEADER_META_DESCRIPTION} -->
		<meta name="description" content="{HEADER_META_DESCRIPTION}" />
		<!-- ENDIF -->
		<meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
		<!-- IF {PHP.out.meta} -->
		{PHP.out.meta}
		<!-- ENDIF -->
		<script>
			(function () {
				const storedTheme = localStorage.getItem('theme');
				const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
				const defaultTheme = storedTheme || (prefersDark ? 'dark' : 'light');
				document.documentElement.setAttribute('data-bs-theme', defaultTheme);
			})();
		</script>
		{HEADER_BASEHREF}
		{HEADER_HEAD}
		<link rel="shortcut icon" href="favicon.ico" />
		<link rel="icon" href="{PHP.cfg.themes_dir}/{PHP.theme}/img/app-logo.svg" type="image/svg+xml">
		<link rel="apple-touch-icon" href="apple-touch-icon.png" />
	</head>
	<body class="sidebar-closed">
		<header class="navbar navbar-expand-lg shadow-sm fixed-top" style="background-color: var(--bs-header-bg);" data-bs-theme="inherit"> 
			<div class="container-fluid px-3 px-lg-4 d-flex align-items-center">
				<a class="navbar-brand me-2" href="{PHP.cfg.mainurl}" title="{PHP.cfg.maintitle}">
					<img class="" src="{PHP.R.app-logo}" alt="logo" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}">
				</a>
				<button id="panelToggle" class="btn panel-toggle-btn me-3" style="color: var(--bs-purple);" title="Toggle Sidebar">
					<span id="wave"><i class="fa-solid fa-bars fa-xl"></i></span>
				</button>
				<div class="flex-grow-1"></div>
				<div class="d-flex align-items-center gap-3 ms-auto">
					<!-- BEGIN: I18N_LANG -->
					<div class="btn-group d-none d-md-block">
						<a type="button" class="dropdown-toggle" data-bs-toggle="dropdown">
							<!-- IF {PHP.i18n_locale} == 'ru' -->
							<span class="">
								<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/flags/ru.webp" class="" alt="{PHP.i18n_locale}">
							</span>
							<!-- ENDIF -->
							<!-- IF {PHP.i18n_locale} == 'en' -->
							<span class="">
								<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/flags/en.webp" class="" alt="{PHP.i18n_locale}">
							</span>
							<!-- ENDIF -->
							<!-- IF {PHP.i18n_locale} == 'ua' -->
							<span class="">
								<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/flags/ua.webp" class="" alt="{PHP.i18n_locale}">
							</span>
							<!-- ENDIF -->
						</a>
						<ul class="dropdown-menu dropdown-menu-end">
							<!-- BEGIN: I18N_LANG_ROW -->
							<li><a class="dropdown-item" href="{I18N_LANG_ROW_URL}">
								<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/flags/{I18N_LANG_ROW_FLAG}.webp" class="me-2" alt="{I18N_LANG_ROW_CODE}" width="28" height="28" >
								{I18N_LANG_ROW_TITLE} 
							</a>
							</li>
							<!-- END: I18N_LANG_ROW -->
						</ul>
					</div>
					<!-- END: I18N_LANG -->
					<!-- Right Sidebar Toggle -->
					<button
					type="button"
					class="btn btn-outline-primary rounded-circle p-0 d-flex align-items-center justify-content-center"
					style="width: 2rem; height: 2rem;"
					title="{PHP.langSkStr.blank_temporary_example}" 
					data-bs-toggle="modal" 
					data-bs-target="#blank_temporary_example_BodyModalFooter"
					>
						<svg
						xmlns="http://www.w3.org/2000/svg"
						width="18"
						height="18"
						fill="none"
						viewBox="0 0 24 24"
						stroke="currentColor"
						>
							<path
							stroke-linecap="round"
							stroke-linejoin="round"
							stroke-width="1.5"
							d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6z
							M14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6z
							M4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2z
							M14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z"
							/>
						</svg>
					</button>
					
					<!-- BEGIN: GUEST -->
					<button class="btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#guestOffCanvas" aria-controls="guestOffCanvas" title="{PHP.L.Account}">
						<i class="fa-solid fa-user fa-lg"></i>
					</button>
					<!-- END: GUEST -->
					<!-- BEGIN: USER -->
					<!-- IF {PHP|cot_module_active('pm')} -->
					<div class="position-relative">
						<a class="btn" href="{PHP|cot_url('pm')}">
							<i class="fa-solid fa-envelope-open-text fa-2xl"></i>
							<span class="position-absolute position-start-75 position-top-20 translate-middle badge badge-pm">{PHP.usr.newpm}</span>
						</a>
					</div>
					<!-- ENDIF -->
					
					<button class="btn p-0 text-white" type="button" data-bs-toggle="offcanvas" data-bs-target="#profileRightOffcanvas" aria-controls="profileRightOffcanvas" title="Аккаунт"> 
						<!-- IF {PHP|cot_plugin_active('userimages')} -->
						<!-- IF {PHP.usr.profile.user_avatar} -->
						<img class="rounded-circle me-2 bg-white profile-img" src="{PHP.usr.profile.user_avatar}" alt="{PHP.usr.name}" width="36" height="36" style="object-fit: cover;">
						<!-- ELSE -->
						<img class="rounded-circle me-2 profile-img" src="{PHP.R.userimg_default_avatar}" alt="{PHP.usr.name}" width="36" height="36" style="object-fit: cover;">
						<!-- ENDIF -->
						<!-- ELSE -->
						<img class="rounded-circle me-2 profile-img" src="{PHP.R.userimg_default_avatar}" alt="{PHP.usr.name}" width="36" height="36" style="object-fit: cover;">
						<!-- ENDIF -->
					</button>
					
					<!-- END: USER -->
				</div>
			</div>
		</header>
		
		<aside class="main-sidebar">
			<div class="ps-container"> 
				<div class="d-flex flex-column h-100 align-items-center py-4 gap-4">
					<nav class="nav flex-column gap-3">
						<a href="#" class="nav-link sidebar-tab active" data-tab="pages" title="{PHP.langSkStr.tabPages}">
							<i class="fa-solid fa-pen-nib fa-xl"></i>
						</a>
						<a href="#" class="nav-link sidebar-tab" data-tab="forums"><i class="fa-solid fa-comments fa-xl"></i></a>
						<a href="#" class="nav-link sidebar-tab" data-tab="users"><i class="fa-solid fa-users-gear fa-xl"></i></a>
						<a href="#" class="nav-link sidebar-tab" data-tab="plugins"><i class="fa fa-puzzle-piece fa-xl"></i></a>
						<a href="#" class="nav-link sidebar-tab" data-tab="elements"><i class="fa fa-shapes fa-xl"></i></a>
					</nav>
					<div class="sidebar-footer">
						<a type="button" class="nav-link theme-switcher d-flex align-items-center justify-content-center" onclick="toggleTheme()">
							<i class="theme-icon fa-solid fa-moon fa-xl"></i>
						</a>
					</div>
				</div>
			</div>
		</aside>
		
		<div class="expanded-panels ps-container">
			<div id="panel-pages" class="panel-content">
				<div class="p-4 border-bottom"><h6 class="mb-0 fw-semibold">{PHP.langSkStr.tabPages}</h6></div>
				<div class="flex-grow-1">
					<ul class="nav flex-column">
						<li>
							<a class="nav-link mt-2" href="{PHP|cot_url('search','tab=pag')}" title="{PHP.langSkStr.pageSearch}">
								<i class="fa-solid fa-magnifying-glass"></i> {PHP.langSkStr.pageSearch}
							</a>
						</li>	
						<!-- IF {PHP.structure.page.news} -->
						<!-- IF {PHP.structure.page.news.path} -->
						<li> 
							<a href="{PHP|cot_url('page','c=news')}" class="nav-link" title="{PHP.structure.page.news.title}"> 
								<i class="fa-solid fa-newspaper me-2"></i> 
								{PHP.structure.page.news.title} 
							</a> 
						</li>
						<!-- ENDIF -->
						<!-- ENDIF -->
						<!-- IF {PHP.structure.page.articles} -->
						<!-- IF {PHP.structure.page.articles.path} === 'articles' -->
						<li> 
							<a href="{PHP|cot_url('page','c=articles')}" class="nav-link" title="{PHP.structure.page.articles.title}"> 
								<i class="fa-solid fa-newspaper me-2"></i> 
								{PHP.structure.page.articles.title} 
							</a> 
						</li>
						<!-- ENDIF -->
						<!-- ENDIF -->
						
						<!-- IF {PHP.usr.id} AND {PHP.usr.id|cot_auth('page', 'any', 'W')} -->
						<!-- IF !{PHP.structure.page.unvalidated} -->
						<li><hr></li>
						<li> 
							<a href="{PHP|cot_url('page','c=unvalidated')}" class="nav-link" title="{PHP.L.page_validation}"> 
								<i class="fa-solid fa-edit me-2"></i> {PHP.L.page_validation} 
							<!-- IF {PHP.sys.pagesqueued} > 0 --><span class="badge rounded-pill border border-info text-info">{PHP.sys.pagesqueued}</span><!-- ENDIF --></a>
						</li>
						<!-- ENDIF -->
						<!-- ENDIF -->
						<!-- IF {PHP.usr.id} AND {PHP.usr.id|cot_auth('page', 'a', 'A')} -->
						<li>
							<a class="nav-link d-flex align-items-center" data-bs-toggle="collapse" href="#collapse-sitePages" role="button" aria-expanded="false">
								<i class="fa-solid fa-screwdriver-wrench me-2"></i>
								<span>{PHP.langSkStr.pageAdminModule}</span>
								<i class="fa fa-angle-down ms-auto"></i>
							</a>
							<div class="collapse" id="collapse-sitePages">
								<ul class="nav flex-column ps-3">
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin', 'm=page&filter=all')}" 
										title="{PHP.L.Administration}" 
										data-bs-toggle="tooltip" 
										data-bs-title="{PHP.L.Administration}">
											<i class="fa fa-cog me-2"></i>{PHP.langSkStr.pageModerate}
										</a>
									</li>
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=page')}" 
										title="{PHP.langSkStr.pageStructureCats}" 
										data-bs-toggle="tooltip" 
										data-bs-title="{PHP.langSkStr.pageConfigModuleAdmin}">
											<i class="fa fa-cog me-2"></i>{PHP.langSkStr.pageConfigModule}
										</a>
									</li>
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin', 'm=structure&n=page')}" 
										title="{PHP.langSkStr.pageStructureCatsAdmin}">
											<i class="fa fa-list me-2"></i> {PHP.langSkStr.pageStructureCats}
										</a>
									</li>
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin', 'm=extrafields&n={PHP.db_pages}')}" 
										title="{PHP.langSkStr.pageExtrafieldsAdmin}">
											<i class="fa fa-magic me-2"></i> {PHP.langSkStr.pageExtrafields}
										</a>
									</li>
								</ul>
							</div>
						</li>
						<!-- ENDIF -->
					</ul>
					<hr class="my-2">
					<!-- IF {PHP|function_exists('cot_build_structure_page_tree')} AND {PHP|cot_auth('page', 'any', 'R')} -->
					{PHP|cot_build_structure_page_tree('', '', 0, 'sidebar')}
					<!-- ENDIF -->
				</div>
			</div>
			<!-- IF {PHP|cot_module_active('forums')} -->
			<div id="panel-forums" class="panel-content d-none">
				<div class="p-4 border-bottom"><h6 class="mb-0"><a class="text-decoration-none" href="{PHP|cot_url('forums')}" title="{PHP.L.Main} - {PHP.L.Forums}"><i class="fa fa-home me-2"></i>{PHP.L.Forums}</a></h6></div>
				<div class="flex-grow-1">
					<ul class="nav flex-column">
						<li>
							<a class="nav-link mt-2" href="{PHP|cot_url('search','tab=frm')}" title="{PHP.langSkStr.forumSearch}">
								<i class="fa-solid fa-magnifying-glass"></i> {PHP.langSkStr.forumSearch}
							</a>
						</li>	
						<!-- IF {PHP|cot_plugin_active('forumstats')} -->
						<li>
							<a href="{PHP|cot_url('plug','e=forumstats')}" class=" nav-link text-decoration-none">
								<i class="fa-solid fa-chart-simple me-2"></i>{PHP.L.Statistics}
							</a>
						</li>
						<!-- ENDIF -->
						<!-- IF {PHP.usr.id} AND {PHP.usr.id|cot_auth('forums', 'a', 'A')} -->
						<li>
							<a class="nav-link d-flex align-items-center" data-bs-toggle="collapse" href="#collapse-siteForums" role="button" aria-expanded="false">
								<i class="fa-solid fa-screwdriver-wrench me-2"></i>
								<span>{PHP.langSkStr.forumAdminModule}</span>
								<i class="fa fa-angle-down ms-auto"></i>
							</a>
							<div class="collapse" id="collapse-siteForums">
								<ul class="nav flex-column ps-3">
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin', 'm=forums')}" 
										title="{PHP.langSkStr.forumLastTopics}" 
										data-bs-toggle="tooltip" 
										data-bs-title="{PHP.langSkStr.forumLastTopics}">
											<i class="fa fa-cog me-2"></i>{PHP.langSkStr.forumLastTopics}
										</a>
									</li>
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=forums')}" 
										title="{PHP.langSkStr.forumConfigModuleAdmin}" 
										data-bs-toggle="tooltip" 
										data-bs-title="{PHP.langSkStr.forumConfigModuleAdmin}">
											<i class="fa fa-cog me-2"></i>{PHP.langSkStr.forumConfigModule}
										</a>
									</li>
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin', 'm=structure&n=forums')}" 
										title="{PHP.langSkStr.forumStructureCatsAdmin}">
											<i class="fa fa-list me-2"></i> {PHP.langSkStr.forumStructureCats}
										</a>
									</li>
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin', 'm=extrafields&n={PHP.db_forum_topics}')}" 
										title="{PHP.langSkStr.forumTopicExtrafieldsAdmin}">
											<i class="fa fa-magic me-2"></i> {PHP.langSkStr.forumTopicExtrafields}
										</a>
									</li>
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin', 'm=extrafields&n={PHP.db_forum_posts}')}" 
										title="{PHP.langSkStr.forumPostExtrafieldsAdmin}">
											<i class="fa fa-magic me-2"></i> {PHP.langSkStr.forumPostExtrafields}
										</a>
									</li>
								</ul>
							</div>
						</li>
						<!-- ENDIF -->
					</ul>
				</div>
			</div>
			<!-- ENDIF -->
			<!-- IF {PHP|cot_module_active('users')} -->
			<div id="panel-users" class="panel-content d-none">
				<div class="p-4 border-bottom"><h6 class="mb-0"><a class="text-decoration-none" href="{PHP|cot_url('users')}" title="{PHP.L.Main} - {PHP.L.Users}"><i class="fa fa-home me-2"></i>{PHP.L.Users}</a></h6></div>
				<div class="flex-grow-1">
					<ul class="nav flex-column">
						<li>
							<a class="nav-link mt-2" href="{PHP.cot_groups.4.alias|cot_url('users', 'group=$this')}">
								<span class="me-2">
									<i class="fa-solid fa-users-gear"></i>
								</span>{PHP.cot_groups.4.name} 
							</a>
						</li>
						<!-- IF {PHP.cot_groups.7} -->
						<li>
							<a class="nav-link" href="{PHP.cot_groups.7.alias|cot_url('users', 'group=$this')}">
								<span class="me-2">
									<i class="fa-solid fa-users-between-lines"></i>
								</span>{PHP.cot_groups.7.name} 
							</a>
						</li>
						<!-- ENDIF -->
						<!-- IF {PHP.usr.id} AND {PHP.usr.id|cot_auth('users', 'a', 'A')} -->
						<li>
							<a class="nav-link d-flex align-items-center" data-bs-toggle="collapse" href="#collapse-siteUsers" role="button" aria-expanded="false">
								<i class="fa-solid fa-screwdriver-wrench me-2"></i>
								<span>{PHP.langSkStr.userAdminModule}</span>
								<i class="fa fa-angle-down ms-auto"></i>
							</a>
							<div class="collapse" id="collapse-siteUsers">
								<ul class="nav flex-column ps-3">
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin', 'm=users')}" 
										title="{PHP.langSkStr.userGrpRights}" 
										data-bs-toggle="tooltip" 
										data-bs-title="{PHP.langSkStr.userGrpRights}">
											<i class="fa fa-cog me-2"></i>{PHP.langSkStr.userGrpRights}
										</a>
									</li>
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=users')}" 
										title="{PHP.langSkStr.userConfigModule}" 
										data-bs-toggle="tooltip" 
										data-bs-title="{PHP.langSkStr.userConfigModuleAdmin}">
											<i class="fa fa-cog me-2"></i>{PHP.langSkStr.userConfigModule}
										</a>
									</li>
									<li>
										<a class="nav-link" href="{PHP|cot_url('admin', 'm=extrafields&n={PHP.db_users}')}" 
										title="{PHP.langSkStr.userExtrafieldsAdmin}">
											<i class="fa fa-magic me-2"></i> {PHP.langSkStr.userExtrafields}
										</a>
									</li>
								</ul>
							</div>
						</li>
						<!-- ENDIF -->
					</ul>
				</div>
			</div>
			<!-- ENDIF -->
			<div id="panel-plugins" class="panel-content d-none">
				<div class="p-4 border-bottom"><h6 class="mb-0">{PHP.langSkStr.tabPlgTolls}</h6></div>
				<div class="flex-grow-1">
					<ul class="nav flex-column small">
						<!-- IF {PHP|cot_plugin_active('whosonline')} -->
						<li class="mt-2">
							<a href="{PHP|cot_url('whosonline')}" class="nav-link" title="{PHP.L.WhosOnline}">
								<span class="me-2">
									<i class="fa-solid fa-users-rectangle"></i>
								</span> {PHP.L.WhosOnline}
							</a>
						</li>
						<!-- ENDIF -->
						<!-- IF {PHP|cot_plugin_active('statistics')} -->
						<li>
							<a href="{PHP|cot_url('statistics')}" class="nav-link" title="{PHP.L.Statistics}">
								<span class="me-2">
									<i class="fa-solid fa-chart-bar"></i>
								</span> {PHP.L.Statistics}
							</a>
						</li>
						<!-- ENDIF -->
						<!-- IF {PHP|cot_plugin_active('contact')} -->
						<li>
							<a class="nav-link" href="{PHP|cot_url('contact')}">
								<span class="me-2">
									<i class="fa-solid fa-house-flag me-1"></i>
								</span>{PHP.L.contact_contactUs}
							</a>
						</li>
						<!-- ENDIF -->
						<!-- IF {PHP|cot_module_active('polls')} --> 
						<li> 
							<a href="{PHP|cot_url('polls')}" class="nav-link" title="{PHP.L.Polls}"> 
								<i class="fa-solid fa-list-check me-2"></i> {PHP.L.Polls}
							</a>
						</li>
						<!-- ENDIF --> 
					</ul>
				</div>
			</div>
			
			<div id="panel-elements" class="panel-content d-none">
				<div class="p-3 border-bottom"><h6 class="mb-0">{PHP.langSkStr.blank_temporary_example_title}</h6></div>
				<div class="flex-grow-1 p-2">
					<ul class="nav flex-column small">
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
					
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
					
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
					
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
					
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
					
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
					
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
					
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
					
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
						<li>
							<a class="nav-link" href="#">{PHP.langSkStr.blank_temporary_example_title}</a>
						</li>
					
					</ul>
				</div>
				<div class="d-flex align-items-center my-2">
					<hr class="flex-grow-1">
					<span class="px-2"><i class="fa-solid fa-info-circle fa-2xl text-info"></i></span>
					<hr class="flex-grow-1">
				</div>
				<div class="p-2">
					<small>{PHP.langSkStr.blank_temporary_example_desc}</small>
				</div>
			</div>
		</div>
		
		<main>
			<!-- END: HEADER -->
				