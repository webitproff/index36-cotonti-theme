<!-- 
	* Market PRO Module for CMF Cotonti, PHP v.8.5+, MySQL v.8.4
	*
	* Filename: _ _ _ _ _ _ _ _ _ _ _ _ _ _ market.vendor.categories.tpl
	* Base path to the file: _ _ _ _ _ _ _ modules/market/tpl/market.vendor.categories.tpl
	* Recommended path to the file: _ _ _ _ themes/your-theme-name/modules/market/market.vendor.categories.tpl
	* Main business logic:_ _ _ _ _ _ _ _ _ modules/market/inc/market.vendor.php
	*                     _ _ _ _ modules/market/inc/market.functions.php SEE: cot_market_build_vendor_categories_html()
	* Назначение:
	*   Шаблон витрины конкретного продавца модуля Market. Открывается
	*   по URL m=vendor&u=<username> (или uid=<id>, или ЧПУ-вариантам).
	*   Отображает:
	*     - хлебные крошки (Главная → Market → Список продавцов → Ник);
	*     - шапку витрины: аватар, ник, ссылку на профиль, дату последней
	*       активности, блок «о продавце» (extrafields xtradbrowusers),
	*       статистику (товаров, категорий, дата регистрации);
	*     - левый сайдбар: список категорий, в которых у продавца есть
	*       опубликованные товары, с количеством и подсветкой активной;
	*     - форму поиска по товарам продавца (поле + выбор области поиска);
	*     - сетку карточек товаров продавца (BEGIN: LIST_ROW) с превью
	*       (attacher), названием, кратким описанием и ценой;
	*     - пустое состояние (BEGIN: LIST_EMPTY) при отсутствии товаров;
	*     - пагинацию товаров.
	*
	*   ПРИМЕР https://abuyfile.com/ru/market/vendor/webitproff
	*
	* Основные параметры URL:
	*   m=vendor                — режим витрины продавца;
	*   u=<username>            — ник продавца (предпочтительно);
	*   uid=<user_id>           — ID продавца (альтернатива);
	*   c=<код категории>       — фильтр по категории внутри витрины;
	*   s=<поле сортировки>     — поле сортировки товаров (без fieldmrkt_);
	*   w=<asc|desc>            — направление сортировки;
	*   sq=<запрос>             — поисковый запрос по товарам продавца;
	*   search_in=<область>     — область поиска: title, full, pcod;
	*   d=<страница>            — номер страницы пагинации.
	*
	* Поддерживаемые варианты URL:
	*   /market/vendor/<username>             — предпочтительный;
	*   /market/vendor/<user_id>              — числовой ID;
	*   /market/vendor-<user_id>-<username>   — комбинированный;
	*   ?e=market&m=vendor&u=<username>       — query-string.
	*
	* Основные теги шаблона:
	*   Навигация и шапка витрины:
	*     VENDOR_BREADCRUMBS         — хлебные крошки витрины (HTML);
	*     VENDOR_USER_ID             — ID продавца;
	*     VENDOR_USERNAME            — ник продавца (экранированный);
	*     VENDOR_USER_AVATAR         — аватар продавца (cot_generate_usertags);
	*     VENDOR_USER_*              — дополнительные теги продавца (extrafields);
	*     VENDOR_USER_XTRA_*         — доп. поля продавца (xtradbrowusers, напр. XTRA_X020_ABOUT_VENDOR_TEXT);
	*     VENDOR_PROFILE_URL         — ссылка на профиль пользователя;
	*     VENDOR_SHOWCASE_URL        — канонический URL текущей витрины;
	*     VENDOR_VENDORS_LIST_URL    — ссылка на список всех витрин (m=vendors);
	*     VENDOR_PRODUCTS_PUBLISHED  — количество опубликованных товаров продавца;
	*     VENDOR_PRODUCTS_TOTAL      — общее количество товаров (с черновиками и модерацией);
	*     VENDOR_CATEGORIES_COUNT    — количество категорий, в которых торгует продавец;
	*     VENDOR_REGDATE[_STAMP]     — дата регистрации (текст / timestamp);
	*     VENDOR_LAST_SEEN[_STAMP]   — дата последней активности (текст / timestamp);
	*     VENDOR_CATEGORIES_TREE     — HTML-дерево категорий продавца
	*                                  (cot_market_build_vendor_categories_html()).
	*
	*   Форма поиска:
	*     VENDOR_SEARCH_ACTION_URL   — URL action формы поиска;
	*     VENDOR_SEARCH_SQ           — поле ввода поискового запроса (по товарам продавца);
	*     VENDOR_SEARCH_IN_SELECT    — selectbox области поиска (title / full / pcod).
	*
	*   Список товаров (BEGIN: LIST_ROW):
	*     LIST_ROW_*                 — стандартные теги товара (cot_generate_markettags());
	*     LIST_ROW_OWNER / OWNER_*   — теги владельца (cot_build_user / cot_generate_usertags);
	*     LIST_ROW_ODDEVEN           — odd/even для zebra-стилизации;
	*     LIST_ROW_NUM / ABS_NUM     — номер строки в списке / абсолютный (с учётом пагинации);
	*     LIST_ROW_DESCRIPTION_OR_TEXT_CUT — краткое описание (или обрезанный текст);
	*     LIST_ROW_COSTDFLT          — цена в базовой валюте.
	*
	*   Пустое состояние: BEGIN: LIST_EMPTY.
	*
	*   Пагинация:
	*     PAGINATION / PREVIOUS_PAGE / NEXT_PAGE / CURRENT_PAGE / TOTAL_PAGES.
	*
	*   Прочее:
	*     TPL_PATH                   — путь к файлу шаблона (только админ).
	*
	* Доступ к товарам:
	*   Владелец витрины и админ видят все товары продавца (в т.ч. черновики
	*   и на модерации). Гости и прочие пользователи — только опубликованные
	*   (STATE_PUBLISHED). Если у продавца нет товаров и это не владелец/админ — 404.
	*
	* Используемые плагины (опционально):
	*   attacher        — вывод изображений товаров (att_count / att_display);
	*   xtradbrowusers  — доп. поля продавца (например, XTRA_X020_ABOUT_VENDOR_TEXT);
	*   i18n4marketpro  — мультиязычный поиск и названия категорий;
	*   multicatmarket  — учитывается в cot_market_build_vendor_categories_html().
	*
	* Хуки (в market.vendor.php):
	*   market.vendor.first         — в начале страницы;
	*   market.vendor.query         — перед формированием SQL-запроса;
	*   market.vendor.main          — после подготовки данных продавца;
	*   market.vendor.before_loop   — перед циклом вывода товаров;
	*   market.vendor.loop          — внутри цикла товаров;
	*   market.vendor.tags          — перед финальным парсингом шаблона.
	*
	* Source and updates   https://github.com/webitproff/marketpro-cotonti
	* ReadMeMore:          https://abuyfile.com/ru/market/cotonti/plugs/marketpro
	* Support:             https://abuyfile.com/ru/forums/cotonti/custom/marketpro
	*
	* Date: 09 Oct, 2026
	*
	* @package market
	* @version 5.7.9
	* @author webitproff
	* @copyright Copyright (c) webitproff 2026 | https://github.com/webitproff
	* @license BSD	
