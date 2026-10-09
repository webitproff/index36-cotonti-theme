<?php
/* ====================
[BEGIN_COT_THEME]
Name=Index36
Version=2.2.1
Schemes=default:Default
[END_COT_THEME]
==================== */

/**
 * Index36 - Theme for Cotonti CMF
 * Main loader file of the Cotonti Model Theme
 *
 * Compatibility: [CMF/CMS Cotonti V.1](https://github.com/Cotonti/Cotonti); PHP-8.5 & MySQL-8.4
 * File: index36.php
 * Placement: /themes/index36/index36.php
 * Description: Entry point for request parameters, global variables and resource
 *              string overrides of the Index36 theme. Consolidates all resource
 *              overrides in a single file.
 * Created: 01 Feb 2026
 * Updated: 09 Oct 2026
 * Item on Cotonti Extensions Marketplace: https://abuyfile.com/ru/market/cotonti/themes/index36
 * Source code: https://github.com/webitproff/index36-cotonti-theme
 * Support & Help: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
 *
 * @package index36
 * @version 2.2.1
 * @author webitproff
 * @copyright (c) 2026 webitproff | https://github.com/webitproff
 * @license BSD (Free using and distribution with saving copyrights)
 */

/* =====================================================================
 * ДОКУМЕНТАЦИЯ ПО ФАЙЛУ index36.php
 * =====================================================================
 *
 * Назначение:
 *   Файл index36.php — это основной загрузочный файл темы Index36,
 *   который вызывается движком Cotonti автоматически при активации
 *   этой темы. Файл выполняет две роли:
 *
 *     1. Точка входа для темы — движок подключает его раньше, чем
 *        начинается рендеринг шаблонов.
 *     2. Хранилище переопределений ресурсных строк $R для всей темы
 *        и связанных с ней плагинов и модулей.
 *
 *   Файл не является ни плагином, ни модулем. Блока [BEGIN_COT_EXT]
 *   в нём нет. Есть только блок [BEGIN_COT_THEME] с метаданными темы,
 *   которые читает движок.
 *
 * Место в архитектуре Cotonti:
 *   Движок подключает {theme}.php в системе common.php в блоке
 *   «Theme / color scheme»:
 *
 *     $sys['theme_resources'] = "{$cfg['themes_dir']}/{$usr['theme']}/{$usr['theme']}.php";
 *     if (file_exists($sys['theme_resources'])) {
 *         $L_tmp = $L;
 *         $R_tmp = $R;
 *         include $sys['theme_resources'];
 *         $theme_reload['L'] = @array_diff_assoc($L, $L_tmp);
 *         $theme_reload['R'] = @array_diff_assoc($R, $R_tmp);
 *     }
 *
 *   Это означает:
 *     - файл подключается из папки themes/{$usr['theme']}/;
 *     - переменная $usr['theme'] в момент выполнения равна имени
 *       текущей темы (в данном случае — index36);
 *     - все изменения массивов $L и $R, сделанные в файле, попадают
 *       в глобальные массивы $theme_reload['L'] и $theme_reload['R'];
 *     - функция cot_rc() применяет эти переопределения лениво.
 *
 * Позиция в последовательности common.php:
 *   1. Инициализация окружения, подключение к БД, Cot::init().
 *   2. Загрузка конфигурации из базы.
 *   3. Определение пользователя и вычисление $usr['theme'].
 *   4. Загрузка стандартных языков (main, users, admin при COT_ADMIN).
 *   5. Подключение языкового файла темы (если есть).
 *   6. Загрузка system/resources.rc.php.
 *   7. Загрузка system/admin/admin.resources.php (при COT_ADMIN).
 *   8. Проверка и подключение темы: {theme}.{lang}.lang.php.
 *   9. Подключение файла ресурсов {theme}.php ← ЭТОТ ФАЙЛ.
 *  10. Загрузка иконпака.
 *  11. Инициализация XTemplate.
 *
 * Что доступно в момент выполнения:
 *   - Cot::$cfg     — полная конфигурация сайта;
 *   - Cot::$usr     — данные текущего пользователя, включая theme;
 *   - Cot::$sys     — системные переменные (abs_url, site_uri, now);
 *   - Cot::$db      — объект базы данных;
 *   - $L            — языковые строки (main, users, admin, тема);
 *   - $Ls           — склонения;
 *   - $Ldt          — форматы дат;
 *   - $Ln           — символы разделителей чисел;
 *   - $R            — ресурсные строки (resources.rc.php + admin.resources.php);
 *   - $theme_reload — заполняется движком ПОСЛЕ выполнения файла;
 *   - $structure    — дерево структуры;
 *   - $cot_groups   — список групп пользователей;
 *   - $cache        — объект кэша (если включён).
 *
 * Что НЕ доступно:
 *   - XTemplate инициализируется позже;
 *   - глобальный хук 'global' ещё не сработал;
 *   - секция Head Resources ещё не выполнена;
 *   - .rc.php темы ещё не подключался.
 *
 * Что переопределяется:
 *
 *   $R (ресурсные строки) — основное назначение файла.
 *     Это ассоциативный массив, где значение — HTML-шаблон с
 *     плейсхолдерами вида {$var}. Переопределение применяется через
 *     функцию cot_rc(), которая при каждом вызове сначала проверяет
 *     $theme_reload['R'][$name], а затем $R[$name].
 *
 *   $L (языковые строки) — вторичное назначение.
 *     Через $L можно переопределить или добавить подписи интерфейса
 *     без создания отдельного языкового файла.
 *
 *   $cfg, $usr, $sys, $out, $db — НЕ переопределяются через
 *     $theme_reload и не отслеживаются движком. Их изменения
 *     сохраняются, но не попадают в механизм переопределений.
 *
 * Механизм отслеживания переопределений:
 *   После include движок снимает «снимок»:
 *     $L_tmp = $L; $R_tmp = $R;
 *     include $file;
 *     $theme_reload['L'] = array_diff_assoc($L, $L_tmp);
 *     $theme_reload['R'] = array_diff_assoc($R, $R_tmp);
 *   Сравнение выполняется через array_diff_assoc — поверхностное,
 *   без рекурсии. Это значит:
 *     - простые строковые значения $R/$L отслеживаются корректно;
 *     - вложенные массивы внутри $R/$L НЕ отслеживаются полностью;
 *     - если значение в $R[$name] до и после include идентично —
 *       переопределение не будет зафиксировано.
 *
 * Правила написания кода в этом файле:
 *   1. Файл начинается с блока [BEGIN_COT_THEME] и конструкции:
 *        defined('COT_CODE') or die('Wrong URL');
 *   2. Запрещён любой вывод в stdout/stderr (echo, print, var_dump).
 *      Файл выполняется до отправки HTML.
 *   3. Использовать $L и $R для переопределений. Изменять другие
 *      глобальные массивы (кроме $cfg для чтения) не рекомендуется.
 *   4. Все обращения к файлам темы должны использовать
 *      Cot::$usr['theme'], а не Cot::$cfg['defaulttheme'].
 *      Файл подключается из папки текущей темы — та же логика, что
 *      и для .rc.php. Cot::$cfg['defaulttheme'] может отличаться
 *      при наличии нескольких тем или при смене темы по умолчанию.
 *   5. Файл может объявлять функции и классы, но только с проверкой
 *      function_exists() / class_exists() во избежание конфликтов
 *      при повторном подключении.
 *   6. Не обращаться к БД без крайней необходимости: файл грузится
 *      на каждом запросе.
 *   7. Файл должен быть идемпотентным.
 *   8. Никаких session_start(), header(), setcookie() — это нарушит
 *      работу движка.
 *   9. Не вызывать cot_redirect(), cot_die_message(), cot_diefatal()
 *      из этого файла без веской причины.
 *  10. Ресурсные строки $R должны быть валидным HTML-фрагментом
 *      с плейсхолдерами вида {$name}. Синтаксис плейсхолдеров —
 *      только латиница, цифры и подчёркивание.
 *
 * Что часто упускают:
 *   - Файл НЕ является .rc.php — он не регистрирует CSS/JS.
 *     Регистрация ресурсов делается в {theme}.rc.php.
 *   - Файл подключается ДО .rc.php. Это значит, что переопределения
 *     $R['code_rc_js_file'], $R['code_rc_css_file'] и подобных строк
 *     применятся и к тегам, которые сгенерирует .rc.php.
 *   - Переопределения $R действуют глобально и влияют на все модули
 *     и плагины, которые вызывают cot_rc() с этими ключами.
 *   - Механизм array_diff_assoc работает только на верхнем уровне.
 *     Если нужно переопределить вложенный массив — это не сработает.
 *   - Порядок объявлений $R не важен — важен только конечный
 *     результат массива.
 *
 * Дата: 01 Oct 2026
 *
 * @package index36
 * @version 2.2.1
 * @author webitproff
 * @copyright (c) 2026 webitproff | https://github.com/webitproff
 * @license BSD
 * ===================================================================== */

