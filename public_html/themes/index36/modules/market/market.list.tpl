<!-- 
	* Market PRO Module for CMF Cotonti, PHP v.8.5+, MySQL v.8.4
	*
	* Filename: _ _ _ _ _ _ _ _ _ _ _ _ _ _ market.list.tpl
	* Base path to the file: _ _ _ _ _ _ _ modules/market/tpl/market.list.tpl
	* Recommended path to the file: _ _ _ _ themes/your-theme-name/modules/market/market.list.tpl
	* Main business logic:_ _ _ _ _ _ _ _ _ modules/market/inc/market.list.php
	* Назначение:
	*   Шаблон списка товаров модуля Market. Отображает каталог товаров
	*   как при выбранной категории, так и без неё. Поддерживает «свой»
	*   поиск (внутри модуля), сортировку, фильтрацию по extrafields,
	*   пагинацию товаров и пагинацию подкатегорий. Работает со специальными
	*   категориями: 'all', 'system', 'unvalidated', 'saved_drafts'.
	*
	*   ПРИМЕР https://abuyfile.com/ru/market
	*
	* Основные параметры URL:
	*   c=<код категории>       — текущая категория (пусто = все товары);
	*   s=<поле сортировки>     — поле сортировки (без префикса fieldmrkt_);
	*   w=<asc|desc>            — направление сортировки;
	*   sq=<запрос>             — поисковый запрос;
	*   search_in=<область>     — область поиска: title, full, pcod;
	*   ord[]=<поля фильтра>    — массив полей фильтрации (без префикса);
	*   p[]=<значения фильтра>  — массив значений фильтра;
	*   d=<страница>            — страница товаров (пагинация);
	*   dc=<страница>           — страница подкатегорий (пагинация).
	*
	* Основные теги шаблона:
	*   Список / категория:
	*     LIST_CAT_CODE                       — код текущей категории;
	*     LIST_CAT_COUNT                      — количество товаров в категории;
	*     LIST_CAT_TITLE                      — заголовок категории (экранированный);
	*     LIST_CAT_TITLE_LANG_LINE            — строка языкового пакета по коду категории (опц.);
	*     LIST_CAT_TITLE_LISTITEMS_SCHEMAORG_LANG_LINE — строка для schema.org ListItem (опц.);
	*     LIST_CAT_DESCRIPTION                — описание категории;
	*     LIST_CAT_URL                        — URL текущей категории;
	*     LIST_CAT_ICON / LIST_CAT_ICON_SRC   — HTML-иконка и путь к иконке категории;
	*     LIST_CAT_RSS                        — URL RSS-ленты категории;
	*     LIST_CAT_PATH / _PATH_SHORT         — хлебные крошки (полные / короткие);
	*     LIST_BREADCRUMBS_FULL               — полные хлебные крошки (главная + market + путь);
	*     LIST_BREADCRUMBS / _SHORT           — альтернативные варианты крошек;
	*     LIST_CAT_<EXFIELD>[_TITLE|_VALUE]   — extrafields категории;
	*     LIST_SUBMIT_NEW_ITEM[_URL]          — кнопка «Добавить товар» и её URL.
	*
	*   Список / подкатегории (BEGIN: LIST_CAT_ROW):
	*     LIST_CAT_ROW_ID                     — ID подкатегории;
	*     LIST_CAT_ROW_URL                    — URL подкатегории;
	*     LIST_CAT_ROW_TITLE                  — название подкатегории (экранир.);
	*     LIST_CAT_ROW_DESCRIPTION            — описание;
	*     LIST_CAT_ROW_ICON / _ICON_SRC       — HTML-иконка и путь к иконке;
	*     LIST_CAT_ROW_COUNT                  — число товаров (с вложенными);
	*     LIST_CAT_ROW_NUM                    — порядковый номер;
	*     LIST_CAT_ROW_<EXFIELD>[_TITLE|_VALUE] — extrafields подкатегории;
	*     LIST_CAT_PAGINATION / PREVIOUS_PAGE / NEXT_PAGE / CURRENT_PAGE / TOTAL_PAGES
	*                                         — пагинация подкатегорий.
	*
	*   Форма поиска:
	*     MARKET_SEARCH_ACTION_URL            — URL действия формы;
	*     MARKET_SEARCH_SQ                    — поле ввода поискового запроса;
	*     MARKET_SEARCH_CAT_SELECT2           — Select2 с категориями;
	*     MARKET_SEARCH_RESULT_MSG            — сообщение о результатах поиска.
	*
	*   Список / товары (BEGIN: LIST_ROW):
	*     LIST_ROW_*                          — стандартные теги товара (cot_generate_markettags());
	*     LIST_ROW_OWNER / OWNER_*            — теги владельца (cot_build_user / cot_generate_usertags);
	*     LIST_ROW_ODDEVEN / NUM / ABS_NUM    — чётность, номер строки, абсолютный номер;
	*     LIST_ROW_LOCAL_STATUS / STATE       — статус товара (для владельца / админа).
	*
	*   Сортировка (шапки таблиц/колонок):
	*     LIST_TOP_<FIELD>                    — ссылка сортировки со стрелками;
	*     LIST_TOP_<FIELD>_URL_ASC|_URL_DESC  — отдельные URL сортировки вверх/вниз.
	*
	*   Подсветка поиска:
	*     SEARCH_HIGHLIGHT_ACTIVE             — флаг: показывать ли CSS/JS подсветки;
	*     SEARCH_HIGHLIGHT_WORDS              — JSON-массив слов;
	*     SEARCH_HIGHLIGHT_SCOPE              — CSS-селектор области подсветки.
	*
	*   Прочее:
	*     PAGINATION / PREVIOUS_PAGE / NEXT_PAGE / CURRENT_PAGE / TOTAL_PAGES — пагинация товаров;
	*     TPL_PATH                            — путь к файлу шаблона (только админ).
	*
	* Используемые плагины (опционально):
	*   i18n4marketpro        — переводы названий/полей и поиск по переводам;
	*   marketprofilter       — расширенные фильтры (форма, сообщения);
	*   marketreviews         — звёзды рейтинга, счётчик отзывов, последние отзывы;
	*   marketcurrencyswitcher— вывод цены с data-base-price для JS-конвертера;
	*   xtradbrowmarket       — доп. поля товара (например, XTRA_011_GITHUB_RC, XTRA_010_FORUM_LINK);
	*   payordersmarket       — кнопка «В корзину» / метка «В корзине», модалка авторизации;
	*   attacher              — вывод изображений товара (att_count / att_display).
	*
	* Хуки (в market.list.php):
	*   market.list.first             — в начале, до загрузки структуры и параметров;
	*   market.list.query             — перед формированием SQL-запросов;
	*   market.list.main              — после подготовки основных данных и шаблона;
	*   market.list.rowcat.first      — перед выводом списка подкатегорий;
	*   market.list.rowcat.loop       — внутри цикла вывода подкатегорий;
	*   market.list.before_loop       — перед циклом вывода товаров;
	*   market.list.loop              — внутри цикла вывода товаров;
	*   market.list.tags              — перед финальным парсингом шаблона.
	*
	* Source and updates   https://github.com/webitproff/marketpro-cotonti
	* ReadMeMore:          https://abuyfile.com/ru/market/cotonti/plugs/marketpro
	* Support:             https://abuyfile.com/ru/forums/cotonti/custom/marketpro
	*
	* Date: Sep 23, 2026
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
		<div class="ps-container-breadcrumb">
			<ol class="breadcrumb d-flex mb-0">
				{LIST_BREADCRUMBS_FULL}
			</ol>
		</div>
	</nav>
