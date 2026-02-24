<!--
	/********************************************************************************
	* File: error.404.tpl
	* Extension: Core | function cot_die_message
	* Description: HTML template for error.404.tpl.
	* Compatibility: CMF/CMS Cotonti Siena v0.9.26[](https://github.com/Cotonti/Cotonti)
	* Dependencies: 
	* 		 Bootstrap 5.3.+[](https://getbootstrap.com/); 
	* 		 Font Awesome Free 7.1[](https://fontawesome.com/)
	* Theme: Index36  
	* Version: 1.0.2 
	* Created: 01 Feb 2026 
	* Updated: 24 Feb 2026 
	* Copyright (c) 2026 webitproff | https://github.com/webitproff
	* Source: https://github.com/webitproff/index36-cotonti-theme
	* Demo : https://freelance-script.abuyfile.com/ 
	* Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
	* License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)  
	********************************************************************************/
-->
<!-- BEGIN: MAIN -->
<!DOCTYPE html>
<html lang="{PHP.usr.lang}" data-bs-theme="dark">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>{MESSAGE_TITLE}</title>
		{MESSAGE_BASEHREF}
		{MESSAGE_STYLESHEET}
		{MESSAGE_REDIRECT}
		<style>
			#darkModeImage { display: none; }
			
			[data-bs-theme="dark"] #lightModeImage {
			display: none;
			}
			
			[data-bs-theme="dark"] #darkModeImage {
			display: block;
			}
		</style>
		
		<script>
			document.addEventListener('DOMContentLoaded', function () {
				
				function updateTheme() {
					const storedTheme = localStorage.getItem('theme');
					const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
					const theme = storedTheme || (prefersDark ? 'dark' : 'light');
					
					document.documentElement.setAttribute('data-bs-theme', theme);
				}
				
				updateTheme();
				
				window.matchMedia('(prefers-color-scheme: dark)')
				.addEventListener('change', updateTheme);
				
				document.documentElement
				.addEventListener('themeChanged', updateTheme);
				
			});
		</script>
		
		<link href="lib/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
		<link href="themes/index36/assets/perfect-scrollbar/perfect-scrollbar.css" type="text/css" rel="stylesheet" />
		<link href="themes/index36/assets/perfect-scrollbar/styles-perfect-scrollbar.css" type="text/css" rel="stylesheet" />
		<link href="themes/index36/css/default.css" type="text/css" rel="stylesheet" />
		<link href="lib/fontawesome/css/all.min.css" type="text/css" rel="stylesheet" />
		<link href="themes/index36/css/header.last.css" type="text/css" rel="stylesheet" />
		<script src="js/jquery.min.js"></script>
		<script src="js/jqModal.min.js"></script>
		<script src="js/base.js"></script>
		<script src="js/ajax_on.js"></script>
		<script src="themes/index36/js/header.first.js"></script>
		<script src="themes/index36/js/js.js"></script>
		<link href="lib/select2/css/select2.min.css" type="text/css" rel="stylesheet" />
		<link rel="shortcut icon" href="favicon.ico" />
		<link rel="icon" href="themes/index36/img/app-logo.svg" type="image/svg+xml">
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
			
			<div class="container-xxl py-4">
				<div class="row justify-content-center">
					<div class="d-flex flex-column align-items-center p-4 text-center">
						<div class="w-100" style="max-width: 520px;">
							<img class="img-fluid"
							src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/error-404.svg"
							alt="image"
							id="lightModeImage">
							
							<img class="img-fluid"
							src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/penguins-dark.svg"
							alt="image"
							id="darkModeImage">
						</div>
						<p class="pt-3 fs-3 fw-semibold">
							{MESSAGE_TITLE}
						</p>
						<p class="pt-2 text-muted">
							{MESSAGE_BODY}
						</p>
						<a class="btn mt-4 text-white fw-medium" style="background: var(--bs-purple);" href="{PHP.cfg.mainurl}">{PHP.langSkStr.BackToHome}</a>
					</div>
				</div>
				<div class="position-relative text-center py-5">
					<div class="position-absolute top-0 end-0 d-none d-lg-block pe-4 mt-n4">
						<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/cherry.jpg" class="img-fluid shadow-sm rounded-5" style="max-width:260px" alt="">
					</div>
					
					<h2 class="mt-4 fs-4 fw-medium text-secondary">{PHP.langSkStr.indexWeCanHelp}</h2>
					
					<!-- IF {PHP|cot_plugin_active('search')} -->	
					<div class="card mx-auto border-0 shadow-sm rounded-5 p-2 mt-4" style="max-width:420px">
						<form id="search" action="{PHP|cot_url('search')}" method="GET" class="w-100 d-flex">
							<div class="input-group input-group-lg">
								<!-- Hidden input required for URL editor compatibility -->
								<!-- IF {PHP.cfg.plugin.urleditor.preset} !== 'handy' -->
								<input type="hidden" name="e" value="search" />
								<!-- ENDIF -->
								<input type="text" name="sq" class="rounded-start-5 form-control" placeholder="{PHP.L.Search}..." />
								<button type="submit" class="btn btn-primary rounded-end-5 " title="{PHP.L.Search}">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
							</div>
						</form>	
					</div>
					<!-- ENDIF -->
					<div class="mt-3 d-flex flex-wrap justify-content-center align-items-center gap-2">
						<span class="text-muted me-2">{PHP.langSkStr.indexPopularSearched}:</span>
						<span class="badge rounded-pill bg-info bg-opacity-10 text-info">{PHP.langSkStr.blank_temporary_example}</span>
						<span class="badge rounded-pill bg-danger bg-opacity-10 text-danger">Developers</span>
						<span class="badge rounded-pill bg-primary bg-opacity-10 text-primary">Repair</span>
						<span class="badge rounded-pill bg-success bg-opacity-10 text-success">Billing</span>
						<span class="badge rounded-pill bg-warning bg-opacity-10 text-warning">Cotonti</span>
					</div>
				</div>
			</div>	
		</main>
		<footer class="shadow-sm py-3">
			<div class="container-fluid text-center small">
				© 2026 {PHP.cfg.maintitle}. All rights reserved.
			</div>
		</footer>
		<div class="modal fade" id="blank_temporary_example_BodyModalFooter" tabindex="-1" aria-labelledby="blank_temporary_exampleLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="blank_temporary_exampleLabel">{PHP.langSkStr.blank_temporary_example_title}</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						{PHP.langSkStr.blank_temporary_example_desc}
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{PHP.L.Close}</button>
					</div>
				</div>
			</div>
		</div>	
		<!-- back-to-top -->
		<button type="button" data-bs-toggle="tooltip" data-bs-title="back to top" class="btn btn-outline position-fixed bottom-0 end-0 m-3" id="btn-back-to-top" style="z-index: 7999;">
			<i class="fa-solid fa-square-caret-up fa-lg"></i>
		</button>
		<!-- JavaScript -->
		<script>
			let backToTopButton = document.getElementById("btn-back-to-top");
			
			// Скролл наверх при клике
			backToTopButton.addEventListener("click", function() {
				window.scrollTo({ top: 0, behavior: "smooth" });
			});
		</script>	
		<!-- JavaScript -->
		
		<link href="themes/index36/assets/select2/style-select2.css" type="text/css" rel="stylesheet" />
		<script src="modules/market/js/marketTreeScriptURLEditor.js"></script>
		<script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="themes/index36/assets/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="themes/index36/assets/perfect-scrollbar/js-perfect-scrollbar.js"></script>
	</body>
</html>
<!-- END: MAIN -->