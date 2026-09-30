<!--
	/********************************************************************************
	* File: footer.tpl
	* Extension: Core'
	* Description: HTML template for footer.tpl.
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
	* Demo : https://freelance-script.abuyfile.com
	* Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
	* License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)
	********************************************************************************/
-->
<!-- BEGIN: FOOTER -->
</main>
<!-- Сайдбар -->
<aside class="sidebar" id="sidebar">
	<div class="ps-container">
		<!-- Кастомный селектор панелей сайдбара -->
		<div class="sidebar-selector" id="sidebarSelector">
			<!-- Триггер: показывает иконку и название текущей панели -->
			<button class="sidebar-selector-toggle" id="sidebarSelectorToggle" type="button" aria-haspopup="listbox" aria-expanded="false">
				<span class="sidebar-selector-current">
					<i class="fa-solid fa-pen-nib"></i>
					<span class="sidebar-selector-label">{PHP.langSkStr.tabPages}</span>
				</span>
				<i class="fa-solid fa-chevron-down sidebar-selector-arrow"></i>
			</button>
			<!-- Выпадающее меню: список доступных панелей -->
			<ul class="sidebar-selector-menu" id="sidebarSelectorMenu" role="listbox">
				<!-- IF {PHP|cot_module_active('market')} -->
				<li class="sidebar-selector-item active" data-tab="market" role="option">
					<i class="fa-solid fa-store"></i>
					<span>{PHP.L.market_title_general}</span>
				</li>
				<!-- ENDIF -->
				<li class="sidebar-selector-item" data-tab="pages" role="option">
					<i class="fa-solid fa-pen-nib"></i>
					<span>{PHP.langSkStr.tabPages}</span>
				</li>
				<!-- IF {PHP|cot_module_active('forums')} -->
				<li class="sidebar-selector-item" data-tab="forums" role="option">
					<i class="fa-solid fa-comments"></i>
					<span>{PHP.L.Forums}</span>
				</li>
				<!-- ENDIF -->
				<!-- IF {PHP|cot_module_active('users')} -->
				<li class="sidebar-selector-item" data-tab="users" role="option">
					<i class="fa-solid fa-users-gear"></i>
					<span>{PHP.L.Users}</span>
				</li>
				<!-- ENDIF -->
				<li class="sidebar-selector-item" data-tab="plugins" role="option">
					<i class="fa fa-puzzle-piece"></i>
					<span>{PHP.langSkStr.tabPlgTolls}</span>
				</li>
				<li class="sidebar-selector-item" data-tab="elements" role="option">
					<i class="fa fa-shapes"></i>
					<span>Alter</span>
				</li>
			</ul>
		</div>
		
		<!-- Контейнер панелей -->
		<div class="expanded-panels">
			
			<!-- IF {PHP|cot_module_active('market')} -->
			<div id="panel-market" class="panel-content">
				<div class="flex-grow-1 py-2 px-0">
					<ul class="nav flex-column small">
						<li>
							<a class="nav-link <!-- IF {PHP.env.location} == 'market' AND {PHP.m} == 'vendors' --> active<!-- ENDIF -->" href="{PHP|cot_url('market' 'm=vendors')}" title="{PHP.L.market_seller_vendors_title}">
								<span class="me-2">
									<i class="fa-solid fa-shop"></i>
								</span>{PHP.L.market_seller_vendors_title} 
							</a>
						</li>
						<li>
							<a class="nav-link <!-- IF {PHP.env.location} == 'market' AND !{PHP.m} == 'vendors' --> active<!-- ENDIF -->" href="{PHP|cot_url('market')}" title="{PHP.L.market_title_general}">
								<i class="fa-solid fa-store me-2"></i>
								<span>{PHP.L.market_title_general}</span>
							</a>
						</li>
						
					</ul>
				</div>
				<div class="flex-grow-1">
					
					
					<!-- IF {PHP|function_exists('cot_build_structure_market_tree')} AND {PHP|cot_auth('market', 'any', 'R')} -->
					{PHP|cot_build_structure_market_tree('', '', 0, 'sidebar')}
					<!-- ENDIF -->
					<hr class="my-2">
					<ul class="nav flex-column">
						<!-- IF {PHP.usr.id} AND {PHP.usr.id|cot_auth('market', 'a', 'A')} -->
						<li>
							<a class="nav-link d-flex align-items-center" data-bs-toggle="collapse" href="#collapse-siteMarket" role="button" aria-expanded="false">
								<i class="fa-solid fa-screwdriver-wrench me-2"></i>
								<span>{PHP.L.Administration}</span>
								<i class="fa fa-angle-down ms-auto"></i>
							</a>
							<div class="collapse" id="collapse-siteMarket">
								<ul class="nav flex-column ps-3">
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=market')}"><i class="fa fa-cog me-2"></i>{PHP.L.Administration}</a></li>
									<li><a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=market')}"><i class="fa fa-cog me-2"></i>{PHP.L.Configuration}</a></li>
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=structure&n=market')}"><i class="fa fa-list me-2"></i>{PHP.L.Structure}</a></li>
									<!-- IF {PHP.db_market} -->
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=extrafields&n={PHP.db_market}')}"><i class="fa fa-magic me-2"></i>{PHP.L.Extrafields}</a></li>
									<!-- ENDIF -->
								</ul>
							</div>
						</li>
						<!-- ENDIF -->
					</ul>
				</div>
			</div>
			<!-- ENDIF -->
			
			<div id="panel-pages" class="panel-content d-none">
				<div class="flex-grow-1">
					<ul class="nav flex-column">
						<li>
							<a class="nav-link mt-2" href="{PHP|cot_url('search','tab=pag')}">
								<i class="fa-solid fa-magnifying-glass me-2"></i>{PHP.langSkStr.pageSearch}
							</a>
						</li>
						<!-- IF {PHP.structure.page.news} -->
						<!-- IF {PHP.structure.page.news.path} -->
						<li>
							<a href="{PHP|cot_url('page','c=news')}" class="nav-link">
								<i class="fa-solid fa-newspaper me-2"></i>{PHP.structure.page.news.title}
							</a>
						</li>
						<!-- ENDIF -->
						<!-- ENDIF -->
						<!-- IF {PHP.structure.page.articles} -->
						<!-- IF {PHP.structure.page.articles.path} === 'articles' -->
						<li>
							<a href="{PHP|cot_url('page','c=articles')}" class="nav-link">
								<i class="fa-solid fa-newspaper me-2"></i>{PHP.structure.page.articles.title}
							</a>
						</li>
						<!-- ENDIF -->
						<!-- ENDIF -->
						<!-- IF {PHP.usr.id} AND {PHP.usr.id|cot_auth('page', 'any', 'W')} -->
						<!-- IF !{PHP.structure.page.unvalidated} -->
						<li><hr></li>
						<li>
							<a href="{PHP|cot_url('page','c=unvalidated')}" class="nav-link">
								<i class="fa-solid fa-edit me-2"></i>{PHP.L.page_validation}
								<!-- IF {PHP.sys.pagesqueued} > 0 --><span class="badge rounded-pill border border-info text-info">{PHP.sys.pagesqueued}</span><!-- ENDIF -->
							</a>
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
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=page&filter=all')}"><i class="fa fa-cog me-2"></i>{PHP.langSkStr.pageModerate}</a></li>
									<li><a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=page')}"><i class="fa fa-cog me-2"></i>{PHP.langSkStr.pageConfigModule}</a></li>
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=structure&n=page')}"><i class="fa fa-list me-2"></i>{PHP.langSkStr.pageStructureCats}</a></li>
									<!-- IF {PHP.db_pages} -->
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=extrafields&n={PHP.db_pages}')}"><i class="fa fa-magic me-2"></i>{PHP.langSkStr.pageExtrafields}</a></li>
									<!-- ENDIF -->
								</ul>
							</div>
						</li>
						<!-- ENDIF -->
					</ul>
					<hr class="my-2">
					<!-- IF {PHP|cot_plugin_active('treecatspage')} -->
					<!-- IF {PHP|function_exists('cot_treecatspage_build_structure_page_tree')} AND {PHP|cot_auth('page', 'any', 'R')} -->
					{PHP|cot_treecatspage_build_structure_page_tree('', '', 0, 'sidebar')}
					<!-- ENDIF -->
					<!-- ENDIF -->
				</div>
			</div>
			
			<!-- IF {PHP|cot_module_active('forums')} -->
			<div id="panel-forums" class="panel-content d-none">
				<div class="p-2 border-bottom">
					<h6 class="mb-0">
						<a class="text-decoration-none" href="{PHP|cot_url('forums')}">
							<i class="fa fa-home me-2"></i>{PHP.L.Forums}
						</a>
					</h6>
				</div>
				<div class="flex-grow-1">
					<ul class="nav flex-column">
						<li>
							<a class="nav-link mt-2" href="{PHP|cot_url('search','tab=frm')}">
								<i class="fa-solid fa-magnifying-glass me-2"></i>{PHP.langSkStr.forumSearch}
							</a>
						</li>
						<!-- IF {PHP|cot_plugin_active('forumstats')} -->
						<li>
							<a href="{PHP|cot_url('plug','e=forumstats')}" class="nav-link">
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
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=forums')}"><i class="fa fa-cog me-2"></i>{PHP.langSkStr.forumLastTopics}</a></li>
									<li><a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=forums')}"><i class="fa fa-cog me-2"></i>{PHP.langSkStr.forumConfigModule}</a></li>
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=structure&n=forums')}"><i class="fa fa-list me-2"></i>{PHP.langSkStr.forumStructureCats}</a></li>
									<!-- IF {PHP.db_forum_topics} -->
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=extrafields&n={PHP.db_forum_topics}')}"><i class="fa fa-magic me-2"></i>{PHP.langSkStr.forumTopicExtrafields}</a></li>
									<!-- ENDIF -->
									<!-- IF {PHP.db_forum_posts} -->
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=extrafields&n={PHP.db_forum_posts}')}"><i class="fa fa-magic me-2"></i>{PHP.langSkStr.forumPostExtrafields}</a></li>
									<!-- ENDIF -->
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
				<div class="p-2 border-bottom">
					<h6 class="mb-0">
						<a class="text-decoration-none" href="{PHP|cot_url('users')}">
							<i class="fa fa-home me-2"></i>{PHP.L.Users}
						</a>
					</h6>
				</div>
				<div class="flex-grow-1">
					<ul class="nav flex-column">
						<li>
							<a class="nav-link mt-2" href="{PHP.cot_groups.4.alias|cot_url('users', 'group=$this')}">
								<i class="fa-solid fa-users-gear me-2"></i>{PHP.cot_groups.4.name}
							</a>
						</li>
						<!-- IF {PHP.cot_groups.7} -->
						<li>
							<a class="nav-link" href="{PHP.cot_groups.7.alias|cot_url('users', 'group=$this')}">
								<i class="fa-solid fa-users-between-lines me-2"></i>{PHP.cot_groups.7.name}
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
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=users')}"><i class="fa fa-cog me-2"></i>{PHP.langSkStr.userGrpRights}</a></li>
									<li><a class="nav-link" href="{PHP|cot_url('admin','m=config&n=edit&o=module&p=users')}"><i class="fa fa-cog me-2"></i>{PHP.langSkStr.userConfigModule}</a></li>
									<!-- IF {PHP.db_users} -->
									<li><a class="nav-link" href="{PHP|cot_url('admin', 'm=extrafields&n={PHP.db_users}')}"><i class="fa fa-magic me-2"></i>{PHP.langSkStr.userExtrafields}</a></li>
									<!-- ENDIF -->
								</ul>
							</div>
						</li>
						<!-- ENDIF -->
					</ul>
				</div>
			</div>
			<!-- ENDIF -->
			
			<div id="panel-plugins" class="panel-content d-none">
				<div class="p-2 border-bottom"><h6 class="mb-0">{PHP.langSkStr.tabPlgTolls}</h6></div>
				<div class="flex-grow-1">
					<ul class="nav flex-column small">
						<!-- IF {PHP|cot_plugin_active('whosonline')} -->
						<li class="mt-2">
							<a href="{PHP|cot_url('whosonline')}" class="nav-link">
								<i class="fa-solid fa-users-rectangle me-2"></i>{PHP.L.WhosOnline}
							</a>
						</li>
						<!-- ENDIF -->
						<!-- IF {PHP|cot_plugin_active('statistics')} -->
						<li>
							<a href="{PHP|cot_url('statistics')}" class="nav-link">
								<i class="fa-solid fa-chart-bar me-2"></i>{PHP.L.Statistics}
							</a>
						</li>
						<!-- ENDIF -->
						<!-- IF {PHP|cot_plugin_active('contact')} -->
						<li>
							<a class="nav-link" href="{PHP|cot_url('contact')}">
								<i class="fa-solid fa-house-flag me-2"></i>{PHP.L.contact_contactUs}
							</a>
						</li>
						<!-- ENDIF -->
						<!-- IF {PHP|cot_module_active('polls')} -->
						<li>
							<a href="{PHP|cot_url('polls')}" class="nav-link">
								<i class="fa-solid fa-list-check me-2"></i>{PHP.L.Polls}
							</a>
						</li>
						<!-- ENDIF -->
					</ul>
				</div>
			</div>
			
			<div id="panel-elements" class="panel-content d-none">
				<div class="p-2 border-bottom"><h6 class="mb-0">Alter</h6></div>
				<div class="flex-grow-1 p-2">
					<ul class="nav flex-column small">
						<li><a class="nav-link" href="#">Alter</a></li>
						<li><a class="nav-link" href="#">Alter</a></li>
						<li><a class="nav-link" href="#">Alter</a></li>
						<li><a class="nav-link" href="#">Alter</a></li>
						<li><a class="nav-link" href="#">Alter</a></li>
						<li><a class="nav-link" href="#">Alter</a></li>
					</ul>
				</div>
				<div class="d-flex align-items-center my-2 px-2">
					<hr class="flex-grow-1">
					<span class="px-2"><i class="fa-solid fa-info-circle fa-2xl text-info"></i></span>
					<hr class="flex-grow-1">
				</div>
				<div class="p-2">
					<small>{PHP.langSkStr.blank_temporary_example_desc}</small>
				</div>
			</div>
			
		</div>
		
		
	</div>
	<!-- Кнопка закрытия сайдбара (только на мобильных) -->
	<button class="sidebar-close-mobile" id="sidebarCloseBtn">
		<i class="fas fa-times"></i> {PHP.L.Close}
	</button>