</div>
<div class="container-fluid px-3 px-lg-5 py-5">
	<!-- IF {PHP|cot_plugin_active('marketprofilter')} AND {MARKETFILTER_MESSAGE} -->
	<div class="alert {MARKETFILTER_MESSAGE_CLASS}"> {MARKETFILTER_MESSAGE} </div>
	<!-- ENDIF --> 
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
	<div class="col-12">
		<div class="row align-items-center mb-2">
			<div class="col-md-8 col-lg-9 col-12 col-auto">
				<!-- IF {LIST_CAT_CODE} == '' -->
				<h1 class="h4 my-0">{PHP.cfg.market.marketlist_default_title}</h1>
				<!-- ENDIF -->
				<!-- IF {LIST_CAT_CODE} -->
				<div class="row align-items-center">
					<div class="col-auto">
						<div class="position-relative">
							<!-- IF {LIST_CAT_ICON} -->
							<img width="27" height="27" alt="{LIST_CAT_TITLE}" src="{LIST_CAT_ICON_SRC}">
							<!-- ELSE -->
							<img width="27" height="27" alt="{LIST_CAT_TITLE}" src="{PHP.R.market_icon_cat_default}">
							<!-- ENDIF -->
							<!-- IF {LIST_CAT_COUNT} > 0 -->
							<span class="position-absolute top-0 start-100 translate-middle badge text-bg-primary">{LIST_CAT_COUNT}</span>
							<!-- ENDIF -->
						</div>
					</div>
					<div class="col">
						<h1 class="h4 my-0">{LIST_CAT_TITLE}</h1>
					</div>
				</div>
				<!-- ENDIF -->
			</div>
			<!-- IF {PHP|cot_auth('market', 'any', 'W')} -->
			<!-- IF {LIST_CAT_CODE} -->
			<div class="col-md-4 col-lg-3 col-12 d-flex justify-content-center justify-content-md-end mt-3 mt-md-0">
				<a class="btn btn-outline-warning" href="{PHP|cot_url('market', 'm=add', '&c={LIST_CAT_CODE}')}">{PHP.L.market_goto_add_new_item_title}</a>
			</div>
			<!-- ELSE -->
			<div class="col-md-4 col-lg-3 col-12 d-flex justify-content-center justify-content-md-end mt-3 mt-md-0">
				<a class="btn btn-outline-success" href="{PHP|cot_url('market', 'm=add')}">{PHP.L.market_goto_add_new_item_title}</a>
			</div>
			<!-- ENDIF -->
			<!-- ENDIF -->
		</div>
		<!-- IF {LIST_CAT_DESCRIPTION} -->
		<h2 class="h5 mb-4">{LIST_CAT_DESCRIPTION}</h2>
		<!-- ENDIF -->
	</div>
	
	<div class="card card-body mb-3">
		<form action="{MARKET_SEARCH_ACTION_URL}" method="get" class="row g-2">
			<input type="hidden" name="e" value="market">
			<input type="hidden" name="l" value="{PHP.lang}" />
			<div class="col-md-2">
				<!-- Кнопка открытия offcanvas с формой фильтров.
				Целится в #marketFilterOffcanvas, который добавлен ниже. -->
				<button type="button"
				class="btn btn-outline-primary w-100"
				data-bs-toggle="offcanvas"
				data-bs-target="#marketFilterOffcanvas"
				aria-controls="marketFilterOffcanvas">
					<i class="fa-solid fa-filter me-1"></i> {PHP.L.marketprofilter_apply}
				</button>
			</div>					
			<div class="col-md-4">
				{MARKET_SEARCH_SQ}
			</div>
			
			<div class="col-md-4">
				{MARKET_SEARCH_CAT_SELECT2}
			</div>
			
			<div class="col-md-2">
				<div class="row">
					<div class="col-6">
						<button type="submit" title="{PHP.L.Search}" class="btn btn-primary"><i class="fa-solid fa-magnifying-glass"></i></button>
					</div>
					<div class="col-6">
						<a class="btn btn-outline-danger" title="{PHP.L.marketprofilter_reset}" href="{PHP|cot_url('market')}"><i class="fa-solid fa-filter-circle-xmark"></i></a>
					</div>
				</div>
			</div>
			<div class="row mt-2">
				<div class="col-12">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="search_in" id="search_in_title" value="title" <!-- IF {PHP.search_in} == '' OR {PHP.search_in} == 'title' -->checked="checked"<!-- ENDIF -->>
						<label class="form-check-label" for="search_in_title">{PHP.L.market_search_in_title}</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="search_in" id="search_in_full" value="full" <!-- IF {PHP.search_in} == 'full' -->checked="checked"<!-- ENDIF -->>
						<label class="form-check-label" for="search_in_full">{PHP.L.market_search_in_title_and_descr}</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="search_in" id="search_in_pcod" value="pcod" <!-- IF {PHP.search_in} == 'pcod' -->checked="checked"<!-- ENDIF -->>
						<label class="form-check-label" for="search_in_pcod">{PHP.L.market_search_in_pcod}</label>
					</div>
				</div>
			</div>
			<!-- IF {MARKET_SEARCH_RESULT_MSG} --> 
			<div class="alert alert-info" role="alert">
				{MARKET_SEARCH_RESULT_MSG}
			</div>
			<!-- ENDIF -->
		</form>
	</div>
	<div class="row g-4 mb-3" id="market-items-container">
