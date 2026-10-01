<!--
	* Market PRO Module for CMF Cotonti, PHP v.8.5+, MySQL v.8.4
	*
	* Filename: _ _ _ _ _ _ _ _ _ _ _ _ _ _ market.tree.sidebar.tpl
	* Base path to the file: _ _ _ _ _ _ _ modules/market/tpl/market.tree.sidebar.tpl
	* Recommended path to the file: _ _ _ _ themes/your-theme-name/modules/market/market.tree.sidebar.tpl
	* Main business logic:_ _ _ _ _ _ _ _ _ modules/market/inc/market.functions.php
	*                     _ _ _ _ _ SEE: cot_build_structure_market_tree()
	*
	* Назначение:
	*   Иерархическое дерево категорий (структуры) товаров модуля Market
	*   для боковых панелей. Вторичный шаблон. Вызывается внутри других
	*   шаблонов, например в themes/index36/header.tpl (сайдбар темы)
	*   и в themes/index36/modules/market/market.list.tpl (сайдбар страницы).
	*
	* Пример вызова:
	*   {PHP|cot_build_structure_market_tree('', '', 0, 'sidebar')}
	*
	*   ПРИМЕР https://abuyfile.com/ru/market
	*
	* Как работает:
	*   cot_build_structure_market_tree($parent, $selected, $level, $template)
	*   рекурсивно обходит категории market, для каждой ветки подключает
	*   файл market.tree.<template>.tpl (здесь template='sidebar'),
	*   передаёт набор тегов ROW_* и парсит блок CATS.
	*   Готовый HTML одного уровня возвращается в родителя и вставляется
	*   в контейнер {ROW_SUBCAT} — так строится дерево.
	*
	* Аргументы функции:
	*   $parent   — код родительской категории ('' — корень);
	*   $selected — код(ы) выбранной категории для подсветки (строка/массив);
	*   $level    — текущий уровень вложенности (0 — верхний);
	*   $template — часть имени файла шаблона (здесь 'sidebar').
	*
	* Особенности разметки:
	*   — Корневой <div> на уровне {LEVEL} == 0 получает id="market-tree-list".
	*     На вложенных уровнях id НЕ ставится (иначе дублирование id в DOM).
	*   — Каждому уровню ставится class="market-tree" и data-tree="desktop".
	*     По этому классу скрипты находят ВСЕ деревья на странице сразу.
	*   — Каждая категория — .list-group-item с data-id="{ROW_ID}" и
	*     data-level="{ROW_LEVEL}".
	*   — Кнопка-шеврон раскрытия: .toggle-subcats с data-bs-target="#sub-...".
	*
	* Теги шаблона:
	*   Уровень 0 (общие):
	*     LEVEL        — текущий уровень вложенности (int);
	*     TOTAL_COUNT  — всего опубликованных товаров во всём каталоге.
	*   Одна категория (BEGIN: CATS):
	*     ROW_ID            — код категории;
	*     ROW_TITLE         — название (экранированное);
	*     ROW_DESC          — описание;
	*     ROW_ICON          — путь к иконке;
	*     ROW_HREF          — URL перехода (c=<код>);
	*     ROW_URL           — альтернативный URL (i18n4marketpro, если активен);
	*     ROW_SELECTED      — 1, если категория совпадает с выбранной;
	*     ROW_SUBCAT        — HTML вложенного поддерева (рекурсия);
	*     ROW_LEVEL         — уровень вложенности;
	*     ROW_ODDEVEN       — odd/even;
	*     ROW_JJ            — порядковый номер в списке;
	*     ROW_COUNT         — товаров в категории (без потомков);
	*     ROW_PARENT_COUNT  — товаров в категории и во всех потомках;
	*     ROW_<EXFIELD>[_TITLE|_VALUE] — extrafields структуры категорий.
	*
	* Подсветка и раскрытие пути (клиентская часть):
	*   PHP-шаблон НЕ отдаёт класс active и НЕ раскрывает .collapse предков.
	*   Всё это делает JS-скрипт модуля, подключаемый хуком rc:
	*
	*     • modules/market/js/marketTreeScript.js
	*         Для режима без ЧПУ. Категория берётся из ?c=...
	*         Через hooks: modules/market/market.rc.php → Resources::linkFileFooter().
	*
	*     • modules/market/js/marketTreeScriptURLEditor.js
	*         Для режима ЧПУ (плагин urleditor с пресетом handy | myconfig |
	*         marketplace). Категория — последний сегмент URL-пути.
	*         Тот же хук market.rc.php выбирает этот файл автоматически.
	*
	*   Что делают оба скрипта:
	*     1) Находят активную категорию по data-id (совпадение с ?c= либо
	*        с последним сегментом URL).
	*     2) Вешают на её <a> класс active (стили — в CSS темы:
	*        .market-tree a.active { color: var(--accent); font-weight: 600; }).
	*     3) Раскрывают всех .collapse-предков активной категории,
	*        синхронизируя aria-expanded и иконку шеврона.
	*     4) Запоминают вручную раскрытые категории в localStorage
	*        под ключом market-tree-open и восстанавливают их при загрузке.
	*     5) Работают со ВСЕМИ .market-tree на странице (их может быть
	*        несколько одновременно: сайдбар темы + список товаров).
	*
	* Black-list категорий:
	*   cfg.market.marketblacktreecatspage — список кодов через запятую,
	*   исключаемых из дерева.
	*
	* Структура блоков шаблона:
	*   MAIN       — корневой блок;
	*   MAIN.CATS  — блок одной категории (BEGIN/END: CATS).
	*
	* Хуки (в market.functions.php → cot_build_structure_market_tree()):
	*   market.tree.first   — в начале функции;
	*   market.tree.main    — после создания XTemplate, до цикла;
	*   market.tree.loop    — внутри цикла по каждой категории.
	*
	* Source and updates   https://github.com/webitproff/marketpro-cotonti
	* ReadMeMore:          https://abuyfile.com/ru/market/cotonti/plugs/marketpro
	* Support:             https://abuyfile.com/ru/forums/cotonti/custom/marketpro
	*
	* Date: Sep 27, 2026
	*
	* @package market
	* @version 5.7.9
	* @author webitproff
	* @copyright Copyright (c) webitproff 2026 | https://github.com/webitproff
	* @license BSD