</aside>

</div><!-- /layout -->

<!-- Футер -->
<footer class="footer">
	<div class="row">
		<div class="col-12 col-lg-4 mb-2">
			<small>
				<span class="fw-semibold" style="color: var(--accent);"> © 2012 - {PHP.sys.now|cot_date('d-m-Y', $this)} <!-- IF {PHP.cfg.maintitle} -->{PHP.cfg.maintitle}<!-- ELSE -->{PHP.cfg.market.marketlist_default_title}<!-- ENDIF --></span>
			</small>
		</div>
		<div class="col-12 col-lg-4">
			<small>
				<a href="https://github.com/Cotonti/Cotonti" target="_blank" class="text-decoration-none" data-bs-toggle="tooltip" data-bs-title="{PHP.langSkStr.footer_cotonti_tooltip}" title="{PHP.langSkStr.footer_cotonti_tooltip}">
					<span class="me-1">{PHP.langSkStr.footer_engine}</span>
					<img src="{PHP.cfg.mainurl}/favicon-32x32.png" width="27" height="27" alt="Cotonti CMF">
					<span class="ms-1">{PHP.langSkStr.footer_cotonti} v.{PHP.cfg.version}</span>
				</a>
			</small>
		</div>
		<div class="col-12 col-lg-4">
			<small>
				<a href="https://github.com/webitproff/index36-cotonti-theme/tree/main" target="_blank" class="text-decoration-none" data-bs-toggle="tooltip" data-bs-title="{PHP.langSkStr.footer_download_index36_title}" title="{PHP.langSkStr.footer_download_index36_title}">
					<span>{PHP.langSkStr.footer_download_index36} </span>
				</a>
			</small>
		</div>
	</div>		