<!-- BEGIN: LIST_ROW -->
<div class="col-12 col-md-6 col-xl-4">
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
                <!-- IF {LIST_ROW_XTRA_011_GITHUB_RC} -->
                <a target="_blank" rel="nofollow noreferrer noopener" href="{LIST_ROW_XTRA_011_GITHUB_RC}"
                   data-bs-toggle="tooltip" data-bs-html="true"
                   data-bs-title="{LIST_ROW_XTRA_011_GITHUB_RC_TITLE} {PHP.L.xtradbrowmarket_github_rc_tooltip}">
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

                <!-- Владелец -->
                <div class="product-card-owner d-flex align-items-center gap-2 mt-2">
                    <!-- IF {PHP|cot_plugin_active('userimages')} -->
                    <!-- IF {LIST_ROW_OWNER_AVATAR_SRC} -->
                    <img src="{LIST_ROW_OWNER_AVATAR_SRC}" alt="{LIST_ROW_OWNER_NICKNAME}" class="rounded-circle" width="28" height="28" style="object-fit:cover;">
                    <!-- ELSE -->
                    <img src="{PHP.R.userimg_default_avatar}" alt="{LIST_ROW_OWNER_NICKNAME}" class="rounded-circle" width="28" height="28" style="object-fit:cover;">
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                    <span class="text-muted small">{LIST_ROW_OWNER_NAME}</span>
                </div>

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
	<!-- IF {PAGINATION} -->
	<nav aria-label="Market Pagination" class="mt-3">
		<div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div>
		<ul class="pagination justify-content-center">{PREVIOUS_PAGE} {PAGINATION} {NEXT_PAGE}</ul>
	</nav>
	<!-- ENDIF -->
	<!-- IF {PHP.totallines} == 0 -->
	<div class="my-3">
		<div class="alert alert-light" role="alert"> {PHP.L.market_catEmpty} </div>
	</div>
	<!-- ENDIF -->
	
	
	<!-- IF {LIST_CAT_CODE} -->
	<blockquote>
		<p>{PHP.cfg.market.marketlist_default_title}</p>
		<p>{PHP.cfg.market.marketlist_default_desc}</p>
	</blockquote>
	<!-- ELSE -->
	<!-- IF {PHP|cot_plugin_active('marketreviews')} --> 
	{PHP|cot_marketreviews_last_tpl(3, 'listmarket')}
	<!-- ENDIF -->
	<!-- ENDIF -->
	