defined('COT_CODE') or die('Wrong URL');

/* =====================================================================
 * ГЛОБАЛЬНЫЕ ПЕРЕМЕННЫЕ
 * ===================================================================== */

// Объявление глобальных переменных, которые используются в этом файле.
// Формально в Cotonti V.1 они уже доступны через класс Cot (Cot::$L,
// Cot::$cfg, Cot::$R), но для совместимости со старым кодом плагинов,
// которые могут читать локальные $L и $R, объявляем их глобально.
global $L, $cfg, $R;

/* =====================================================================
 * ВСПОМОГАТЕЛЬНАЯ ПЕРЕМЕННАЯ: КОРНЕВОЙ ПУТЬ ТЕКУЩЕЙ ТЕМЫ
 * ---------------------------------------------------------------------
 * Все пути к файлам темы строятся от Cot::$usr['theme'], а не от
 * Cot::$cfg['defaulttheme']. Обоснование: файл подключается движком
 * из папки themes/{$usr['theme']}/, поэтому внутри файла
 * $usr['theme'] гарантированно указывает на текущую тему.
 * Использование defaulttheme ломает пути при:
 *   - наличии нескольких тем с личными предпочтениями пользователей;
 *   - смене defaulttheme без выключения пользовательских тем.
 * ===================================================================== */

