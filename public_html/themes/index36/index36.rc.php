<?php
/**
 * Index36 - Theme for Cotonti CMF
 * JavaScript and CSS loader. 
 * Read about this file: https://abuyfile.com/ru/cotonti/reading/kak-pravilno-usr-theme-ili-cfg-defaulttheme
 *
 * Compatibility: [CMF/CMS Cotonti V.1](https://github.com/Cotonti/Cotonti); PHP-8.5 & MySQL-8.4
 * File: index36.rc.php
 * Placement: /themes/index36/index36.rc.php
 * Description: connection CSS & JS files, plugins, frameworks, libraries
 *              for the front-end (public) part of the site.
 * Created: 01 Feb 2026
 * Updated: 05 Oct 2026
 * Source code: https://github.com/webitproff/index36-cotonti-theme
 * Support & Help: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
 * Page in Marketplace: https://abuyfile.com/ru/market/cotonti/themes/index36
 *
 * @package index36
 * @version 2.1.1
 * @author webitproff
 * @copyright (c) 2026 webitproff | https://github.com/webitproff
 * @license BSD (Free using and distribution with saving copyrights)
 */

/* =====================================================================
 * ДОКУМЕНТАЦИЯ ПО ФАЙЛУ index36.rc.php
 * =====================================================================
 *
 * Назначение:
 *   Файл темы фронтальной (публичной) части сайта, который регистрирует
 *   CSS и JavaScript ресурсы (файлы и встроенный код) в статическом
 *   реестре класса Resources. Движок затем выводит эти ресурсы в <head>
 *   страницы (Resources::render) и в футер (Resources::renderFooter).
 *
 *   Это НЕ админский файл. Он подключается только тогда, когда
 *   константа COT_ADMIN не определена, то есть на всех страницах
 *   публичной части.
 *
 * Место в архитектуре Cotonti:
 *   Регистрация и вывод ресурсов выполняются классом
 *   Resources (system/resources.php). Класс хранит:
 *     - статический реестр $registry — для <head> при консолидации;
 *     - статический реестр $headerRc — для <head> без консолидации;
 *     - статический реестр $footerRc — для футера;
 *     - статический массив $addedFiles — карта уже добавленных файлов;
 *     - карту алиасов $alias ('@jQuery', '@bootstrap', '@select2' и т.п.);
 *     - флаги $cacheOn, $consolidate, $minify, $isAdmin,
 *       $headerComplete, $htmlCleanupEnabled.
 *
 *   Инициализация класса:
 *     Resources::__init() вызывается в конце resources.php и читает
 *     настройки $cfg:
 *       cache, headrc_consolidate, headrc_minify, html_cleanup,
 *       cache_dir, dir_perms.
 *     Флаг $isAdmin устанавливается по COT_ADMIN. Для фронта
 *     $isAdmin === false, значит консолидация и минификация РАБОТАЮТ,
 *     если включены соответствующие опции.
 *
 *   Цепочка загрузки в system/common.php (секция "Head Resources"):
 *     if (!defined('COT_ADMIN')) {
 *         if (file_exists("{$cfg['themes_dir']}/{$usr['theme']}/{$usr['theme']}.rc.php")) {
 *             include "{$cfg['themes_dir']}/{$usr['theme']}/{$usr['theme']}.rc.php";
 *         }
 *     }
 *
 *   То есть этот файл подключается движком автоматически в секции
 *   Head Resources — ПОСЛЕ проверки anti-XSS, ПОСЛЕ включения
 *   cot_rc_add_standard() и ПОСЛЕ хука 'rc'. Он подключается
 *   до вызова Resources::render() в header.php.
 *
 * Условия загрузки:
 *   - НЕ определена константа COT_ADMIN;
 *   - файл существует по пути:
 *       themes/{$usr['theme']}/{$usr['theme']}.rc.php;
 *   - Resources::__init() уже отработал;
 *   - cot_rc_add_standard() уже подключал стандартные ресурсы
 *     (jQuery, js/base.js, js/ajax_on.js).
 *
 * Переменные окружения, доступные в файле:
 *   $cfg   — конфигурация сайта: themes_dir, cache_dir, cache,
 *            headrc_consolidate, headrc_minify, html_cleanup,
 *            debug_mode, gzip, defaulttheme, defaulticons.
 *   $usr   — пользователь: id, theme, scheme, lang, maingrp, auth.
 *   $sys   — системные: abs_url, site_uri, scheme, now.
 *   $L     — языковые строки.
 *   $R     — ресурсные строки (см. resources.rc.php).
 *   $theme — имя текущей темы (может быть ещё не определено на момент
 *            выполнения .rc.php; в common.php $theme назначается позже,
 *            в блоке Theme / color scheme).
 *   $db    — объект CotDB.
 *
 * Публичный API класса Resources:
 *
 *   Resources::addFile($path, $type = '', $order = 50, $scope = 'global')
 *     Добавляет файл в реестр <head> (с консолидацией, если она включена).
 *     - $path — путь от корня, полный URL или алиас ('@...');
 *     - $type — 'js' или 'css'; если пусто — определяется по расширению;
 *     - $order — порядок (меньше = раньше);
 *     - $scope — global / guest / user / group_N.
 *
 *   Resources::linkFile($path, $type = '', $order = 50)
 *     Добавляет файл в <head> без консолидации.
 *
 *   Resources::linkFileFooter($path, $type = '', $order = 50)
 *     Добавляет файл в футер (без консолидации).
 *
 *   Resources::addEmbed($code, $type = 'js', $order = 50,
 *                       $scope = 'global', $identifier = '')
 *     Регистрирует встроенный код в <head>.
 *
 *   Resources::embed($code, $type = 'js', $order = 50, $attr = '')
 *     Немедленная вставка кода в <head>.
 *
 *   Resources::embedFooter($code, $type = 'js', $order = 50, $attr = '')
 *     Немедленная вставка кода в футер.
 *
 *   Resources::setAlias($alias, $path, $canReWrite = false)
 *     Регистрирует/переопределяет алиас.
 *
 *   Resources::getAlias($alias)
 *     Возвращает путь по алиасу или null.
 *
 *   Resources::isFileAdded($fileName)
 *     Проверяет, добавлялся ли уже файл/алиас.
 *
 *   Resources::minify($code, $type)
 *     Минификация JS (lib/jsmin.php) или CSS (lib/cssmin.php).
 *
 * Предопределённые алиасы:
 *   '@jQuery'           → js/jquery.min.js
 *   '@ckeditor'         → plugins/ckeditor/lib/ckeditor.js
 *   '@ckeditorPreset.js'→ plugins/ckeditor/presets/ckeditor.default.set.js
 *   '@bootstrap'        → lib/bootstrap/js/bootstrap.bundle.min.js
 *   '@bootstrap.css'    → lib/bootstrap/css/bootstrap.min.css
 *   '@select2'          → lib/select2/js/select2.full.min.js
 *   '@select2.css'      → lib/select2/css/select2.min.css
 *   И константы класса: Resources::JQUERY, Resources::BOOTSTRAP,
 *   Resources::CKEDITOR, Resources::SELECT2.
 *
 * Механизм scope:
 *   'global'      — подключается всегда;
 *   'guest'       — только гостям ($usr['id'] === 0);
 *   'user'        — только авторизованным ($usr['id'] > 0);
 *   'group_{id}'  — пользователям с maingrp, равным {id}.
 *
 * Механизм order:
 *   Меньший $order выводится раньше. По умолчанию — 50.
 *   Рекомендуемые диапазоны:
 *       10–20   — базовые библиотеки (jQuery);
 *       20–40   — фреймворки (Bootstrap);
 *       40–70   — плагины (Select2, Fancybox, Perfect Scrollbar);
 *       100–150 — скрипты темы;
 *       800–900 — оверрайды темы (main + last).
 *
 * Консолидация и минификация:
 *   Если $cfg['cache'] && $cfg['headrc_consolidate'] и это НЕ админка,
 *   Resources склеивает файлы одного типа и scope в единый asset:
 *     cache_dir/assets/{scope}.{theme}.{type}
 *     cache_dir/assets/{scope}.{theme}.{type}.idx
 *     cache_dir/assets/{scope}.{theme}.{type}.gz
 *   и отдаёт его через rc.php?rc={scope}.{theme}.{type}&nc={mtime}.
 *   Во фронте это РАБОТАЕТ, поэтому все addFile с одинаковым $scope
 *   попадут в общий файл, а linkFile/addFile без консолидации —
 *   в отдельные теги.
 *
 * Правила написания кода в этом файле:
 *   1. Файл начинается с:
 *        <?php
 *        defined('COT_CODE') or die('Wrong URL.');
 *   2. Никакого вывода в stdout: файл подключается в момент,
 *      когда часть заголовков уже отправлена через cot_sendheaders().
 *      Любой echo сломает вывод.
 *   3. Использовать только публичные статические методы Resources.
 *      Прямой доступ к protected/private полям недопустим.
 *   4. Локальные файлы указывать путём от корня сайта
 *      (без ведущего слэша). Resources вызовет file_exists и
 *      бросит Exception при отсутствии файла. Если файл может
 *      отсутствовать — проверять через file_exists самостоятельно.
 *   5. Внешние ресурсы указывать полным URL (http://, https://, //).
 *      Тогда file_exists не проверяется.
 *   6. CSS — в <head> через addFile/linkFile. JS — либо в <head>
 *      (критичные для рендера), либо в футер через linkFileFooter.
 *   7. Порядок $order задавать явно для всех файлов, кроме
 *      дефолтного 50 — это делает вывод предсказуемым.
 *   8. Не вызывать Resources::render()/renderFooter() вручную.
 *      Это делает header.php и финальная секция вывода.
 *   9. Не использовать устаревшие обёртки cot_rc_add_file(),
 *      cot_rc_add_embed(), cot_rc_link_file() и т.п. — они помечены
 *      как deprecated и перенаправляют в Resources, но новый код
 *      должен звать Resources напрямую.
 *  10. Файл должен быть идемпотентным: повторный include не должен
 *      приводить к другой конфигурации реестра.
 *  11. Не обращаться к БД — .rc.php грузится на каждом фронт-запросе.
 *  12. Не переопределять $L и $R — это делает соседний файл
 *      {theme}.php.
 *  13. Учитывать, что на момент выполнения .rc.php переменная
 *      $theme в common.php ещё не установлена. Использовать
 *      Cot::$usr['theme'] для ссылки на текущую тему.
 *
 * Что часто упускают:
 *   - Файл НЕ является плагином/модулем: блока [BEGIN_COT_EXT] нет.
 *   - Файл НЕ переопределяет $L/$R (это {theme}.php).
 *   - addFile бросает Exception при отсутствии локального файла —
 *     это обрушит фронт. Всегда проверяйте существование.
 *   - Без консолидации addFile ведёт себя как linkFile (кладёт в
 *     $headerRc и сразу формирует HTML).
 *   - addFile дедуплицирует файлы по пути без query-строки. То есть
 *     'a.js?v=1' и 'a.js?v=2' — один файл.
 *   - При consolidate && minify addFile может писать файлы в
 *     cache_dir/assets/ и подменять .min-версии.
 *   - header.php после Resources::render() выставляет
 *     COT_HEADER_COMPLETE. После этого addFile/linkFile/embed
 *     автоматически перенаправляются в футер.
 *   - cot_rc_add_standard() вызывается ДО .rc.php и уже подключил
 *     jQuery (если $cfg['jquery']), jqModal, base.js/base.min.js,
 *     ajax_on.js (если turnajax). Повторно их добавлять не нужно.
 *   - При $cfg['jquery_cdn'] === true jQuery кладётся в <head>
 *     в header.php через Resources::linkFile(), а не здесь.
 *
 * Дата:    30 Sep 2026
 * @package  index36
 * @version  2.1.0
 * @author   webitproff
 * @copyright (c) 2026 webitproff | https://github.com/webitproff
 * @license  BSD
 * ===================================================================== */