</footer>

<!-- Offcanvas: гость -->
<div class="offcanvas offcanvas-end" tabindex="-1" id="guestOffCanvas" aria-labelledby="guestOffCanvasLabel">
	<div class="offcanvas-header border-bottom">
		<h5 class="offcanvas-title" id="guestOffCanvasLabel">{PHP.L.Account}</h5>
		<button type="button" class="btn-close shadow-sm" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	</div>
	<div class="offcanvas-body">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link" href="{PHP|cot_url('login')}" data-bs-toggle="modal" data-bs-target="#authModal">
					<i class="fa-solid fa-right-to-bracket me-1"></i>{PHP.L.Login}
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="{PHP|cot_url('users','m=register')}">
					<i class="fa-solid fa-user-plus me-1"></i>{PHP.L.Register}
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="{PHP|cot_url('users','m=passrecover')}">
					<i class="fa-solid fa-key me-1"></i>{PHP.L.users_lostpass}
				</a>
			</li>
		</ul>
		<!-- IF {PHP|cot_plugin_active('hybridauth')} -->
		<div class="my-2">{PHP|hybridauth_login}</div>
		<!-- ENDIF -->
	</div>
	<div class="offcanvas-footer border-top">
		<div class="p-3">
			<div class="border-bottom">
				<h6 class="mb-3">
					<a href="https://github.com/Cotonti/Cotonti" target="_blank" data-bs-toggle="tooltip" data-bs-title="{PHP.langSkStr.footer_cotonti_tooltip}">
						<span class="me-2 link-warning">{PHP.langSkStr.footer_engine}</span>
						<span class="fw-semibold">{PHP.langSkStr.footer_cotonti}</span>
					</a>
				</h6>
			</div>
			<ul class="nav flex-column">
				<li class="nav-item mt-2"><p class="small">{PHP.langSkStr.footer_core_version}: v.{PHP.cfg.version}</p></li>
				<li class="nav-item"><p class="small">{PHP.langSkStr.footer_db_version}: v.{PHP|getRevisionValue()}</p></li>
				<li class="nav-item"><p class="small">{PHP.langSkStr.footer_php_version}: {PHP|custom_php_version()}</p></li>
				<li class="nav-item"><p class="small">{PHP.langSkStr.footer_legacy_mode}: {PHP|getLegacyModeStatus()}</p></li>
			</ul>
		</div>
	</div>