$index36ThemeDir = Cot::$cfg['themes_dir'] . '/' . Cot::$usr['theme'];

/* =====================================================================
 * ПОДКЛЮЧЕНИЕ ФАЙЛА ФУНКЦИЙ ТЕМЫ
 * =====================================================================
 *
 * Назначение:
 *   Файл {theme}.functions.php хранит пользовательские функции темы,
 *   которые нельзя размещать непосредственно в этом файле. Причины
 *   выноса в отдельный файл:
 *
 *     1. Загрязнение глобального пространства имён функциями при
 *        каждой загрузке {theme}.php.
 *     2. Риск конфликта имён с функциями ядра Cotonti, модулей,
 *        плагинов и других тем.
 *     3. Смешение декларации ресурсных строк $R и логики функций
 *        затрудняет поддержку файла.
 *     4. Файл {theme}.php выполняется на каждом запросе, а функции
 *        нужны лишь тогда, когда их действительно вызывают.
 *
 * Автоматическое подключение:
 *   Движок Cotonti НЕ подключает {theme}.functions.php автоматически.
 *   Этот файл не является штатным файлом ядра. Движок знает только
 *   о трёх файлах темы:
 *     - {theme}.php           — файл ресурсов и переопределений;
 *     - {theme}.rc.php        — регистрация CSS/JS;
 *     - {theme}.{lang}.lang.php — языковой файл темы.
 *   Поэтому подключение {theme}.functions.php выполняется вручную,
 *   и оптимальное место для этого — начало {theme}.php.
 *
 * Позиция в последовательности выполнения common.php:
 *   1. Инициализация окружения, подключение к БД, Cot::init().
 *   2. Загрузка конфигурации из базы данных.
 *   3. Определение пользователя и вычисление $usr['theme'].
 *   4. Загрузка языков main, users (admin при COT_ADMIN).
 *   5. Подключение языкового файла темы: {theme}.{lang}.lang.php.
 *   6. Загрузка system/resources.rc.php.
 *   7. Загрузка system/admin/admin.resources.php (при COT_ADMIN).
 *   8. Подключение файла ресурсов темы: {theme}.php  ← ЭТОТ ФАЙЛ.
 *        └── require_once {theme}.functions.php     ← ПОДКЛЮЧАЕТСЯ ЗДЕСЬ
 *   9. Загрузка иконпака.
 *  10. Инициализация XTemplate.
 *  11. Подключение {theme}.rc.php (секция Head Resources).
 *  12. Выполнение глобального хука 'global'.
 *  13. Рендеринг шаблонов.
 *
 * Почему именно в начале {theme}.php, до объявления $R:
 *   - функции становятся доступны во всех последующих ресурсных
 *     строках $R, объявленных ниже в этом же файле;
 *   - функции доступны в {theme}.rc.php, который подключается
 *     движком позже;
 *   - функции доступны во всех шаблонах .tpl, включая header.tpl,
 *     footer.tpl, page.tpl и остальные, так как XTemplate
 *     инициализируется после подключения этого файла;
 *   - функции доступны модулям и плагинам, которые выполняются
 *     после этапа инициализации темы;
 *   - функции доступны в пользовательских обработчиках, если они
 *     работают в контексте активной темы.
 *
 * Когда функции темы НЕ будут доступны:
 *   - в system/functions.custom.php — этот файл подключается
 *     в конце system/functions.php, то есть РАНЬШЕ, чем {theme}.php;
 *   - в system/common.php — до момента загрузки темы;
 *   - в других файлах ядра, выполняемых до этапа Theme / color scheme.
 *   Если в этих местах требуется вызвать функцию темы, придётся либо
 *   подключать {theme}.functions.php вручную, либо использовать
 *   проверку function_exists() перед вызовом.
 *
 * Что должно быть в {theme}.functions.php:
 *   - только объявления функций с уникальным префиксом, совпадающим
 *     с кодом темы (например, index36_*);
 *   - каждая функция обёрнута в if (!function_exists(...)) для защиты
 *     от повторного объявления;
 *   - функции могут использовать Cot::$db, Cot::$cfg, Cot::$usr,
 *     Cot::$sys, Cot::$L и функции ядра (cot_url, cot_rc, cot_date,
 *     cot_import и другие);
 *   - функции могут возвращать готовый HTML или данные для шаблонов;
 *   - файл начинается с обязательной конструкции:
 *       <?php
 *       defined('COT_CODE') or die('Wrong URL');
 *
 * Что НЕ должно быть в {theme}.functions.php:
 *   - вывод в stdout/stderr (echo, print, var_dump) — файл выполняется
 *     до отправки HTML и сломает заголовки;
 *   - побочные эффекты при подключении: SQL-запросы, изменения $cfg,
 *     $usr, $sys, session_start(), setcookie(), header();
 *   - вызовы cot_redirect(), cot_die_message(), cot_diefatal() без
 *     веской причины — они прервут выполнение движка;
 *   - глобальные объекты, создаваемые при подключении файла;
 *   - функции без префикса темы — риск коллизии с ядром или
 *     расширениями.
 *
 * Проверка существования файла:
 *   Подключение обёрнуто в file_exists(), потому что файл
 *   {theme}.functions.php не является штатным и может отсутствовать,
 *   если тема не использует собственные функции. Без этой проверки
 *   require_once вызовет фатальную ошибку
 *   «Failed opening required file», и вся страница упадёт.
 *
 * Идемпотентность:
 *   require_once гарантирует, что файл будет подключён ровно один раз
 *   за запрос, даже если {theme}.php по какой-то причине выполнится
 *   дважды. Внутри самого файла дополнительная защита достигается
 *   через if (!function_exists(...)) вокруг каждой функции.
 *
 * Расширение на несколько файлов:
 *   Если функций темы много (более 15–20), их разумно разделить
 *   на подфайлы в themes/{theme}/inc/ и подключать их
 *   последовательно из {theme}.functions.php. Порядок подключения
 *   должен учитывать зависимости: файлы, чьи функции вызываются
 *   из других файлов, подключаются первыми.
 *
 * Пример разделения:
 *   themes/index36/
 *   ├── index36.php
 *   ├── index36.functions.php     ← точка входа
 *   └── inc/
 *       ├── helpers.php            ← базовые хелперы
 *       ├── users.php              ← работа с пользователями
 *       ├── pages.php              ← работа со страницами
 *       ├── formatting.php         ← форматирование вывода
 *       └── integrations.php       ← интеграции с плагинами
 *
 * Альтернатива require_once:
 *   Полный путь к файлу собирается из $index36ThemeDir и имени темы.
 *   Переменная $index36ThemeDir объявлена выше в этом файле и равна
 *   Cot::$cfg['themes_dir'] . '/' . Cot::$usr['theme'].
 *   Использовать Cot::$usr['theme'], а не Cot::$cfg['defaulttheme'],
 *   обязательно: файл подключается движком из папки текущей темы,
 *   а defaulttheme может отличаться при наличии нескольких тем
 *   или при смене темы по умолчанию.
 *
 * ===================================================================== */

