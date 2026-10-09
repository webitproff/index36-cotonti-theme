<!--
	/********************************************************************************
	* File: error.403.tpl
	* Extension: Core | function cot_die_message
	* Description: HTML template for error.403.tpl (403 Forbidden).
	* Compatibility: CMF/CMS Cotonti v.1.0.0. (https://github.com/Cotonti/Cotonti)
	* Dependencies:
	* 		 Bootstrap 5.3.+ (https://getbootstrap.com/);
	* 		 Font Awesome Free 7.3 (https://fontawesome.com/)
	* Theme: Index36
	* Version: 2.2.1
	* Created: 01 Feb 2026
	* Updated: 06 Oct 2026
	* Copyright (c) 2026 webitproff | https://github.com/webitproff
	* Source: https://github.com/webitproff/index36-cotonti-theme
	* Demo : https://freelance-script.abuyfile.com
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
		<!-- Запрет индексации служебной страницы поисковиками. -->
		<meta name="robots" content="noindex, follow" />
		<meta name="generator" content="Cotonti CMF {PHP.cfg.version}" />
		<link rel="author" href="https://github.com/Cotonti/Cotonti" />
		<title>{MESSAGE_TITLE}</title>
		{MESSAGE_BASEHREF}
		{MESSAGE_STYLESHEET}
		{MESSAGE_REDIRECT}

		<!-- Синхронный скрипт: выставляет тему до отрисовки, чтобы не было мерцания. -->
		<script>
			(function () {
				var saved = localStorage.getItem('index-mono-theme');
				if (saved === 'light' || saved === 'dark') {
					document.documentElement.setAttribute('data-bs-theme', saved);
				} else if (window.matchMedia && window.matchMedia('(prefers-color-scheme: light)').matches) {
					document.documentElement.setAttribute('data-bs-theme', 'light');
				} else {
					document.documentElement.setAttribute('data-bs-theme', 'dark');
				}
				if (localStorage.getItem('sidebar-hidden') === 'true') {
					document.documentElement.setAttribute('data-sidebar-hidden', '');
				}
			})();
		</script>

		<!-- CSS темы и библиотек. -->
		<link href="lib/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
		<link href="lib/fontawesome/css/all.min.css" type="text/css" rel="stylesheet" />
		<link href="themes/index36/css/default.css" type="text/css" rel="stylesheet" />
		<link href="themes/index36/css/header.last.css" type="text/css" rel="stylesheet" />

		<!-- Базовые скрипты (jQuery, jqModal, base, ajax). -->
		<script src="js/jquery.min.js"></script>
		<script src="js/jqModal.min.js"></script>
		<script src="js/base.js"></script>
		<script src="js/ajax_on.js"></script>

		<!-- Критичный ранний инициализатор темы. -->
		<script src="themes/index36/js/header.first.js"></script>

		<!-- Иконки и фавиконы. -->
		<link rel="shortcut icon" href="favicon.ico" />
		<link rel="icon" href="themes/index36/img/app-logo.svg" type="image/svg+xml">
		<link rel="apple-touch-icon" href="apple-touch-icon.png" />
	</head>
	<body>
		<!-- Шапка: логотип + переключатель темы. -->
		<header class="header">
			<div class="header-left">
				<a class="logo" href="{PHP.cfg.mainurl}" title="{PHP.cfg.maintitle}">
					<img src="{PHP.R.app-logo}" alt="{PHP.cfg.maintitle}" style="max-height:32px;">
					<span>{PHP.cfg.maintitle}</span>
				</a>
			</div>
			<div class="header-actions">
				<button class="btn-icon theme-toggle" id="themeToggle" title="{PHP.L.langSkStr_themeToggle}">
					<i class="fas fa-moon"></i>
				</button>
			</div>
		</header>

		<!-- Основной макет. -->
		<div class="layout">

			<!-- Основной контент. -->
			<main class="main-content">

				<div class="container-xxl py-4">
					<div class="row justify-content-center">
						<div class="d-flex flex-column align-items-center p-4 text-center">
							<p class="pt-3 fs-3 fw-semibold">{MESSAGE_TITLE}</p>
							<p class="pt-2 text-muted">{MESSAGE_BODY}</p>
							<a class="btn btn-lg btn-success" href="{PHP.cfg.mainurl}">
								{PHP.L.langSkStr_BackToHome}
							</a>
						</div>
					</div>

					<div class="position-relative text-center py-5">
						<div class="position-absolute top-0 end-0 d-none d-lg-block pe-4 mt-n4">
							<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/cherry.jpg"
								class="img-fluid shadow-sm rounded-5" style="max-width:260px" alt="">
						</div>

						<h2 class="mt-4 fs-4 fw-medium text-secondary">{PHP.L.langSkStr_indexWeCanHelp}</h2>

						<!-- IF {PHP|cot_plugin_active('search')} -->
						<div class="card mx-auto border-0 shadow-sm rounded-5 p-2 mt-4" style="max-width:420px">
							<form id="search" action="{PHP|cot_url('search')}" method="GET" class="w-100 d-flex">
								<div class="input-group input-group-lg">
									<!-- IF {PHP.cfg.plugin.urleditor.preset} !== 'handy' -->
									<input type="hidden" name="e" value="search" />
									<!-- ENDIF -->
									<input type="text" name="sq" class="rounded-start-5 form-control" placeholder="{PHP.L.Search}..." />
									<button type="submit" class="btn btn-accent rounded-end-5" title="{PHP.L.Search}">
										<i class="fa-solid fa-magnifying-glass"></i>
									</button>
								</div>
							</form>
						</div>
						<!-- ENDIF -->
					</div>
				</div>

			</main>
		</div><!-- /layout -->

		<!-- Футер. -->
		<footer class="footer">
			<div class="row">
				<div class="col-12 col-lg-4 mb-2">
					<small>
						<span class="fw-semibold" style="color: var(--accent);">
							© 2012 - {PHP.sys.now|cot_date('d.m.Y', $this)} <!-- IF {PHP.cfg.maintitle} -->{PHP.cfg.maintitle}<!-- ELSE -->{PHP.cfg.market.marketlist_default_title}<!-- ENDIF -->
						</span>
					</small>
				</div>
				<div class="col-12 col-lg-4">
					<small>
						<a href="https://github.com/Cotonti/Cotonti" target="_blank" class="text-decoration-none"
							data-bs-toggle="tooltip"
							data-bs-title="{PHP.L.langSkStr_footer_cotonti_tooltip}"
							title="{PHP.L.langSkStr_footer_cotonti_tooltip}">
							<span class="me-1">{PHP.L.langSkStr_footer_engine}</span>
							<img src="{PHP.cfg.mainurl}/favicon-32x32.png" width="27" height="27" alt="Cotonti CMF">
							<span class="ms-1">{PHP.L.langSkStr_footer_cotonti} v.{PHP.cfg.version}</span>
						</a>
					</small>
				</div>
				<div class="col-12 col-lg-4">
					<small>
						<a href="https://github.com/webitproff/index36-cotonti-theme/tree/main" target="_blank"
							class="text-decoration-none"
							data-bs-toggle="tooltip"
							data-bs-title="{PHP.L.langSkStr_footer_download_index36_title}"
							title="{PHP.L.langSkStr_footer_download_index36_title}">
							<span>{PHP.L.langSkStr_footer_download_index36}</span>
						</a>
					</small>
				</div>
			</div>
		</footer>

		<!-- Скрипты: Bootstrap, тема, утилиты. -->
		<script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="themes/index36/js/theme.js"></script>
		<script src="themes/index36/js/js.js"></script>
	</body>
</html>
<!-- END: MAIN -->