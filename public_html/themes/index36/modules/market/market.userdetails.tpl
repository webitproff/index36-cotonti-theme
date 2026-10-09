<!-- 
	* Market PRO Module for CMF Cotonti, PHP v.8.5+, MySQL v.8.4
	*
	* Filename: _ _ _ _ _ _ _ _ _ _ _ _ _ _ market.userdetails.tpl
	* Base path to the file: _ _ _ _ _ _ _ modules/market/tpl/market.userdetails.tpl
	* Recommended path to the file: _ _ _ _ themes/your-theme-name/modules/market/market.userdetails.tpl
	* Main business logic:_ _ _ _ _ _ _ _ _ modules/market/inc/market.userdetails.php
	* Назначение:
	*   Шаблон вкладки «Товары» в профиле пользователя (users.php?m=details&tab=market).
	*   Подключается через хук users.details.tags (см. market.userdetails.php).
	*   Отображает:
	*     - список категорий, в которых у пользователя есть товары (табы);
	*     - сетку карточек товаров пользователя;
	*     - кнопку «Загрузить ещё» с AJAX-подгрузкой (без перезагрузки);
	*     - классическую пагинацию;
	*     - кнопку «Добавить товар» (если есть право записи).
	*
	*   AJAX-подгрузка работает через параметр ajax=1 и возвращает JSON:
	*   {rows: "<html>", pagination: "<html>"}.
	*
	* Основные параметры URL:
	*   m=details               — метод модуля users (профиль пользователя);
	*   id=<user_id>            — ID пользователя;
	*   u=<username>            — ник пользователя (для ЧПУ);
	*   tab=market              — активная вкладка «Товары»;
	*   cat=<код категории>     — фильтр по категории товаров;
	*   dmarket=<смещение>      — постраничная навигация (шаг = товаров на страницу);
	*   ajax=1                  — флаг AJAX-запроса (возвращает JSON).
	*
	* Основные теги шаблона:
	*   MARKET_ADD_URL              — URL формы добавления товара;
	*   MARKET_ADD_SHOWBUTTON       — флаг: показывать ли кнопку «Добавить товар»;
	*   MARKET_TAB_URL              — URL вкладки «Товары» текущего пользователя;
	*   MARKET                      — итоговый HTML вкладки (генерируется в PHP);
	*   CAT_ROW                     — блок одной категории (таб):
	*     MARKET_CAT_ROW_TITLE         — название категории (с учётом i18n4marketpro);
	*     MARKET_CAT_ROW_ICON          — путь к иконке категории;
	*     MARKET_CAT_ROW_URL           — URL фильтра по категории;
	*     MARKET_CAT_ROW_COUNT_MARKET  — количество товаров в категории;
	*     MARKET_CAT_ROW_SELECT        — 1, если категория активна (выбрана);
	*   MARKET_ROWS                 — блок одной карточки товара:
	*     MARKET_ROW_*                 — стандартные теги товара (см. cot_generate_markettags());
	*     MARKET_ROW_ADMIN_EDIT        — ссылка «Редактировать» (для владельца/админа);
	*     MARKET_ROW_ADMIN_DELETE      — ссылка «Удалить» с подтверждением (для владельца/админа);
	*     MARKET_ROW_ADMIN_UNVALIDATE  — ссылка «Отправить на модерацию» (для админа);
	*   LOAD_MORE_URL               — URL AJAX-запроса следующей страницы (dmarket=смещение);
	*   LOAD_MORE_PERPAGE           — количество товаров на страницу;
	*   LOAD_MORE_TOTALPAGES        — всего страниц;
	*   LOAD_MORE_CURRENTPAGE       — текущая страница;
	*   LOAD_MORE_LANG              — JSON с локализованными строками для JS:
	*                                 load_more, loading, error;
	*   PAGINATION / PREVIOUS_PAGE / NEXT_PAGE / CURRENT_PAGE / TOTAL_PAGES — пагинация.
	*
	* Родительский шаблон получает (см. market.userdetails.php):
	*   USERS_DETAILS_MARKET_COUNT      — общее количество товаров пользователя;
	*   USERS_DETAILS_MARKET_TAB_URL    — URL вкладки «Товары»;
	*   MARKET_VENDOR_SHOWCASE_URL      — URL витрины продавца (market.vendor.php).
	*
	* Используемые плагины (опционально):
	*   attacher        — вывод изображений товара (att_count / att_display);
	*   i18n4marketpro  — перевод названий категорий на текущий язык.
	*
	* Хуки (в market.userdetails.php):
	*   market.userdetails.query       — модификация условий SQL-запроса (основной и AJAX);
	*   market.userdetails.loop        — внутри цикла вывода товаров (основной и AJAX);
	*   market.userdetails.tags        — перед финальным парсингом шаблона.
	*
	* Source and updates   https://github.com/webitproff/marketpro-cotonti
	* ReadMeMore:          https://abuyfile.com/ru/market/cotonti/plugs/marketpro
	* Support:             https://abuyfile.com/ru/forums/cotonti/custom/marketpro
	*
	* Date: Oct 09, 2026
	*
	* @package market
	* @version 5.7.9
	* @author webitproff
	* @copyright Copyright (c) webitproff 2026 | https://github.com/webitproff
	* @license BSD	