defined('COT_CODE') or die('Wrong URL.');

/* =====================================================================
 * БАЗОВЫЕ ПЕРЕМЕННЫЕ ФАЙЛА
 * ===================================================================== */

// Корневой путь к папке текущей темы. Используется везде ниже,
// чтобы не дублировать длинные склейки путей и не зависеть от
// того, какая именно тема активна. На момент выполнения .rc.php
// Cot::$usr['theme'] уже определён (сформирован в common.php).
$themeDir = Cot::$cfg['themes_dir'] . '/' . Cot::$usr['theme'];

/* =====================================================================
 * CSS — ЗАГРУЖАЕТСЯ В <head>
 * Порядок: фреймворки → плагины → тема → оверрайды темы.
 * ===================================================================== */

// Bootstrap CSS — базовый фреймворк разметки, сетки, компонентов
// (Modal, Toast, Dropdown и т.п.). Подключается первым, чтобы
// дальнейшие CSS могли его переопределять.
// $order = 10 — минимальный, идёт раньше всех остальных CSS.
$bootstrapCss = 'lib/bootstrap/css/bootstrap.min.css';
if (file_exists($bootstrapCss)) {
    Resources::addFile($bootstrapCss, 'css', 10);
}

// FontAwesome — иконочный шрифт. Нужен до CSS темы, чтобы иконки
// отрисовались сразу и не было мерцания «квадратиков».
// $order = 20 — сразу после Bootstrap.
$fontawesomeCss = 'lib/fontawesome/css/all.min.css';
if (file_exists($fontawesomeCss)) {
    Resources::addFile($fontawesomeCss, 'css', 20);
}