--> 



<!-- BEGIN: MAIN -->
<div class="border-bottom border-secondary py-3 px-3">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			{VENDOR_BREADCRUMBS}
		</ol>
	</nav>
</div>

<div class="container-fluid px-3 px-lg-5 py-5">
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	
	<div class="gradient-border w-100 shadow mb-5">
		<!-- Внутренний контейнер, который примет фон -->
		<div class="gradient-border-contain-bg w-100 d-flex align-items-center py-4 px-3">
			<h1 class="h6 mb-1">
				<span class="ms-0"><i class="fa-solid fa-shop fa-2xl"></i></span>
				<span class="text-uppercase fw-semibold ms-2">{VENDOR_USER_NICKNAME}</span> 
				- {PHP.L.market_vendor_page_title_h1} 
			<span class="text-uppercase fw-light">{PHP.cfg.maintitle}</span></h1>
		</div>
	</div>
	
	<div class="card border-0 shadow mb-5">
		<div class="user-details-header-background">
			<!-- IF {VENDOR_USER_BACKGROUND_SRC} -->
			<img src="{VENDOR_USER_BACKGROUND_SRC}"
			alt="{VENDOR_USER_NICKNAME}"
			class="img-fluid rounded-top details-background" loading="lazy" />
			<!-- ELSE -->
			<img src="{PHP.R.userimg_default_background}"
			alt="{VENDOR_USER_NICKNAME}"
			class="img-fluid rounded-top details-background" loading="lazy" />
			<!-- ENDIF -->
			
		</div>
		<div data-user-id="{VENDOR_USER_ID}" class="user-details-header d-flex flex-column flex-sm-row text-sm-start text-center mb-3">
			<div class="flex-shrink-0 mt-n2 mx-sm-0 mx-auto">
				<!-- IF {VENDOR_USER_AVATAR_SRC} -->
				<img src="{VENDOR_USER_AVATAR_SRC}"
				alt="{VENDOR_USER_NICKNAME}"
				class="d-block h-auto ms-0 ms-sm-3 rounded-4 user-details-img"
				width="96"
				height="96" loading="lazy" />
				<!-- ELSE -->
				<img src="{PHP.R.userimg_default_avatar}"
				alt="{VENDOR_USER_NICKNAME}"
				class="d-block h-auto ms-0 ms-sm-3 rounded-4 user-details-img"
				width="96"
				height="96" />
				<!-- ENDIF -->
			</div>
			<div class="flex-grow-1 mt-3 mt-sm-5">
				<div
				class="d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start mx-3 flex-md-row flex-column gap-4">
					<div class="user-details-info">
						<a href="{VENDOR_PROFILE_URL}" class="text-decoration-none" title="{PHP.L.market_vendor_profile_link}">
							<!-- IF {VENDOR_USER_FIRSTNAME} -->
							<span class="fw-medium"><small>{VENDOR_USERNAME}</small></span>
							<h4 class="mb-2">
								<!-- IF {VENDOR_USER_FIRSTNAME} -->{VENDOR_USER_FIRSTNAME}<!-- ENDIF --> 
								<!-- IF {VENDOR_USER_LASTNAME} -->{VENDOR_USER_LASTNAME}<!-- ENDIF -->
							</h4>
							
							<!-- ELSE -->
							<h4 class="mb-2">
								{VENDOR_USER_NICKNAME}
							</h4>
							<!-- ENDIF -->
						</a>
						<ul
						class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-4">
							<li class="list-inline-item">
								<span>
									<i class="bi bi-box-seam"></i>
									{PHP.L.market_vendor_products}:
									<strong>{VENDOR_PRODUCTS_PUBLISHED}</strong>
								</span>
							</li>
							<li class="list-inline-item">
								<span>
									<i class="bi bi-folder"></i>
									{PHP.L.market_vendor_categories}:
									<strong>{VENDOR_CATEGORIES_COUNT}</strong>
								</span>
							</li>
							<li class="list-inline-item">
								<i class="fas fa-calendar me-2 icon-24px"></i><span class="fw-medium">{PHP.L.langSkStr_usersJoined} {VENDOR_USER_REGDATE_STAMP|cot_date('F Y', $this)}</span>
							</li>
						</ul>
					</div>
					<!-- IF {MARKET_VENDOR_SHOWCASE_URL} -->
					<a href="{MARKET_VENDOR_SHOWCASE_URL}" class="btn btn-success ms-auto">
						{PHP.L.market_owner_vendor_link}
					</a>
					<!-- ENDIF -->
					<!-- IF {PHP|cot_module_active('pm')} -->
					
					<!-- IF {PHP.usr.id} > 0 AND {PHP.usr.id} != {VENDOR_USER_ID} -->
					<a class="btn btn-primary" href="{VENDOR_USER_ID|cot_url('pm','m=send&to=$this', '', 1)}">
						<span class="mb-3 me-1"><i class="fa-solid fa-paper-plane fa-xl"></i></span>
						<span class="fw-medium mb-2">{PHP.L.users_sendpm}</span>
					</a>
					<!-- ENDIF -->
					
					<!-- IF {PHP.usr.id} == '0' -->
					<button class="btn btn-outline-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#guestOffCanvas" aria-controls="guestOffCanvas" title="{PHP.L.users_sendpm}">
						<span class="mb-3 me-1"><i class="fa-solid fa-paper-plane fa-xl"></i></span>
						<span class="fw-medium mb-2">{PHP.L.users_sendpm}</span>
					</button>
					<!-- ENDIF -->
					
					<!-- ENDIF -->	
				</div>
			</div>
		</div>
        <div class="card-body d-flex flex-wrap align-items-center">
            <div class="flex-grow-1">
				<!-- IF {PHP|cot_plugin_active('xtradbrowusers')} -->
				<!-- IF {VENDOR_USER_XTRA_X020_ABOUT_VENDOR_TEXT} -->
				<div class="mb-3">
					<div>
						<div class="contact-label">{VENDOR_USER_XTRA_X020_ABOUT_VENDOR_TEXT_TITLE}</div>
						<div class="contact-value">{VENDOR_USER_XTRA_X020_ABOUT_VENDOR_TEXT}</div>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- ENDIF -->
                <!-- IF {VENDOR_LAST_SEEN} -->
                <div class="mb-2 text-muted"><small>{PHP.L.Lastlogged}: {VENDOR_LAST_SEEN}</small></div>
                <!-- ENDIF -->
			</div>
		</div>
	</div>	
    <!-- ==================== ШАПКА ВИТРИНЫ ==================== -->
	
	
    <div class="row">
		<div class="card card-body mb-4">
			<!-- Форма поиска -->
			<form method="get" action="{VENDOR_SEARCH_ACTION_URL}" class="row g-2">
				<div class="col-lg-5">{VENDOR_SEARCH_SQ}</div>
				<div class="col-lg-3">{VENDOR_SEARCH_IN_SELECT}</div>
				<div class="col-lg-2">
					<div class="row g-1">
						<div class="col-6">
							<button type="submit" class="btn btn-primary w-100" title="{PHP.L.Search}">
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</div>
						<div class="col-6">
							<a class="btn btn-outline-danger w-100"
							title="{PHP.L.marketprofilter_reset}"
							href="{VENDOR_MAIN_URL}">
								<i class="fa-solid fa-filter-circle-xmark"></i>
							</a>
						</div>
					</div>
				</div>
			</form>
		</div>		
        <!-- ==================== ЛЕВАЯ КОЛОНКА: КАТЕГОРИИ ==================== -->
		
		<aside class="col-md-3 mb-5">
			<h5>{PHP.L.market_vendor_categories_of}</h5>
			<div class="market-vendor-categories">
				<!-- IF {VENDOR_CATEGORIES_TREE} -->
				{VENDOR_CATEGORIES_TREE}
				<!-- ELSE -->
				<p class="text-muted small">{PHP.L.market_vendor_no_categories}</p>
				<!-- ENDIF -->
			</div>
		</aside>
		
		
        <!-- ==================== ПРАВАЯ КОЛОНКА: ТОВАРЫ ==================== -->
        <div class="col-md-9">
			
            <!-- Сетка товаров -->
			<div class="row row-cols-1 row-cols-xxl-3 row-cols-lg-2 row-cols-md-1 g-3 g-lg-4" id="market-items-container">
				<!-- BEGIN: LIST_ROW -->
				<div class="col">
					<article class="card product-card h-100 shadow-sm">
						<!-- Изображение -->
						<a href="{LIST_ROW_URL}" class="product-card-img-link" title="{LIST_ROW_TITLE}">
							<!-- IF {PHP|cot_plugin_active('attacher')} -->
							<!-- IF {LIST_ROW_ID|att_count('market', $this, '', 'images')} > 0 -->
							{LIST_ROW_ID|att_display('market', $this, '', 'attacher.display.marketlist', 'images', 1)}
							<!-- ELSE -->
							<img src="{PHP.R.page_default_image}" alt="{LIST_ROW_TITLE}" class="product-card-img">
							<!-- ENDIF -->
							<!-- ELSE -->
							<img src="{PHP.R.page_default_image}" alt="{LIST_ROW_TITLE}" class="product-card-img">
							<!-- ENDIF -->
							
							<!-- Бейдж статуса поверх изображения -->
							<!-- IF {PHP.usr.isadmin} OR {PHP.usr.id} == {LIST_ROW_OWNER_ID} -->
							<!-- IF {LIST_ROW_STATE} == '2' -->
							<span class="product-card-status badge bg-warning text-dark">{LIST_ROW_LOCAL_STATUS}</span>
							<!-- ENDIF -->
							<!-- IF {LIST_ROW_STATE} == '1' -->
							<span class="product-card-status badge bg-danger text-white">{LIST_ROW_LOCAL_STATUS}</span>
							<!-- ENDIF -->
							<!-- ENDIF -->
						</a>
						
						<div class="card-body d-flex flex-column">
							
							<!-- Заголовок -->
							<h3 class="product-card-title">
								<a href="{LIST_ROW_URL}" title="{LIST_ROW_TITLE}">{LIST_ROW_TITLE}</a>
							</h3>
							<div class="d-flex justify-content-between align-items-center mb-2">					
								<!-- Рейтинг -->
								<!-- IF {PHP|cot_plugin_active('marketreviews')} -->
								<div class="product-card-rating">
									<span class="review-stars" title="{PHP.L.marketreviews_pageRatingValue}">{LIST_ROW_REVIEWS_AVG_STARS_HTML}</span>
									<!-- IF {LIST_ROW_REVIEWS_TOTAL_COUNT} > 0 -->
									<span class="text-muted small ms-1">
										<i class="fa-solid fa-comment-dots"></i> {LIST_ROW_REVIEWS_TOTAL_COUNT}
									</span>
									<!-- ENDIF -->
								</div>
								<!-- ENDIF -->
								<!-- IF {PHP.usr.isadmin} OR {PHP.usr.id} === {LIST_ROW_OWNER_ID} -->
								<div class="dropdown">
									<button class="btn btn-outline-warning btn-lg rounded-circle d-flex align-items-center justify-content-center shadow-sm" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="width:32px;height:32px;">
										<i class="fa-solid fa-ellipsis-v"></i>
									</button>
									<ul class="dropdown-menu dropdown-menu-end border shadow-sm py-3" style="min-width:280px;">
										<!-- IF {LIST_ROW_ADMIN_EDIT} -->
										<li>
											<a class="dropdown-item py-2 px-4" 
											href="{LIST_ROW_ADMIN_EDIT_URL}">
												{PHP.L.Edit}
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
							
							<!-- Описание -->
							<!-- IF {LIST_ROW_DESCRIPTION} -->
							<p class="product-card-desc text-muted small">{LIST_ROW_DESCRIPTION|strip_tags($this)|mb_substr($this,0,120,'UTF-8')}...</p>
							<!-- ELSE -->
							<p class="product-card-desc text-muted small">{LIST_ROW_TEXT_CUT|strip_tags($this)|mb_substr($this,0,120,'UTF-8')}...</p>
							<!-- ENDIF -->
							
							<!-- Категория -->
							<!-- IF {LIST_CAT_CODE} == '' -->
							<div class="product-card-cat small">{LIST_ROW_CAT_TITLE}</div>
							<!-- ENDIF -->
							
							<!-- Доп поля -->
							<!-- IF {PHP|cot_plugin_active('xtradbrowmarket')} -->
							<div class="product-card-extra d-flex gap-3 mt-2">
								<!-- IF {LIST_ROW_XTRADBROWMARKET_011_GITHUB_RC} -->
								<a target="_blank" rel="nofollow noreferrer noopener" href="{LIST_ROW_XTRADBROWMARKET_011_GITHUB_RC}"
								data-bs-toggle="tooltip" data-bs-html="true"
								data-bs-title="{LIST_ROW_XTRADBROWMARKET_011_GITHUB_RC_TITLE} {PHP.L.xtradbrowmarket_github_rc_tooltip}">
									<i class="fa-brands fa-github fa-lg"></i>
								</a>
								<!-- ENDIF -->
								<!-- IF {LIST_ROW_XTRA_010_FORUM_LINK} -->
								<a target="_blank" rel="nofollow noreferrer noopener" href="{LIST_ROW_XTRA_010_FORUM_LINK}"
								data-bs-toggle="tooltip" data-bs-html="true"
								data-bs-title="{LIST_ROW_XTRA_010_FORUM_LINK_TITLE}. {PHP.L.xtradbrowmarket_forum_link_tooltip}">
									<i class="fa-solid fa-person-circle-question fa-lg"></i>
								</a>
								<!-- ENDIF -->
							</div>
							<!-- ENDIF -->
							
							<!-- Цена + владелец + кнопки (внизу карточки) -->
							<div class="product-card-footer mt-auto pt-3">
								
								<!-- Цена -->
								<!-- IF {PHP|cot_plugin_active('marketcurrencyswitcher')} -->
								<!-- IF {LIST_ROW_COSTDFLT} > 0 -->
								<div class="product-card-price">
									<span class="price-label text-muted small">{PHP.L.market_price}</span>
									<span class="market-price fw-bold" data-base-price="{LIST_ROW_COST_RAW}">
										{LIST_ROW_COSTDFLT} {PHP.cfg.payments.valuta}
									</span>
								</div>
								<!-- ENDIF -->
								<!-- ELSE -->
								<!-- IF {LIST_ROW_COSTDFLT} > 0 -->
								<div class="product-card-price fw-bold">
									{LIST_ROW_COSTDFLT}
									<!-- IF {PHP.cfg.payments.valuta} -->{PHP.cfg.payments.valuta}<!-- ELSE -->{PHP.cfg.market.market_currency}<!-- ENDIF -->
								</div>
								<!-- ENDIF -->
								<!-- ENDIF -->
								
								
								
								<!-- Кнопки -->
								<div class="product-card-actions d-flex gap-2 mt-3">
									<!-- IF {PHP|cot_plugin_active('payordersmarket')} AND {PHP.usr.id} -->
									<!-- IF !{LIST_ROW_ORDER_IN_CART} -->
									<a href="javascript:void(0)" class="btn btn-sm btn-success add-to-cart flex-grow-1" data-id="{LIST_ROW_ID}">
										<i class="fa-solid fa-cart-plus me-1"></i>{PHP.L.payordersmarket_add_to_cart}
									</a>
									<span class="cart-added-msg text-success small" style="display:none;">{PHP.L.payordersmarket_added_to_cart}</span>
									<!-- ELSE -->
									<span class="btn btn-sm btn-outline-info flex-grow-1">{PHP.L.payordersmarket_in_cart} ✅</span>
									<!-- ENDIF -->
									<!-- ENDIF -->
									<!-- IF {PHP|cot_plugin_active('payordersmarket')} AND {PHP|cot_auth('plug', 'payordersmarket', 'R')} AND {PHP.usr.id} == 0 -->
									<a class="btn btn-sm btn-outline-secondary flex-grow-1" data-bs-toggle="modal" data-bs-target="#authModal">
										<i class="fa-solid fa-cart-plus me-1"></i>{PHP.L.payordersmarket_add_to_cart}
									</a>
									<!-- ENDIF -->
								</div>
							</div>
						</div>
					</article>
				</div>
				<!-- END: LIST_ROW -->
			</div>		
			
			<!-- BEGIN: LIST_EMPTY -->
			<div class="col-12">
				<div class="alert alert-info">{PHP.L.market_vendor_empty}</div>
			</div>
			<!-- END: LIST_EMPTY -->
			
			<!-- IF {PAGINATION} -->
			<nav class="mt-5">
				<div class="pagination-scroll">
					<ul class="pagination justify-content-center flex-nowrap mb-0">
						{PREVIOUS_PAGE}
						{PAGINATION}
						{NEXT_PAGE}
					</ul>
				</div>
			</nav>
			
			<div class="text-center">
				{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}
			</div>
			<!-- ENDIF -->	
		</div>
	</div>
	
</div>
<!-- IF {PHP.usr.isadmin} AND {TPL_PATH} --> 
<div class="container-fluid px-3 px-lg-5 py-5">
	<div class="alert alert-info" role="alert">
		{TPL_PATH}
	</div>
</div>
<!-- ENDIF -->

<!-- Custom minimal styles for users.details.tpl -->
<style>
	/* Minimal custom styles for easy integration */
	.user-details-header-background img {
	block-size: 250px;
	inline-size: 100%;
	object-fit: cover;
	}
	
	.user-details-header {
	margin-block-start: -2rem;
	}
	.user-details-header .user-details-img {
	border: 5px solid;
	border-color: #ff8809;
	background-color: #f8f9fa;
    padding: 3px;
	inline-size: 120px;
	}
	
	/* Responsive style */
	@media (max-width: 767.98px) {
	.user-details-header-background img {
    block-size: 150px;
	}
	.user-details-header .user-details-img {
    inline-size: 100px;
	}
	}
	
    .details-background { height: 200px; object-fit: cover; }
	
</style>

<!-- END: MAIN -->