-->


<!-- BEGIN: MAIN -->
<div class="card mb-4">
	<div class="card-body">
		<h4 class="d-flex align-items-center mb-4">
			{PHP.L.market_user_products}
			<!-- IF {MARKET_ADD_SHOWBUTTON} -->
			<a href="{MARKET_ADD_URL}" class="btn btn-success ms-auto">
				{PHP.L.market_goto_add_new_item_title}
			</a>
			<!-- ENDIF -->
		</h4>
		
		<ul class="nav nav-tabs mb-4">
			<li class="nav-item">
				<a class="nav-link" href="{MARKET_TAB_URL}">
					{PHP.L.All}
				</a>
			</li>
			<!-- BEGIN: CAT_ROW -->
			<li class="nav-item <!-- IF {MARKET_CAT_ROW_SELECT} -->active<!-- ENDIF -->">
				<a class="nav-link <!-- IF {MARKET_CAT_ROW_SELECT} -->active<!-- ENDIF -->" href="{MARKET_CAT_ROW_URL}">
					<!-- IF {MARKET_CAT_ROW_ICON} -->
					<img src="{MARKET_CAT_ROW_ICON}" alt="{MARKET_CAT_ROW_TITLE}" class="me-1">
					<!-- ENDIF -->
					{MARKET_CAT_ROW_TITLE}
					<span class="badge bg-dark ms-1">{MARKET_CAT_ROW_COUNT_MARKET}</span>
				</a>
			</li>
			<!-- END: CAT_ROW -->
		</ul>
		
	</div>