// Полный путь к файлу функций темы.
// Строится от Cot::$usr['theme'], а не от Cot::$cfg['defaulttheme'] —
// иначе при нескольких темах или после смены defaulttheme путь уйдёт
// в чужую папку, и файл не будет найден.
$functionsFile = $index36ThemeDir . '/' . Cot::$usr['theme'] . '.functions.php';

// Подключаем файл только если он существует.
// {theme}.functions.php не является штатным файлом Cotonti, поэтому
// его отсутствие — нормальная ситуация. Без file_exists() require_once
// вызовет фатальную ошибку и обрушит всю страницу.
if (file_exists($functionsFile)) {
    require_once $functionsFile;
}

/* =====================================================================
 * РЕСУРСНЫЕ СТРОКИ ДЛЯ ПЛАГИНА USERIMAGES (AVATAR)
 * ---------------------------------------------------------------------
 * Переопределяют пути к изображениям по умолчанию для плагина
 * userimages и связанных с ним тегов.
 * ===================================================================== */

// Источник аватара по умолчанию для пользователей без загруженного аватара.
// Файл должен существовать в папке img/ темы.
$R['users_defaultAvatarSrc'] = $index36ThemeDir . '/img/avatar-demo.jpg';

// Алиас того же пути для плагина userimg (совместимость имён).
// Не передавать по &$R — это сломает ссылку между ключами.
$R['userimg_default_avatar'] = $R['users_defaultAvatarSrc'];

// Фоновое изображение по умолчанию для плагина userimg.
$R['userimg_default_background'] = $index36ThemeDir . '/img/userimg_default_background.jpg';

// Обёртка выбора файла: используется в форме загрузки аватара.
$R['userimg_selectfile'] = '{$form_input}';

// Общая HTML-обёртка блока аватара: класс userimg_{code}.
$R['userimg_html'] = '<div class="userimg_{$code}">{$existing}{$selectfile}</div>';