-->



<!-- BEGIN: MAIN -->	
<div<!-- IF {LEVEL} == 0 --> id="market-tree-list"<!-- ENDIF --> class="market-tree" data-tree="desktop">
	<div class="list-group list-group-flush">
		<!-- BEGIN: CATS -->
		<div class="list-group-item py-2" data-level="{ROW_LEVEL}" data-id="{ROW_ID}">
			<div class="d-flex align-items-center min-vh-0">
				<div class="flex-grow-1">

					<a href="{ROW_HREF}" class="text-decoration-none fw-medium">
						{ROW_TITLE}
					</a>

				<!-- IF {PHP.usr.maingrp} == 5 --> 
					<!-- IF {ROW_SUBCAT} -->
						{ROW_PARENT_COUNT}
					<!-- ELSE -->
						<span class="badge bg-secondary ms-2 small">{ROW_COUNT}</span>
					<!-- ENDIF -->
				<!-- ENDIF -->

				</div>

				<!-- IF {ROW_SUBCAT} -->
				<a class="my-0 toggle-subcats"
						type="button"
						data-bs-toggle="collapse"
						data-bs-target="#sub-{ROW_LEVEL}-{ROW_JJ}-{ROW_ID}">
					<i class="fa-solid fa-chevron-left"></i>
				</a>
				<!-- ENDIF -->
			</div>

			<!-- IF {ROW_SUBCAT} -->
			
				<div id="sub-{ROW_LEVEL}-{ROW_JJ}-{ROW_ID}" class="collapse">
					<div class="mt-2">{ROW_SUBCAT}</div>
				</div>
			
			<!-- ENDIF -->

		</div>
		<!-- END: CATS -->
	</div>
</div>
<!-- END: MAIN -->