// Select2 CSS — стили выпадающих списков с поиском.
// Требует Bootstrap-разметки, поэтому идёт после Bootstrap.
// Внимание: используется алиас @select2.css, file_exists не применим —
// алиас разрешается классом Resources, а не файловой системой.
Resources::addFile('@select2.css', 'css', 40);

// Select2 — стилевые дополнения/оверрайды под тему Index36.
// Идут после базового CSS Select2, чтобы перекрыть его.
// $order = 45 — сразу за базовым.
$select2StyleCss = $themeDir . '/assets/select2/style-select2.css';
if (file_exists($select2StyleCss)) {
    Resources::addFile($select2StyleCss, 'css', 45);
}

// Fancybox CSS — модальные окна/лайтбоксы. Подключается после
// базовых библиотек, до темы. $order = 50 — по умолчанию.
$fancyboxCss = $themeDir . '/assets/fancybox/fancybox.css';
if (file_exists($fancyboxCss)) {
    Resources::addFile($fancyboxCss, 'css', 50);
}

// Perfect Scrollbar CSS — базовые стили кастомной полосы прокрутки.
$perfectScrollbarCss = $themeDir . '/assets/perfect-scrollbar/perfect-scrollbar.css';
if (file_exists($perfectScrollbarCss)) {
    Resources::addFile($perfectScrollbarCss, 'css', 60);
}