// Кнопка удаления аватара с классом Bootstrap danger.
$R['userimg_remove'] = '<a href="{$url}" class="button btn btn-danger">' . Cot::$L['Delete'] . '</a>';

// Разметка тега <img> для аватара. Соответствует Bootstrap 5 (rounded-3).
// Используется в {AUTHOR_AVATAR}; альтернативно {AUTHOR_AVATAR_SRC}
// подставляет только {$src}.
$R['userimg_img'] = '<img src="{$src}" alt="{$alt}" class="rounded-3 mb-3 userimg {$class}" />';

/* =====================================================================
 * РЕСУРСНЫЕ СТРОКИ ДЛЯ МОДУЛЯ FILES (Alex300)
 * ---------------------------------------------------------------------
 * Источник: https://github.com/Alex300/files
 * Переопределяют вывод аватара в модуле files под оформление темы.
 * ===================================================================== */

// Подстановка источника аватара — используется тегом files.
$R['files_user_avatar'] = '{$src}';

// Аватар по умолчанию, если у пользователя его нет.
$R['files_user_default_avatar'] = '<img src="images/blank-avatar.png" alt="' . Cot::$L['Avatar'] . '" class="avatar img-responsive" />';

/* =====================================================================
 * ПАГИНАЦИЯ (BOOTSTRAP 5)
 * ---------------------------------------------------------------------
 * Переопределяют вывод компонента пейджнавигации cot_pagenav().
 * Все теги строятся как <ul class="pagination"> с элементами
 * <li class="page-item"> и <a class="page-link">.
 * ===================================================================== */

// Суффикс номера страницы в заголовке страницы.
$R['code_title_page_num'] = ' (' . Cot::$L['Page'] . ' {$num})';

// Текущая страница: активный элемент пагинации.
$R['link_pagenav_current'] = '<li class="page-item active"><a class="page-link" href="{$url}"{$event}{$rel}>{$num}</a></li>';