</div>

<!-- Модальное окно авторизации -->
<div class="modal fade" id="authModal" tabindex="-1" aria-labelledby="authModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header" style="background-color: var(--header-bg);">
				<h5 class="modal-title" id="authModalLabel">{PHP.L.Login}</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form action="{PHP|cot_url('login','a=check')}" method="post">
					<div class="mb-3">
						<label for="inputEmail" class="form-label">{PHP.L.users_nameormail}</label>
						<input type="text" class="form-control" name="rusername" id="inputEmail" />
					</div>
					<div class="mb-3">
						<label for="inputPassword" class="form-label">{PHP.L.Password}</label>
						<input type="password" class="form-control" name="rpassword" id="inputPassword" />
						<a href="{PHP|cot_url('users', 'm=passrecover')}" class="small text-decoration-none">{PHP.L.users_lostpass}</a>
					</div>
					<div class="mb-3 form-check">
						<input type="checkbox" class="form-check-input" id="rememberMe" name="rremember">
						<label class="form-check-label" for="rememberMe">{PHP.L.users_rememberme}</label>
					</div>
					<button type="submit" class="btn btn-primary">{PHP.L.Login}</button>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- Offcanvas: профиль пользователя -->
<div class="offcanvas offcanvas-end" tabindex="-1" id="profileRightOffcanvas" aria-labelledby="profileRightOffcanvasLabel">
	<div class="offcanvas-header">
		<h5 class="offcanvas-title" id="rightOffcanvasLabel">
			<!-- IF {PHP.usr.profile.user_firstname} -->
			<span class="h6 mt-2 mb-1 ms-2">{PHP.usr.profile.user_firstname} {PHP.usr.profile.user_lastname}</span>
			<!-- ELSE -->
			<span class="mb-1 ms-2">{PHP.usr.profile.user_name}</span>
			<!-- ENDIF -->
		</h5>
		<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	</div>
	<div class="offcanvas-body">
		<ul class="nav flex-column">
			<!-- IF {PHP.usr.id} != 0 -->
			<!-- IF {PHP.usr.maingrp} == 5 -->
			<li class="nav-item">
				<a class="nav-link" href="{PHP|cot_url('admin')}">
					<i class="fa-solid fa-user-shield me-1"></i>{PHP.L.Adminpanel}
				</a>
			</li>
			<hr class="my-2">
			<!-- ENDIF -->
			<li class="nav-item">
				<a class="nav-link" href="{PHP.usr.name|cot_url('users', 'm=details&u=$this')}">
					<i class="fa-solid fa-universal-access fa-lg me-1"></i>{PHP.L.users_myProfile}
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="{PHP|cot_url('users','m=profile')}">
					<i class="fa-solid fa-sliders fa-lg me-1"></i>{PHP.L.users_profileSettings}
				</a>
			</li>
			<!-- IF {PHP|cot_module_active('pm')} -->
			<li class="nav-item">
				<a class="nav-link" href="{PHP|cot_url('pm')}">
					<i class="fa-brands fa-kakao-talk fa-lg me-1"></i>{PHP.L.Private_Messages}
				</a>
			</li>
			<!-- ENDIF -->
			<!-- IF {PHP|cot_module_active('pfs')} -->
			<li class="nav-item">
				<a class="nav-link" href="{PHP|cot_url('pfs')}">
					<i class="fa-solid fa-photo-film fa-lg me-1"></i>{PHP.langSkStr.PFS_myFiles_Title}
				</a>
			</li>
			<!-- ENDIF -->
			<!-- IF {PHP.out.notices} -->
			<li class="nav-item">
				<a class="nav-link d-flex align-items-center position-relative" data-bs-toggle="collapse" href="#collapse-notices" role="button" aria-expanded="false">
					<i class="fa-solid fa-bell me-2"></i>
					<span>{PHP.langSkStr.noticesLinkTitle}</span>
					<i class="fa fa-angle-down ms-auto"></i>
				</a>
				<div class="collapse" id="collapse-notices">
					<ul class="nav flex-column ps-3 small">
						{PHP.out.notices}
					</ul>
				</div>
			</li>
			<!-- ENDIF -->
			<hr class="my-2">
			<li class="nav-item">
				<a class="nav-link" href="{PHP.out.loginout_url}">
					<i class="fa-solid fa-right-from-bracket me-1"></i>{PHP.L.Logout}
				</a>
			</li>
			<!-- ENDIF -->
		</ul>
	</div>
</div>

<!-- Модальное окно-заглушка -->
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

<!-- Кнопка «наверх» -->
<button type="button" data-bs-toggle="tooltip" data-bs-title="back to top" class="btn btn-outline position-fixed bottom-0 end-0 m-3" id="btn-back-to-top" style="z-index: 7999;">
	<i class="fa-solid fa-square-caret-up fa-lg"></i>
</button>

{FOOTER_RC}
<!-- Скрипты темы -->
<script>
	// Кнопка «наверх»
	var backToTopButton = document.getElementById("btn-back-to-top");
	if (backToTopButton) {
		backToTopButton.addEventListener("click", function () {
			window.scrollTo({ top: 0, behavior: "smooth" });
		});
	}
</script>
<script>
	Fancybox.bind('[data-fancybox="video"]', {
		Toolbar: {
			display: ["close"]
		},
		iframe: {
			preload: false
		}
	});
</script>

</body>
</html>
<!-- END: FOOTER -->