</div>
<div class="row row-cols-1 row-cols-xxl-3 row-cols-lg-2 row-cols-md-1 g-3 g-lg-4" id="market-items-container">
	<!-- BEGIN: MARKET_ROWS -->
	<div class="col">
		<article class="card product-card h-100 shadow-sm">
			<!-- Изображение -->
			<a href="{MARKET_ROW_URL}" class="product-card-img-link" title="{MARKET_ROW_TITLE}">
				<!-- IF {PHP|cot_plugin_active('attacher')} -->
				<!-- IF {MARKET_ROW_ID|att_count('market', $this, '', 'images')} > 0 -->
				{MARKET_ROW_ID|att_display('market', $this, '', 'attacher.display.marketlist', 'images', 1)}
				<!-- ELSE -->
				<img src="{PHP.R.page_default_image}" alt="{MARKET_ROW_TITLE}" class="product-card-img">
				<!-- ENDIF -->
				<!-- ELSE -->
				<img src="{PHP.R.page_default_image}" alt="{MARKET_ROW_TITLE}" class="product-card-img">
				<!-- ENDIF -->
				
				<!-- Бейдж статуса поверх изображения -->
				<!-- IF {PHP.usr.isadmin} OR {PHP.usr.id} == {MARKET_ROW_OWNER_ID} -->
				<!-- IF {MARKET_ROW_STATE} == '2' -->
				<span class="product-card-status badge bg-warning text-dark">{MARKET_ROW_LOCAL_STATUS}</span>
				<!-- ENDIF -->
				<!-- IF {MARKET_ROW_STATE} == '1' -->
				<span class="product-card-status badge bg-danger text-white">{MARKET_ROW_LOCAL_STATUS}</span>
				<!-- ENDIF -->
				<!-- ENDIF -->
			</a>
			
			<div class="card-body d-flex flex-column">
				
				<!-- Заголовок -->
				<h3 class="product-card-title">
					<a href="{MARKET_ROW_URL}" title="{MARKET_ROW_TITLE}">{MARKET_ROW_TITLE}</a>
				</h3>
				<div class="d-flex justify-content-between align-items-center mb-2">					
					<!-- Рейтинг -->
					<!-- IF {PHP|cot_plugin_active('marketreviews')} -->
					<div class="product-card-rating">
						<span class="review-stars" title="{PHP.L.marketreviews_pageRatingValue}">{MARKET_ROW_REVIEWS_AVG_STARS_HTML}</span>
						<!-- IF {MARKET_ROW_REVIEWS_TOTAL_COUNT} > 0 -->
						<span class="text-muted small ms-1">
							<i class="fa-solid fa-comment-dots"></i> {MARKET_ROW_REVIEWS_TOTAL_COUNT}
						</span>
						<!-- ENDIF -->
					</div>
					<!-- ENDIF -->
					<!-- IF {PHP.usr.isadmin} OR {PHP.usr.id} === {MARKET_ROW_OWNER_ID} -->
					<div class="dropdown">
						<button class="btn btn-outline-warning btn-lg rounded-circle d-flex align-items-center justify-content-center shadow-sm" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="width:32px;height:32px;">
							<i class="fa-solid fa-ellipsis-v"></i>
						</button>
						<ul class="dropdown-menu dropdown-menu-end border shadow-sm py-3" style="min-width:280px;">
							<!-- IF {MARKET_ROW_ADMIN_EDIT} -->
							<li>
								<a class="dropdown-item py-2 px-4" 
								href="{MARKET_ROW_ADMIN_EDIT_URL}">
									{PHP.L.Edit}
								</a>
							</li>
							<!-- ENDIF -->
							<!-- IF {MARKET_ROW_ADMIN_DELETE} -->
							<li>
								<a class="dropdown-item py-2 px-4" 
								href="{MARKET_ROW_ADMIN_DELETE_URL}">
									{PHP.L.Delete}
								</a>
							</li>
							<!-- ENDIF -->
							<!-- IF {MARKET_ROW_ADMIN_UNVALIDATE} -->
							<li>
								<a class="dropdown-item py-2 px-4" 
								href="{MARKET_ROW_ADMIN_UNVALIDATE_URL}">
									{PHP.L.Putinvalidationqueue}
								</a>
							</li>
							<!-- ENDIF -->
						</ul>
					</div>
					<!-- ENDIF -->
				</div>
				
				<!-- Описание -->
				<!-- IF {MARKET_ROW_DESCRIPTION} -->
				<p class="product-card-desc text-muted small">{MARKET_ROW_DESCRIPTION|strip_tags($this)|mb_substr($this,0,120,'UTF-8')}...</p>
				<!-- ELSE -->
				<p class="product-card-desc text-muted small">{MARKET_ROW_TEXT_CUT|strip_tags($this)|mb_substr($this,0,120,'UTF-8')}...</p>
				<!-- ENDIF -->
				
				<!-- Категория -->
				<!-- IF {LIST_CAT_CODE} == '' -->
				<div class="product-card-cat small">{MARKET_ROW_CAT_TITLE}</div>
				<!-- ENDIF -->
				
				<!-- Доп поля -->
				<!-- IF {PHP|cot_plugin_active('xtradbrowmarket')} -->
				<div class="product-card-extra d-flex gap-3 mt-2">
					<!-- IF {MARKET_ROW_XTRADBROWMARKET_011_GITHUB_RC} -->
					<a target="_blank" rel="nofollow noreferrer noopener" href="{MARKET_ROW_XTRADBROWMARKET_011_GITHUB_RC}"
					data-bs-toggle="tooltip" data-bs-html="true"
					data-bs-title="{MARKET_ROW_XTRADBROWMARKET_011_GITHUB_RC_TITLE} {PHP.L.xtradbrowmarket_github_rc_tooltip}">
						<i class="fa-brands fa-github fa-lg"></i>
					</a>
					<!-- ENDIF -->
					<!-- IF {MARKET_ROW_XTRA_010_FORUM_LINK} -->
					<a target="_blank" rel="nofollow noreferrer noopener" href="{MARKET_ROW_XTRA_010_FORUM_LINK}"
					data-bs-toggle="tooltip" data-bs-html="true"
					data-bs-title="{MARKET_ROW_XTRA_010_FORUM_LINK_TITLE}. {PHP.L.xtradbrowmarket_forum_link_tooltip}">
						<i class="fa-solid fa-person-circle-question fa-lg"></i>
					</a>
					<!-- ENDIF -->
				</div>
				<!-- ENDIF -->
				
				<!-- Цена + владелец + кнопки (внизу карточки) -->
				<div class="product-card-footer mt-auto pt-3">
					
					<!-- Цена -->
					<!-- IF {PHP|cot_plugin_active('marketcurrencyswitcher')} -->
					<!-- IF {MARKET_ROW_COSTDFLT} > 0 -->
					<div class="product-card-price">
						<span class="price-label text-muted small">{PHP.L.market_price}</span>
						<span class="market-price fw-bold" data-base-price="{MARKET_ROW_COST_RAW}">
							{MARKET_ROW_COSTDFLT} {PHP.cfg.payments.valuta}
						</span>
					</div>
					<!-- ENDIF -->
					<!-- ELSE -->
					<!-- IF {MARKET_ROW_COSTDFLT} > 0 -->
					<div class="product-card-price fw-bold">
						{MARKET_ROW_COSTDFLT}
						<!-- IF {PHP.cfg.payments.valuta} -->{PHP.cfg.payments.valuta}<!-- ELSE -->{PHP.cfg.market.market_currency}<!-- ENDIF -->
					</div>
					<!-- ENDIF -->
					<!-- ENDIF -->
					
					
					
					<!-- Кнопки -->
					<div class="product-card-actions d-flex gap-2 mt-3">
						<!-- IF {PHP|cot_plugin_active('payordersmarket')} AND {PHP.usr.id} -->
						<!-- IF !{MARKET_ROW_ORDER_IN_CART} -->
						<a href="javascript:void(0)" class="btn btn-sm btn-success add-to-cart flex-grow-1" data-id="{MARKET_ROW_ID}">
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
	<!-- END: MARKET_ROWS -->