</div>


<!-- IF {SEARCH_HIGHLIGHT_ACTIVE} -->
<style>
	.search-highlight {
	font-weight: bold;
	letter-spacing: 1px;
	padding: 2px;
	color: #000 !important;
	background-color: #ffc107 !important;
	border-radius: 5px;
	}
</style>
<script>
	try {
		function highlightWords(node, regex, excludeElements) {
			if (node === null) return;
			excludeElements || (excludeElements = ['script', 'style', 'iframe', 'canvas', 'pre']);
			let child = node.firstChild;
			const callback = function(match) {
				let span = document.createElement('mark');
				span.className = 'search-highlight';
				span.textContent = match;
				return span;
			};
			while (child) {
				switch (child.nodeType) {
					case 1:
					if (excludeElements.indexOf(child.tagName.toLowerCase()) > -1) break;
					highlightWords(child, regex, excludeElements);
					break;
					case 3:
					let bk = 0;
					child.data.replace(regex, function(all) {
						let args = [].slice.call(arguments);
						let offset = args[args.length - 2];
						let newTextNode = child.splitText(offset + bk);
						let tag;
						bk -= child.data.length + all.length;
						newTextNode.data = newTextNode.data.substring(all.length);
						tag = callback.apply(window, [args[0]]);
						child.parentNode.insertBefore(tag, newTextNode);
						child = newTextNode;
					});
					regex.lastIndex = 0;
					break;
				}
				child = child.nextSibling;
			}
		}
		
		document.addEventListener('DOMContentLoaded', function() {
			var words = {SEARCH_HIGHLIGHT_WORDS};
			var scope = '{SEARCH_HIGHLIGHT_SCOPE}';
			if (words && Array.isArray(words) && words.length && scope) {
				var escapedWords = words.map(function(w) {
					if (typeof w !== 'string') return '';
					return w.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
				}).filter(function(w) { return w.length > 0; });
				if (escapedWords.length === 0) return;
				var regex = new RegExp(escapedWords.join('|'), 'gi');
				var elements = document.querySelectorAll(scope);
				elements.forEach(function(el) {
					highlightWords(el, regex);
				});
			}
		});
		} catch (e) {
		console.error('Ошибка подсветки, поиск продолжает работать:', e);
	}
</script>
<!-- ENDIF -->





<!-- IF {PHP|cot_plugin_active('marketprofilter')} -->
<div class="offcanvas offcanvas-end"
tabindex="-1"
id="marketFilterOffcanvas"
aria-labelledby="marketFilterOffcanvasLabel">
    <div class="offcanvas-header border-bottom">
        <h5 class="offcanvas-title" id="marketFilterOffcanvasLabel">
            <i class="fa-solid fa-filter me-2"></i>{PHP.L.marketprofilter_apply}
		</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="{PHP.L.Close}"></button>
	</div>
    <div class="offcanvas-body">
        {MARKET_FILTER_FORM}
	</div>
    <div class="offcanvas-footer p-3 border-top">
        <button type="button" class="btn btn-secondary w-100" data-bs-dismiss="offcanvas">
            <i class="fa-solid fa-times me-1"></i>{PHP.L.Close}
		</button>
	</div>
</div>
<!-- ENDIF -->




<!-- IF {PHP.usr.maingrp} == 5 --> 
<!-- IF {TPL_PATH} --> 
<div class="container-xxl py-5">
    <div class="alert alert-info" role="alert">
        {TPL_PATH}
	</div>
</div>
<!-- ENDIF -->
<!-- ENDIF -->


<!-- END: MAIN -->