// Perfect Scrollbar — стилевые дополнения/оверрайды под тему Index36.
// Идут после базового CSS, чтобы перекрыть его.
$perfectScrollbarStylesCss = $themeDir . '/assets/perfect-scrollbar/styles-perfect-scrollbar.css';
if (file_exists($perfectScrollbarStylesCss)) {
    Resources::addFile($perfectScrollbarStylesCss, 'css', 65);
}

// default.css — вторичные стили темы: типографика, цвета,
// оформление отдельных блоков. Подключается ДО основных стилей.
$defaultCss = $themeDir . '/css/default.css';
if (file_exists($defaultCss)) {
    Resources::addFile($defaultCss, 'css', 800);
}

/*  
 * modalbox.css — стили окон с запросом подтверждения «опасных» действий
 * (удаление темы форума, снятие страницы с публикации, отправка в очередь
 * на утверждение и т.п.). 
 * смотреть мой файл /themes/index36/css/modalbox.css
 */
$modalboxCss = $themeDir . '/css/modalbox.css';
if (file_exists($modalboxCss)) {
    Resources::addFile($modalboxCss, 'css', 800);
}

// header.last.css — главный стилевой файл темы. Самый высокий
// $order (900), подключается ПОСЛЕ всех библиотек и плагинов,
// поэтому может свободно их переопределять.
$headerLastCss = $themeDir . '/css/header.last.css';
if (file_exists($headerLastCss)) {
    Resources::addFile($headerLastCss, 'css', 900);
}

/* =====================================================================
 * JS — ЗАГРУЖАЕТСЯ В <head> (только критичное для рендера)
 * ===================================================================== */

// header.first.js — критичный ранний инициализатор темы:
// выставляет классы/тему оформления на <html> до отрисовки тела,
// борется с FOUC (вспышкой неоформленного контента).
// Единственный скрипт темы, которому действительно место в <head>.
// $order = 40 — после Bootstrap-а, до всех футерных скриптов.
$headerFirstJs = $themeDir . '/js/header.first.js';
if (file_exists($headerFirstJs)) {
    Resources::addFile($headerFirstJs, 'js', 40);
}

// Fancybox JS — модальные окна/лайтбоксы. 
$fancyboxJs = $themeDir . '/assets/fancybox/fancybox.umd.js';
if (file_exists($fancyboxJs)) {
    Resources::addFile($fancyboxJs, 'js', 60);
}

