<!--
	/********************************************************************************
	* File: header.tpl
	* Extension: Core'
	* Description: HTML template for header.tpl.
	* Compatibility: CMF/CMS Cotonti v.1.0.0. (https://github.com/Cotonti/Cotonti)
	* Dependencies:
	* 		 Bootstrap 5.3.+ (https://getbootstrap.com/);
	* 		 Font Awesome Free 7.3 (https://fontawesome.com/)
	* Theme: Index36
	* Version: 2.0.1
	* Created: 01 Feb 2026
	* Updated: 29 Sep 2026
	* Copyright (c) 2026 webitproff | https://github.com/webitproff
	* Source: https://github.com/webitproff/index36-cotonti-theme
	* Page in Marcetplace : https://abuyfile.com/ru/market/cotonti/themes/index36
	* YouTube : https://www.youtube.com/watch?v=FKt5SQu4890
	* Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
	* License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)
	********************************************************************************/
-->
<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<!-- IF {HTML_LANG} -->
<html lang="{HTML_LANG}" data-bs-theme="dark">
	<!-- ELSE -->
	<html lang="{PHP.usr.lang}" data-bs-theme="dark">
		<!-- ENDIF -->
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
			<title>{HEADER_TITLE}</title>
			<!-- IF {HEADER_META_DESCRIPTION} -->
			<meta name="description" content="{HEADER_META_DESCRIPTION}" />
			<!-- ENDIF -->
			<!-- IF {HEADER_BASEHREF} -->{HEADER_BASEHREF}<!-- ENDIF -->
			<!-- IF {HEADER_CANONICAL_URL} -->
			<link rel="canonical" href="{HEADER_CANONICAL_URL}" />
			<!-- ENDIF -->
			<!-- IF {ALTERNATE_TAGS} -->{ALTERNATE_TAGS}<!-- ENDIF -->
			<link rel="icon" href="favicon.webp" type="image/svg+xml">
			<link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
			<link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
			<link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
			<link rel="shortcut icon" href="favicon.ico" />
			<link rel="manifest" href="site.webmanifest">
			<!-- IF {PHP.out.meta} -->{PHP.out.meta}<!-- ENDIF -->
			
			<!-- Синхронный скрипт против мерцания темы и сайдбара -->
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
			{HEADER_HEAD}
		</head>
		<body data-ext="{PHP.env.ext}">
			<!-- Шапка -->
			<header class="header">
				<div class="header-left">
					<button class="hamburger" id="hamburgerBtn" title="alt"><i class="fas fa-bars"></i></button>
					<a class="logo" href="{PHP.cfg.mainurl}" title="{PHP.cfg.maintitle}">
						<img src="{PHP.R.app-logo}" alt="alt" style="max-height:32px;">
						<span>{PHP.cfg.maintitle}</span>
					</a>
				</div>
				
				<nav class="d-none d-lg-flex">
					<ul class="nav-menu">
						<!-- Главная: активна при ext == index -->
						<li<!-- IF {PHP.env.ext} == 'index' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('index')}">{PHP.L.Home}</a></li>
						<!-- IF {PHP|cot_module_active('page')} -->
						<!-- Страницы: активна при ext == page -->
						<li<!-- IF {PHP.env.ext} == 'page' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('page','c=news')}" title="{PHP.L.News}">{PHP.L.News}</a></li>
						<!-- ENDIF -->
						<!-- IF {PHP|cot_module_active('forums')} -->
						<!-- Форумы: активна при ext == forums -->
						<li<!-- IF {PHP.env.ext} == 'forums' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('forums')}" title="{PHP.L.Forums}">{PHP.L.Forums}</a></li>
						<!-- ENDIF -->
						<!-- IF {PHP|cot_module_active('users')} -->
						<!-- Пользователи: активна при ext == users -->
						<li<!-- IF {PHP.env.ext} == 'users' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('users')}" title="{PHP.L.Users}">{PHP.L.Users}</a></li>
						<!-- ENDIF -->
						<!-- IF {PHP|cot_plugin_active('contact')} -->
						<!-- Контакты: активна при ext == contact -->
						<li<!-- IF {PHP.env.ext} == 'contact' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('contact')}">{PHP.L.contact_contactUs}</a></li>
						<!-- ENDIF -->

						<!-- Кнопка «Ещё»: открывает мега-меню под шапкой -->
						<li class="nav-more-item">
							<button type="button"
									class="nav-more-btn"
									id="navMoreBtn"
									aria-expanded="false"
									aria-controls="megaMenu">
								«Ещё» <i class="fas fa-ellipsis-h"></i>
							</button>
						</li>
					</ul>
				</nav>

				<!--
					Мега-меню, раскрываемое кнопкой «Ещё».
					Позиционируется абсолютно под шапкой.
					Содержимое — разделы, к которым нужен быстрый доступ.
					Все ссылки-заглушки (#) замени на реальные.
				-->
				<div class="mega-menu" id="megaMenu">
					<div class="mega-menu-inner">

						<!-- Левая часть: список разделов -->
						<div class="mega-menu-grid">
							<div class="mega-menu-col">
								<div class="mega-menu-title">{«Покупателям» — заголовок колонки}</div>
								<a class="mega-menu-item" href="#">
									<span class="mega-menu-icon"><i class="fa-solid fa-tags"></i></span>
									<span class="mega-menu-text">
										<strong>Скидки и акции</strong>
										<small>Специальные предложения</small>
									</span>
								</a>
								<a class="mega-menu-item" href="#">
									<span class="mega-menu-icon"><i class="fa-solid fa-truck-fast"></i></span>
									<span class="mega-menu-text">
										<strong>Доставка и оплата</strong>
										<small>Способы и сроки</small>
									</span>
								</a>
								<a class="mega-menu-item" href="#">
									<span class="mega-menu-icon"><i class="fa-solid fa-shield-halved"></i></span>
									<span class="mega-menu-text">
										<strong>Гарантии</strong>
										<small>Возврат и качество</small>
									</span>
								</a>
							</div>

							<div class="mega-menu-col">
								<div class="mega-menu-title">{«Компания» — заголовок колонки}</div>
								<a class="mega-menu-item" href="#">
									<span class="mega-menu-icon"><i class="fa-solid fa-circle-info"></i></span>
									<span class="mega-menu-text">
										<strong>О нас</strong>
										<small>Наша история</small>
									</span>
								</a>
								<a class="mega-menu-item" href="#">
									<span class="mega-menu-icon"><i class="fa-solid fa-newspaper"></i></span>
									<span class="mega-menu-text">
										<strong>Блог</strong>
										<small>Новости и статьи</small>
									</span>
								</a>
								<a class="mega-menu-item" href="#">
									<span class="mega-menu-icon"><i class="fa-solid fa-briefcase"></i></span>
									<span class="mega-menu-text">
										<strong>Партнёрам</strong>
										<small>Сотрудничество</small>
									</span>
								</a>
							</div>
						</div>

						<!-- Правая часть: акцентный блок -->
						<div class="mega-menu-aside">
							<div class="mega-menu-aside-badge">{«Рекомендуем» — плашка}</div>
							<h3 class="mega-menu-aside-title">{«Популярное прямо сейчас»}</h3>
							<p class="mega-menu-aside-text">
								{Короткий текст-приглашение — 1–2 строки про раздел, на который ведёт кнопка ниже.}
							</p>
							<a href="#" class="mega-menu-aside-btn">
								{Открыть} <i class="fas fa-arrow-right ms-1"></i>
							</a>
						</div>

					</div>
				</div>
				
				<div class="header-actions">
					<!-- BEGIN: I18N_LANG -->
					<div class="dropdown">
						<a class="btn-icon dropdown-toggle" data-bs-toggle="dropdown" style="cursor:pointer;" title="{PHP.i18n_locale}">
							<i class="fa-solid fa-language me-2"></i>
							<small>
							<!-- IF {PHP.i18n_locale} == 'ru' -->RU<!-- ENDIF -->
							<!-- IF {PHP.i18n_locale} == 'en' -->EN<!-- ENDIF -->
							<!-- IF {PHP.i18n_locale} == 'ua' -->UA<!-- ENDIF -->
							</small>
						</a>
						<ul class="dropdown-menu dropdown-menu-end border shadow-sm p-3">
							<!-- BEGIN: I18N_LANG_ROW -->
							<li>
								<a class="dropdown-item" href="{I18N_LANG_ROW_URL}" title="{I18N_LANG_ROW_TITLE}">
									{I18N_LANG_ROW_TITLE}
								</a>
							</li>
							<!-- END: I18N_LANG_ROW -->
						</ul>
					</div>
					<!-- END: I18N_LANG -->
					
					<button class="btn-icon theme-toggle" id="themeToggle" title="Alter">
						<i class="fas fa-moon"></i>
					</button>
					
					<!-- BEGIN: GUEST -->
					<button class="btn-accent" type="button" data-bs-toggle="offcanvas" data-bs-target="#guestOffCanvas" aria-controls="guestOffCanvas" title="{PHP.L.Account}">
						{PHP.L.Login}
					</button>
					<!-- END: GUEST -->
					
					<!-- BEGIN: USER -->
					<!-- IF {PHP|cot_module_active('pm')} -->
					<a class="btn-icon position-relative" href="{PHP|cot_url('pm')}" title="{PHP.L.Private_Messages}">
						<i class="fas fa-envelope"></i>
						<!-- IF {PHP.usr.newpm} > 0 -->
						<span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" style="font-size:0.65rem;">{PHP.usr.newpm}</span>
						<!-- ENDIF -->
					</a>
					<!-- ENDIF -->
					<button class="btn-icon p-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#profileRightOffcanvas" aria-controls="profileRightOffcanvas" title="{PHP.L.Account}">
						<!-- IF {PHP|cot_plugin_active('userimages')} -->
						<!-- IF {PHP.usr.profile.user_avatar} -->
						<img class="rounded-circle" src="{PHP.usr.profile.user_avatar}" alt="{PHP.usr.name}" width="36" height="36" style="object-fit:cover;">
						<!-- ELSE -->
						<img class="rounded-circle" src="{PHP.R.userimg_default_avatar}" alt="{PHP.usr.name}" width="36" height="36" style="object-fit:cover;">
						<!-- ENDIF -->
						<!-- ELSE -->
						<img class="rounded-circle" src="{PHP.R.userimg_default_avatar}" alt="{PHP.usr.name}" width="36" height="36" style="object-fit:cover;">
						<!-- ENDIF -->
					</button>
					<!-- END: USER -->
				</div>
			</header>
			
			<!-- Затемнение фона при открытом мобильном сайдбаре -->
			<div class="sidebar-overlay" id="sidebarOverlay"></div>
			
			<!-- Основной макет: сайдбар + контент -->
			<div class="layout">
				
				<!-- Основной контент -->
				<main class="main-content">
				<!-- END: HEADER -->																