</div>

<!-- IF {LOAD_MORE_TOTALPAGES} > {LOAD_MORE_CURRENTPAGE} -->
<div class="text-center mt-5 load-more-container" id="load-more-container">
    <button class="btn btn-primary" id="load-more-products" 
	data-url="{LOAD_MORE_URL}" 
	data-perpage="{LOAD_MORE_PERPAGE}" 
	data-total="{LOAD_MORE_TOTALPAGES}" 
	data-page="{LOAD_MORE_CURRENTPAGE}">{PHP.L.market_load_more}</button>
</div>
<!-- ENDIF -->

<div id="pagination-block">
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


<script>
	var marketLang = {LOAD_MORE_LANG};
</script>

<script>
	$(document).ready(function() {
		var loadMoreBtn = $('#load-more-products');
		if (loadMoreBtn.length === 0) return;
		
		var container = $('#market-items-container');
		var loading = false;
		var currentPage = parseInt(loadMoreBtn.data('page'));
		var totalPages = parseInt(loadMoreBtn.data('total'));
		var perpage = parseInt(loadMoreBtn.data('perpage'));
		var baseUrl = loadMoreBtn.data('url');
		
		function updateButtonText() {
			if (currentPage < totalPages) {
				var nextPage = currentPage + 1;
				var text = marketLang.load_more.replace('%d', nextPage).replace('%d', totalPages);
				loadMoreBtn.text(text);
				} else {
				loadMoreBtn.hide();
			}
		}
		
		updateButtonText();
		
		loadMoreBtn.click(function(e) {
			e.preventDefault();
			if (loading || currentPage >= totalPages) return;
			
			loading = true;
			var originalText = loadMoreBtn.text();
			loadMoreBtn.prop('disabled', true).html(marketLang.loading);
			
			var nextOffset = currentPage * perpage;
			var url = baseUrl + '&dmarket=' + nextOffset;
			
			$.getJSON(url, function(data) {
				if (data.rows.trim() === '') {
					loadMoreBtn.hide();
					return;
				}
				container.append(data.rows);
				$('#pagination-block').html(data.pagination);
				currentPage++;
				loadMoreBtn.data('page', currentPage);
				
				loadMoreBtn.prop('disabled', false);
				updateButtonText();
				
				if (currentPage >= totalPages) {
					loadMoreBtn.hide();
				}
				loading = false;
				}).fail(function() {
				loading = false;
				loadMoreBtn.prop('disabled', false).text(originalText);
				alert(marketLang.error);
			});
		});
	});
</script>
<!-- IF {PHP|function_exists('cot_debug_tpl_url')} AND {PHP.usr.maingrp} == 5 -->
<div class="alert alert-warning mt-4">
	<p> {PHP.L.langSkStr_debug_tpl_note_1} <code>system/functions.custom.php</code></p> 
	<p> {PHP.L.langSkStr_debug_tpl_note_2} </p> 
	<p> {PHP.L.langSkStr_debug_tpl_note_3} </p> 
	<div class="text-danger fw-semibold">{PHP|cot_debug_tpl_url()}</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->
