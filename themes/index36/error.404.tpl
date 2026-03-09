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
	* Updated: 09 Marc 2026 
	* Copyright (c) 2026 webitproff | https://github.com/webitproff
	* Source: https://github.com/webitproff/index36-cotonti-theme
	* Demo : https://freelance-script.abuyfile.com/ 
	* Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
	* License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)  
	********************************************************************************/
-->
<!-- BEGIN: MAIN -->
<!DOCTYPE html>
<html lang="{PHP.usr.lang}" data-bs-theme="light">
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
		<link href="themes/index36/css/default.css" type="text/css" rel="stylesheet" />
		<link href="lib/fontawesome/css/all.min.css" type="text/css" rel="stylesheet" />
		<link href="themes/index36/css/header.last.css" type="text/css" rel="stylesheet" />
		
		<script src="js/jquery.min.js"></script>
		<script src="js/jqModal.min.js"></script>
		<script src="js/base.js"></script>
		<script src="js/ajax_on.js"></script>

		<link rel="shortcut icon" href="favicon.ico" />
		<link rel="icon" href="themes/index36/img/icon.webp" type="image/webp">
		<link rel="apple-touch-icon" href="apple-touch-icon.png" />
	</head>
	<body class="sidebar-closed">
		<header class="navbar navbar-expand-lg shadow-sm fixed-top" style="background-color: var(--bs-header-bg);" data-bs-theme="inherit"> 
			<div class="container-fluid px-3 px-lg-4 d-flex align-items-center">
				<a class="navbar-brand me-2" href="{PHP.cfg.mainurl}" title="{PHP.cfg.maintitle}">
					<img width="36" height="36" class="p-0 m-0 rounded-1" src="themes/index36/img/icon.webp" alt="logo" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}">
				</a>
			</div>
		</header>
		
		<aside class="main-sidebar">
			<div class="ps-container"> 
				<div class="d-flex flex-column h-100 align-items-center py-4 gap-4">
					<nav class="nav flex-column gap-3">
						<!-- IF {PHP|cot_module_active('market')} -->
						<a href="{PHP|cot_url('market')}" class="nav-link sidebar-tab active">
							<i class="fa-solid fa-store fa-xl"></i>
						</a>
						<!-- ENDIF -->
					</nav>
				</div>
			</div>
		</aside>
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
						<a class="btn mt-4 text-white fw-medium" style="background: var(--bs-purple);" href="{PHP.cfg.mainurl}">{PHP.L.Home}</a>
					</div>
				</div>
				<div class="position-relative text-center py-5">
					<div class="position-absolute top-0 end-0 d-none d-lg-block pe-4 mt-n4">
						<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/cherry.jpg" class="img-fluid shadow-sm rounded-5" style="max-width:260px" alt="">
					</div>	
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
				</div>
				<h2 class="mt-4 fs-4 fw-medium">{PHP.cfg.maintitle}</h2>	
				<h2 class="mt-4 fs-6 fw-medium">{PHP.cfg.subtitle}</h2>	
			</div>	
		</main>
		<footer class="shadow-sm py-3">
			<div class="container-fluid text-center small">
				© 2026 {PHP.cfg.maintitle}. All rights reserved.
			</div>
		</footer>
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
		

		<script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>

	</body>
</html>
<!-- END: MAIN -->