// Кнопка «Первая страница».
$R['link_pagenav_first'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . Cot::$L['pagenav_first'] . '</a></li>';

// Пропуск в нумерации (например, 1 2 … 10 11).
$R['link_pagenav_gap'] = '<li class="page-item disabled"><span class="page-link">...</span></li>';

// Кнопка «Последняя страница».
$R['link_pagenav_last'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . Cot::$L['pagenav_last'] . '</a></li>';

// Обычная страница в списке.
$R['link_pagenav_main'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>{$num}</a></li>';

// Кнопка «Следующая страница».
$R['link_pagenav_next'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . Cot::$L['pagenav_next'] . '</a></li>';

// Кнопка «Предыдущая страница».
$R['link_pagenav_prev'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . Cot::$L['pagenav_prev'] . '</a></li>';

// Пагинация в списке тем форума — компактная версия (pagination-sm).
$R['forums_code_topic_pages'] = '<ul class="pagination pagination-sm">{$main}{$last}</ul>';

/* =====================================================================
 * ХЛЕБНЫЕ КРОШКИ (BREADCRUMBS)
 * ---------------------------------------------------------------------
 * Переопределяют вывод cot_breadcrumbs(). Разделитель берётся из
 * глобальной настройки Cot::$cfg['separator'] и оборачивается в span
 * с классом mx-2 (Bootstrap 5 — отступы по горизонтали).
 * ===================================================================== */

// Контейнер списка крошек (заменяется шаблоном).
$R['breadcrumbs_container'] = '{$crumbs}';

// Разделитель между элементами.
$R['breadcrumbs_separator'] = '<span class="mx-2">' . Cot::$cfg['separator'] . '</span>';

// Ссылка на промежуточный элемент.
$R['breadcrumbs_link'] = '<a href="{$url}" title="{$title}">{$title}</a>';

// Простой текст (без ссылки) — например, для последнего элемента.
$R['breadcrumbs_plain'] = '{$title}';

// Один элемент крошки (обёртка).
$R['breadcrumbs_crumb'] = '{$crumb}';

// Первый элемент крошки.
$R['breadcrumbs_first'] = '{$crumb}';

// Последний элемент крошки — обёрнут в span для стилизации.
$R['breadcrumbs_last'] = '<span class="breadcrumb-last">{$crumb}</span>';

/* =====================================================================
 * ФОРМЫ: ВЫПАДАЮЩИЕ СПИСКИ (SELECT)
 * ---------------------------------------------------------------------
 * Разделены на три группы:
 *   - с классом form-select (Bootstrap 5) — для обычных select;
 *   - без класса — для select, к которым применяется Select2
 *     (Select2 сам стилизует <select>).
 * ===================================================================== */

// Без form-select: поля rs[...] (дополнительные поля страниц),
// к которым подключён Select2. Класс не нужен, иначе конфликт.
$R['input_select_rs'] = '<select name="{$name}"{$attrs}>{$options}</select>';

// Без form-select: поля rtags[...] (метки), к которым подключён Select2.
$R['input_select_rtags'] = '<select name="{$name}"{$attrs}>{$options}</select>';

// Без form-select: поля rpagecat[...] (категории страниц) с Select2.
$R['input_select_rpagecat'] = '<select name="{$name}"{$attrs}>{$options}</select>{$error}';

// Со стандартным Bootstrap 5 form-select — для всех остальных select.
$R['input_select'] = '<select class="form-select form-control-lg rounded-5" name="{$name}"{$attrs}>{$options}</select>';

// Отдельный тег <option> — используется внутри select.
$R['input_select_option'] = '<option value="{$value}"{$selected}>{$title}</option>';

/* =====================================================================
 * ФОРМЫ: ЧЕКБОКСЫ И РАДИОКНОПКИ
 * ---------------------------------------------------------------------
 * Разметка Bootstrap 5: form-check / form-check-input / form-check-label.
 * Атрибут id устанавливается на основе имени поля, чтобы label был
 * корректно связан с input.
 * ===================================================================== */

// Чекбокс со скрытым полем для отправки значения «выключено».
$R['input_checkbox'] = '<input type="hidden" name="{$name}" value="{$value_off}" /><div class="form-check"><input class="form-check-input" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}" /><label class="form-check-label" for="{$name}">{$title}</label></div>';

// Простой чекбокс без скрытого поля.
$R['input_check'] = '<div class="form-check"><input class="form-check-input" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}" /><label class="form-check-label" for="{$name}">{$title}</label></div>';

// Радиокнопка. id формируется как {$name}_{$value}, чтобы несколько
// радиокнопок с одним именем имели разные id.
$R['input_radio'] = '<div class="form-check mx-3"><input class="form-check-input" type="radio" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}_{$value}" /><label class="form-check-label" for="{$name}_{$value}">{$title}</label></div>{$error}';

// Разделитель между радиокнопками.
$R['input_radio_separator'] = ' ';

/* =====================================================================
 * ФОРМЫ: ТЕКСТОВЫЕ ПОЛЯ И TEXTAREA
 * ===================================================================== */

// Универсальное текстовое поле.
$R['input_text'] = '<input class="form-control form-control-lg rounded-5" type="text" name="{$name}" value="{$value}" {$attrs} />{$error}';

$R['input_text_sq'] = '<input class="form-control form-control-lg" type="text" name="{$name}" id="{$name}" placeholder="' . Cot::$L['Search'] . '" value="{$value}" {$attrs} />{$error}';

// Поле ввода по умолчанию (для нестандартных типов).
$R['input_default'] = '<input class="form-control" type="{$type}" name="{$name}" value="{$value}"{$attrs} />{$error}';

// Поле выбора файла в стиле Bootstrap 5 input-group.
$R['input_file'] = '<div class="input-group"><input type="file" class="form-control" name="{$name}" value="{$value}" {$attrs} id="{$name}" /><label class="input-group-text" for="{$name}"></label></div>{$error}';

// Кнопка submit.
$R['input_submit'] = '<button class="btn btn-primary" type="submit" name="{$name}" {$attrs}>{$value}</button>';

// Обычный textarea.
$R['input_textarea'] = '<textarea class="form-control" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';

// Textarea с классом editor (для визуальных редакторов).
$R['input_textarea_editor'] = '<textarea class="form-control editor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';

// Textarea с классом medieditor (средний редактор).
$R['input_textarea_medieditor'] = '<textarea class="form-control medieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';

// Textarea с классом minieditor (компактный редактор).
$R['input_textarea_minieditor'] = '<textarea class="form-control minieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';

/* =====================================================================
 * ФОРМЫ: ДАТА
 * ---------------------------------------------------------------------
 * Bootstrap 5 grid: day / month / year / hour : minute.
 * Собирается из нескольких select, сгенерированных cot_selectbox_date.
 * ===================================================================== */

// Полная дата с временем.
$R['input_date'] = '<div class="row g-2">
    <div class="col-2">{$day}</div>
    <div class="col-3">{$month}</div>
    <div class="col-2">{$year}</div>
    <div class="col-2">{$hour}</div>
    <div class="col-1 text-center">:</div>
    <div class="col-2">{$minute}</div>
</div>';

// Короткая дата без времени.
$R['input_date_short'] = '<div class="row g-2">
    <div class="col-4">{$day}</div>
    <div class="col-4">{$month}</div>
    <div class="col-4">{$year}</div>
</div>';

/* =====================================================================
 * ПОЛЬЗОВАТЕЛИ: ПАРОЛИ В ПРОФИЛЕ И РЕДАКТИРОВАНИИ
 * ---------------------------------------------------------------------
 * Используются в users.edit.tpl и users.profile.tpl.
 * Плейсхолдеры берутся из языковых строк темы.
 * ===================================================================== */

// Текущий пароль при смене.
$R['input_password_roldpass'] = '<input class="form-control form-control-lg rounded-5" type="password" name="{$name}" placeholder="' . Cot::$L['langSkStr_passCurrent'] . '" value="{$value}" {$attrs} />{$error}';

// Новый пароль.
$R['input_password_rnewpass1'] = '<input class="form-control form-control-lg rounded-5" type="password" name="{$name}" placeholder="' . Cot::$L['langSkStr_passNew'] . '" value="{$value}" {$attrs} />{$error}';

// Повтор нового пароля.
$R['input_password_rnewpass2'] = '<input class="form-control form-control-lg rounded-5" type="password" name="{$name}" placeholder="' . Cot::$L['langSkStr_passNewRepeat'] . '" value="{$value}" {$attrs} />{$error}';

/* =====================================================================
 * ГОСТЬ: ФОРМА ВХОДА
 * ---------------------------------------------------------------------
 * Используется в шапке сайта и в модальном окне входа.
 * ===================================================================== */

// Форсированное «запомнить меня» (нельзя снять галочку).
$R['form_guest_remember_forced'] = '<input class="form-check-input" type="checkbox" name="rremember" checked="checked" disabled="disabled" />';

// Обычное «запомнить меня» с чекбоксом и подписью.
$R['form_guest_remember'] = '<input class="form-check-input " type="checkbox" id="rememberMe" name="rremember" /><div class="flex-grow-1"><label class="form-check-label ms-3 small" for="rememberMe">' . Cot::$L['users_rememberme'] . '</label></div>';

// Поле пароля для формы входа.
$R['form_guest_password'] = '<input class="form-control form-control-lg rounded-5 ps-3" type="password" name="rpassword" size="12" maxlength="32" />';

// Поле логина для формы входа (модальное окно или шапка).
$R['input_text_rusername'] = '<input class="form-control form-control-lg rounded-5 ps-5" type="text" name="rusername" placeholder="' . Cot::$L['langSkStr_Username'] . '" value="{$value}" {$attrs} />{$error}';

// Поле пароля для формы входа (отдельный тег, отличный от form_guest_password).
$R['input_password_rpassword'] = '<input class="form-control form-control-lg rounded-5 ps-5" type="password" name="rpassword" placeholder="' . Cot::$L['langSkStr_passkey'] . '" value="{$value}" {$attrs} />{$error}';

/* =====================================================================
 * РЕГИСТРАЦИЯ
 * ===================================================================== */

// Поле email при регистрации.
$R['input_text_ruseremail'] = '<input class="form-control form-control-lg rounded-5 ps-5" type="text" name="ruseremail" placeholder="' . Cot::$L['langSkStr_emailCurrentOnly'] . '" value="{$value}" {$attrs} />{$error}';

// Поле ответа на капчу.
$R['input_text_rverify'] = '<input class="form-control form-control-lg rounded-5" type="text" name="rverify" placeholder="' . Cot::$L['langSkStr_captchaAnswer'] . '" value="{$value}" {$attrs} />{$error}';

// Пароль при регистрации.
$R['input_password_rpassword1'] = '<input class="form-control form-control-lg rounded-5 ps-5" type="password" name="rpassword1" placeholder="' . Cot::$L['Password'] . '" value="{$value}" {$attrs} />{$error}';

// Подтверждение пароля при регистрации.
$R['input_password_rpassword2'] = '<input class="form-control form-control-lg rounded-5 ps-5" type="password" name="rpassword2" placeholder="' . Cot::$L['users_confirmpass'] . '" value="{$value}" {$attrs} />{$error}';

/* =====================================================================
 * ТЕГИ (TAGS)
 * ---------------------------------------------------------------------
 * Поля ввода тегов для страниц и постов форума.
 * ===================================================================== */

// Поле ввода тегов при редактировании страницы.
$R['tags_input_editpage'] = '<input type="text" name="rtags" class="form-control autotags" value="{$tags}" />';

// Поле ввода тегов при редактировании поста.
$R['tags_input_editpost'] = '<input type="text" name="rtags" class="form-control autotags" value="{$tags}" />';

/* =====================================================================
 * ЛОГОТИП И ИЗОБРАЖЕНИЯ-ЗАГЛУШКИ
 * ---------------------------------------------------------------------
 * Пути к статическим изображениям темы. Используются в шаблонах
 * через теги {PHP.R.app-logo} и подобные.
 * ===================================================================== */

// Основной логотип сайта (SVG).
$R['app-logo'] = $index36ThemeDir . '/img/app-logo.svg';

// Изображение по умолчанию для страниц новостей и статей.
$R['page_default_image'] = $index36ThemeDir . '/img/freelance-on-cmf-cotonti.webp';

// Иконка категории по умолчанию.
$R['cat_icon_default'] = $index36ThemeDir . '/img/cat-icon-default.svg';

/* =====================================================================
 * СТРУКТУРА (КАТЕГОРИИ)
 * ---------------------------------------------------------------------
 * Переопределяет вывод иконки категории в списках структуры.
 * ===================================================================== */

// Вариант с обёрткой img — оставлен как пример для кастомизации.
// $R['img_structure_cat'] = '<img class="bg-white rounded-circle" width="36" height="36" src="{$icon}" alt="{$title}" title="{$desc}" />';

// Рабочий вариант: вывод только источника иконки без обёртки,
// потому что иконка уже является готовым <img> или <svg>-тегом.
$R['img_structure_cat'] = '{$icon}';

/* =====================================================================
 * СПИСКИ ГРУПП ПОЛЬЗОВАТЕЛЕЙ (ЗАКОММЕНТИРОВАНО)
 * ---------------------------------------------------------------------
 * Оставлено как заготовка для кастомизации пользовательского
 * интерфейса. Раскомментировать при необходимости.
 * ===================================================================== */


$R['users_code_grplist_begin'] = '<ul class="list-group list-group-flush">';
$R['users_code_grplist_end'] = '</ul>';
$R['users_code_grplist_item'] = '<li class="list-group-item bg-transparent">{$item}</li>';
$R['users_code_grplist_item_main'] = '<li class="list-group-item bg-transparent"><strong>{$item}</strong></li>';
$R['users_input_grplist_checkbox'] = '<input type="checkbox" class="form-check-input mx-2" name="{$name}" value="1"{$checked}{$attrs} />';
$R['users_input_grplist_radio'] = '<input type="radio" class="form-check-input" name="{$name}" value="{$value}"{$checked}{$attrs} />';

$R['icon_down'] = '<i class="fa-regular fa-circle-down fa-lg"></i>';
$R['icon_up'] = '<i class="fa-regular fa-circle-up fa-lg"></i>';
$R['icon_order_asc'] = &$R['icon_up'];
$R['icon_order_desc'] = $R['icon_down'];


/* =====================================================================
 * СПИСКИ СТРАНИЦ: КНОПКА «ПОДРОБНЕЕ»
 * ===================================================================== */

// Кнопка «Читать далее» в списках страниц.
// Оформлена как Bootstrap 5 badge с полупрозрачным фоном.
$R['list_more'] = ' <span class="badge rounded-pill bg-info bg-opacity-10 text-info"><a href="{$page_url}" title="' . Cot::$L['ReadMore'] . '">' . Cot::$L['ReadMore'] . '</a></span>';

/* =====================================================================
 * ДИАПАЗОН ЛЕТ ДЛЯ ПОЛЕЙ ДАТЫ
 * ---------------------------------------------------------------------
 * Используется функцией cot_selectbox_date() при редактировании
 * страниц и статей. Границы вычисляются динамически от текущего года:
 *   - нижний порог: текущий год минус 3;
 *   - верхний порог: текущий год плюс 1.
 *
 * Пример использования в шаблоне:
 *   {PAGEEDIT_FORM_DATE|cot_selectbox_date(
 *       '{PHP.pag.page_date}',
 *       'short',
 *       'rpagedate',
 *       '{PHP.R.page_years_max_range_threshold}',
 *       '{PHP.R.page_years_min_range_threshold}',
 *       false,
 *       false)}
 * ===================================================================== */

// Нижний порог выбора года (диапазона лет).
$R['page_years_min_range_threshold'] = (int) cot_date('Y', Cot::$sys['now']) - 3;

// Верхний порог выбора года (диапазона лет).
$R['page_years_max_range_threshold'] = (int) cot_date('Y', Cot::$sys['now']) + 1;

/* =====================================================================
 * РЕСУРСНЫЕ СТРОКИ ДЛЯ ПЛАГИНА TAGS
 * ---------------------------------------------------------------------
 * Оформляют облако тегов под стилистику темы.
 * ===================================================================== */

// Ссылка «Все теги» в облаке.
$R['tags_code_cloud_more'] = '<a class="more" href="{$url}">' . Cot::$L['Tags'] . '</a>';

// Отдельный тег в облаке — оформлен как badge Bootstrap 5.
$R['tags_link_cloud_tag'] = '<li><a href="{$url}" class="{$dim}" title="{$tag_title}" rel="tag"><span class="badge rounded-pill bg-info bg-opacity-10 text-info m-2">{$tag_title}</span></a></li>';


/* =====================================================================
 * РЕСУРСНЫЕ СТРОКИ ДЛЯ "уведомления системы"
 * ---------------------------------------------------------------------
 * ===================================================================== */
$R['notices_container'] = '{$notices}';           // без лишних обёрток
$R['notices_separator'] = '';                    // разделитель не нужен
$R['notices_link']      = '<li><a class="nav-link" href="{$url}" title="{$title}"><i class="fa-solid fa-circle-info me-2"></i>{$title}</a></li>';
$R['notices_plain']     = '<li class="nav-link disabled">{$title}</li>';   // если вдруг без ссылки