/* =====================================================================
 * JS — ЗАГРУЖАЕТСЯ В ФУТЕР
 * Все скрипты, которые не нужны до готовности DOM, вынесены сюда:
 *   - ускоряет первичный рендер,
 *   - не блокирует парсинг HTML,
 *   - библиотеки работают с уже построенным DOM.
 * ===================================================================== */

// Bootstrap bundle (Popper + все JS-компоненты Bootstrap).
// Если включена консолидация — кладём в <head> через addFile, чтобы
// он мог быть склеен в общий assets-файл. Если консолидация
// выключена — уходит в футер, чтобы не блокировать рендер.
$bootstrapBundleJs = 'lib/bootstrap/js/bootstrap.bundle.min.js';
if (file_exists($bootstrapBundleJs)) {
    if (Cot::$cfg['headrc_consolidate']) {
        Resources::addFile($bootstrapBundleJs, 'js', 30);
    } else {
        Resources::linkFileFooter($bootstrapBundleJs, 'js', 30);
    }
}

// Select2 JS — выпадающие списки с поиском. Зависит от jQuery,
// который подключается через cot_rc_add_standard() в common.php
// до вызова .rc.php. $order = 55 — сразу после Bootstrap.
// Внимание: используется алиас @select2, file_exists не применим —
// алиас разрешается классом Resources, а не файловой системой.
Resources::linkFileFooter('@select2', 'js', 55);

// Fancybox JS — модальные окна/лайтбоксы.
// !!! Moved up the lines intentionally! connect in header.tpl
// Resources::addFile($themeDir . '/assets/fancybox/fancybox.umd.js', 'js', 60);

// Perfect Scrollbar — кастомная полоса прокрутки. Работает по DOM.
$perfectScrollbarJs = $themeDir . '/assets/perfect-scrollbar/perfect-scrollbar.min.js';
if (file_exists($perfectScrollbarJs)) {
    Resources::linkFileFooter($perfectScrollbarJs, 'js', 65);
}

// Perfect Scrollbar — инициализация/оверрайды под тему Index36.
// Идёт после базового плагина, чтобы иметь доступ к его API.
$perfectScrollbarInitJs = $themeDir . '/assets/perfect-scrollbar/js-perfect-scrollbar.js';
if (file_exists($perfectScrollbarInitJs)) {
    Resources::linkFileFooter($perfectScrollbarInitJs, 'js', 70);
}

// theme.js — основной скрипт темы: общая логика фронта
// (переключение темы, cookie, инициализация компонентов).
$themeJs = $themeDir . '/js/theme.js';
if (file_exists($themeJs)) {
    Resources::linkFileFooter($themeJs, 'js', 100);
}

// sidebar.js — поведение боковой панели (сворачивание, мобильный режим).
$sidebarJs = $themeDir . '/js/sidebar.js';
if (file_exists($sidebarJs)) {
    Resources::linkFileFooter($sidebarJs, 'js', 110);
}

// tabs.js — логика вкладок в интерфейсе.
$tabsJs = $themeDir . '/js/tabs.js';
if (file_exists($tabsJs)) {
    Resources::linkFileFooter($tabsJs, 'js', 120);
}

// js.js — дополнительные утилиты и обработчики темы.
// Самый высокий $order — идёт последним, чтобы видеть уже
// инициализированные библиотеки и скрипты темы.
$jsJs = $themeDir . '/js/js.js';
if (file_exists($jsJs)) {
    Resources::linkFileFooter($jsJs, 'js', 130);
}


// pagination-vertical.js — фолбэк-скрипт для пагинации:
// перестраивает <ul class="pagination"> в блок prev / select / next.
// Идёт последним, чтобы DOM уже был готов и все остальные скрипты
// темы успели инициализироваться до подмены узлов.
// $order = 140 — после js.js (130), не пересекается с другими.
$paginationJs = $themeDir . '/js/pagination-vertical.js';
if (file_exists($paginationJs)) {
    Resources::linkFileFooter($paginationJs, 'js', 140);
}


/* =====================================================================
 * ПРИМЕЧАНИЯ
 * ===================================================================== */

// Дополнительный ресурс из другой темы — не является частью Index36.
// Оставлен как заготовка-пример. Раскомментировать при необходимости.
// Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/css/default.css');