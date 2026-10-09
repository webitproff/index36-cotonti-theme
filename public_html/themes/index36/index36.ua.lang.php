<?php
/** 
 * Index36 - Theme for Cotonti
 * Compatibility: [CMF/CMS Cotonti V.1](https://github.com/Cotonti/Cotonti); PHP-8.5 & MySQL-8.4 
 * File: index36.ua.lang.php 
 * Placement: /themes/index36/index36.ua.lang.php 
 * Description: Файл локалізації теми для інтерфейсу українською мовою
 * Created: 01 Feb 2026  
 * Updated: 09 Oct 2026
 * Source code: https://github.com/webitproff/index36-cotonti-theme
 * Support & Help: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
 * 
 * @package index36 
 * @version 2.2.1  
 * @author webitproff 
 * @copyright (c) 2026 webitproff | https://github.com/webitproff 
 * @license BSD (Безкоштовне використання та поширення з збереженням авторських прав)   
 */ 

defined('COT_CODE') or die('Wrong URL.');

/**
 * перевизначаємо сетап конфігурації того, що у нас в адмінці
 * Управління сайтом / Конфігурація / Заголовки та мета-теги 
*/
// global $cfg;
$useCfgFromLang = true; // використовувати значення конфігурації з файлу локалізації // Use configuration values from the localization file
if ($useCfgFromLang === true) {
    // Заголовок (Назва сайту)
    Cot::$cfg['maintitle'] = 'aBuyFile Market';
    // Підзаголовок (Опис сайту)
    Cot::$cfg['subtitle'] = 'Спільний онлайн ринок, кооперативний маркетплейс незалежних розробників і продавців цифрових товарів. Фрілансери та постачальники послуг розробки й модернізації веб-сайтів';
	// $cfg['market']['title'] = '';
	// $cfg['market']['description'] = '';
}


// USERS groups localization title
if (isset($cot_groups['7']['name']) && is_array($cot_groups)) {
    $cot_groups['7']['name'] = 'Замовники та учасники';
}

if (isset($cot_groups['4']['name']) && is_array($cot_groups)) {
    $cot_groups['4']['name'] = 'Спеціалісти';
}

// PAGE structure localization title
if (isset($structure['page']['news']) && is_array($structure['page']['news'])) {
    $structure['page']['news']['title'] = 'Новини проєкту';
    $structure['page']['news']['desc'] = 'Опис категорії новин для української локалізації сайту у файлі теми';
}

if (isset($structure['page']['articles']) && is_array($structure['page']['articles'])) {
    $structure['page']['articles']['title'] = 'Статті проєкту';
    $structure['page']['articles']['desc'] = 'Опис категорії статей для української локалізації сайту у файлі теми';
}

// Load strings ONLY on the homepage (index)
$ext = Cot::$env['ext'] ?? 'index';
if ($ext === 'index') {
    $L['langSkStr_indexWeCanHelp'] = 'Чим ми можемо вам допомогти?';
    $L['langSkStr_indexPopularSearched'] = 'Популярне в пошуку';
    $L['langSkStr_indexGetStart'] = 'Перше знайомство з Cotonti';
    $L['langSkStr_indexGtStQ1'] = '<i class="fa-regular fa-star fa-xl me-3"></i> Що таке Cotonti?';
    $L['langSkStr_indexGtStA1'] = 'Це основа, на якій розробник може створювати різні CMS, від сайту-візитки до соціальної мережі.';
    $L['langSkStr_indexGtStQ2'] = '<i class="fa-regular fa-star fa-xl me-3"></i> Що може Cotonti?';
    $L['langSkStr_indexGtStA2'] = '<p>Якщо наочно, уявіть, що з гаража виїжджає тюнінгований прокачаний автомобіль після реконструкції та модернізації – це ваш сайт.</p>
    <p>А кілька місяців тому ви привезли машину прямо з конвеєра або навіть металобрухт.</p>';
    $L['langSkStr_indexGtStQ3'] = '<i class="fa-regular fa-star fa-xl me-3"></i> Для кого Cotonti?';
    $L['langSkStr_indexGtStA3'] = '<p>З точки зору розробки – насамперед для PHP-розробників сайтів.</p><p>З точки зору адміністрування – впорається будь-хто, хто вміє користуватися смартфоном.</p>';
    $L['langSkStr_indexGtStQ4'] = '<i class="fa-regular fa-star fa-xl me-3"></i> А якщо я новачок?';
    $L['langSkStr_indexGtStA4'] = '<p>Існує поріг входження, хоча б здатність читати простий код у кілька рядків.</p><p>Можна навчитися досить швидко самостійно, використовуючи документацію та задаючи питання на форумі.</p>';

    $L['langSkStr_indexDownApp'] = 'Cotonti – завантажити додатки';
    $L['langSkStr_indexDwnApQ1'] = '<i class="fa-solid fa-compact-disc fa-xl me-3"></i> Встановлювальний пакет на GitHub';
    $L['langSkStr_indexDwnApA1'] = '<p>Актуальний вихідний код Cotonti завжди <a href="https://github.com/Cotonti/Cotonti" target="_blank" class="badge rounded border bg-warning border-dark fw-bold text-dark link-light" title="Завантажити встановлювальний архів Cotonti CMS/CMF">доступний за посиланням</a></p>';
    $L['langSkStr_indexDwnApQ2'] = '<i class="fa-solid fa-puzzle-piece fa-xl me-3"></i> Завантажити модулі та плагіни';
    $L['langSkStr_indexDwnApA2'] = '<p>Відвідайте <a href="https://abuyfile.com/ru/market" target="_blank" class="fw-bold" title="Маркетплейс розширень та шаблонів тем для Cotonti CMS/CMF">маркетплейс розширень та шаблонів тем</a> для CMF Cotonti.</p>
    <p>Ви зможете ознайомитися з кожним, завантажити безкоштовно або замовити платну адаптацію під ваші потреби.</p>';
    $L['langSkStr_indexDwnApQ3'] = '<i class="fa-solid fa-battery-three-quarters fa-xl me-3"></i> Сховище безкоштовних розробок';
    $L['langSkStr_indexDwnApA3'] = 'Плагіни, модулі, шаблони сайтів та їх актуальний вихідний код зібрані у репозиторіях на <a href="https://github.com/webitproff?tab=repositories" target="_blank" class="fw-bold" title="Завантажити плагіни, модулі, шаблони та скрипти для Cotonti CMF">GitHub</a></p>';
    $L['langSkStr_indexDwnApQ4'] = '<i class="fa-solid fa-headset fa-xl me-3"></i> Підтримка користувачів Cotonti';
    $L['langSkStr_indexDwnApA4'] = '<p>Вам обов’язково допоможуть безкоштовно. Потрібно лише поставити предметне та детальне питання на <a href="https://abuyfile.com/ru/forums/cotonti" target="_blank" class="fw-bold" title="Форум підтримки користувачів Cotonti">форумі спільноти на нашому сайті</a></p>';
    $L['langSkStr_indexDwnApQ5'] = '<i class="fa-solid fa-book-atlas fa-xl me-3"></i> Керівництво користувача та документація по Cotonti CMF';
    $L['langSkStr_indexDwnApA5'] = '<p><i class="fa-solid fa-building-circle-arrow-right fa-xl me-3 text-success"></i>Оновлювана документація користувача <a href="https://abuyfile.com/ru/cotonti" target="_blank" class="fw-bold" title="Документація Cotonti">на сайті приватних розробників та ентузіастів, що підтримують Cotonti!</a></p><hr><i class="fa-solid fa-building-flag fa-xl me-3"></i><p>Офіційна документація <a href="https://www.cotonti.com/docs/" target="_blank" class="fw-bold" title="Форум і документація офіційного Cotonti">на офіційному сайті від перших розробників</a>, які не пов’язані з поточною командою.</p>';
}

/* Mega menu in header.tpl */

$L['langSkStr_nav_more_btn'] = '«Ще»';

$L['langSkStr_title_buyers'] = '«Покупцям»';
$L['langSkStr_item_discounts_title'] = 'Знижки та акції';
$L['langSkStr_item_discounts_desc'] = 'Спеціальні пропозиції';
$L['langSkStr_item_delivery_title'] = 'Доставка та оплата';
$L['langSkStr_item_delivery_desc'] = 'Способи та терміни';
$L['langSkStr_item_guarantees_title'] = 'Гарантії';
$L['langSkStr_item_guarantees_desc'] = 'Повернення та якість';

$L['langSkStr_title_company'] = '«Компанія»';
$L['langSkStr_item_about_title'] = 'Про нас';
$L['langSkStr_item_about_desc'] = 'Наша історія';
$L['langSkStr_item_blog_title'] = 'Блог';
$L['langSkStr_item_blog_desc'] = 'Новини та статті';
$L['langSkStr_item_partners_title'] = 'Партнерам';
$L['langSkStr_item_partners_desc'] = 'Співпраця';

$L['langSkStr_aside_badge'] = '«Рекомендуємо»';
$L['langSkStr_aside_title'] = '«Популярне прямо зараз»';
$L['langSkStr_aside_text'] = 'Короткий текст-запрошення — 1–2 рядки про розділ, на який веде кнопка нижче.';
$L['langSkStr_aside_btn'] = 'Відкрити';

// USERS, FORUMS, PAGES, FOOTER, etc. translation
$L['langSkStr_Username'] = 'Нік користувача';
$L['langSkStr_Account'] = 'Обліковий запис';
$L['langSkStr_passkey'] = 'Пароль користувача';
$L['langSkStr_passCurrent'] = 'Поточний пароль';
$L['langSkStr_passNew'] = 'Новий пароль';
$L['langSkStr_passNewRepeat'] = 'Новий пароль повторно';
$L['langSkStr_emailCurrentOnly'] = 'Email (для підтвердження)';
$L['langSkStr_emailCurrentRecover'] = 'Email (тільки дійсний)';
$L['langSkStr_captchaVerify'] = 'Арифметика для не ботів';
$L['langSkStr_captchaAnswer'] = 'Введіть результат';
$L['langSkStr_public_profile_page'] = 'Публічний профіль на сайті';
$L['langSkStr_public_profile_set_data'] = 'Налаштування профілю та дані';
$L['langSkStr_noticesLinkTitle'] = 'Сповіщення системи';

$L['langSkStr_footer_php_version'] = 'Версія PHP';
$L['langSkStr_footer_legacy_mode'] = 'Режим сумісності "legacyMode"';
$L['langSkStr_footer_legacy_mode_on'] = '<span class="text-bg-danger fw-semibold"> Увімкнено. Можливі проблеми </span>';
$L['langSkStr_footer_legacy_mode_off'] = '<span class="text-bg-success fw-semibold"> Вимкнено! Це добре! </span>';
$L['langSkStr_footer_engine'] = 'Движок сайту';
$L['langSkStr_footer_cotonti'] = 'Cotonti';
$L['langSkStr_footer_cotonti_tooltip'] = 'Cotonti – сучасний PHP-фреймворк для веб-розробки гнучких CMS, від візиток до порталів.';
$L['langSkStr_footer_core_version'] = 'Версія ядра';
$L['langSkStr_footer_db_version'] = 'Версія БД';
$L['langSkStr_footer_creation_time'] = 'Час генерації';
$L['langSkStr_footer_hooks_fired'] = 'Запущено хуків';
$L['langSkStr_footer_sql_statistics'] = 'Статистика SQL';
$L['langSkStr_footer_download_index36'] = 'Шаблон сайту <strong>«Index36»</strong> завантажити безкоштовно';
$L['langSkStr_footer_download_index36_title'] = 'Шаблон сайту «Index36» завантажити безкоштовно';

$L['langSkStr_pageInformation'] = 'Інформація про сторінку';
$L['langSkStr_pageDateCreated'] = 'Сторінка створена';
$L['langSkStr_pageDescriptionShort'] = 'Короткий опис';
$L['langSkStr_pageDescriptionFullContent'] = 'Повний опис вмісту';

$L['langSkStr_pageFormNoticeTitle'] = 'Форма редагування статті';
$L['langSkStr_pageFormNoticeContent'] = 'Відредагуйте та заповніть поля форми з даними сторінки. Після цього ви можете опублікувати матеріал, відправити на модерацію або зберегти як чернетку.';
$L['langSkStr_PFS_hint'] = 'для вставки в текст (повного опису статті)';
$L['langSkStr_PFS_myFiles_Title'] = 'Менеджер моїх файлів';
$L['langSkStr_pageFiles'] = 'Файли. Додати, вставити.';
$L['langSkStr_pageSeoMeta'] = 'SEO, Meta';
$L['langSkStr_pageLocalFileByURL'] = 'Прикріпити локальний файл за посиланням';
$L['langSkStr_pageDateTerms'] = 'Дати та терміни';
$L['langSkStr_pageAnotherData'] = 'Інші дані';
$L['langSkStr_pageKeyControlPoints'] = 'Ключові точки управління';

$L['langSkStr_pageSearch'] = 'Пошук по статтях';
$L['langSkStr_pageStructureCats'] = 'Категорії та рубрики';
$L['langSkStr_pageStructureCatsAdmin'] = 'Редагувати категорії та рубрики';
$L['langSkStr_pageConfigModule'] = 'Конфігурація модуля Pages';
$L['langSkStr_pageConfigModuleAdmin'] = 'Редагувати конфігурацію модуля Pages';
$L['langSkStr_pageExtrafields'] = 'Екстраполя модуля Pages';
$L['langSkStr_pageExtrafieldsAdmin'] = 'Редагувати екстраполя модуля Pages';
$L['langSkStr_pageAdminModule'] = 'Адміністрування модуля';
$L['langSkStr_pageModerate'] = 'Модерація сторінок';

$L['langSkStr_forumSearch'] = 'Пошук по форумах';
$L['langSkStr_forumStructureCats'] = 'Структура розділів';
$L['langSkStr_forumStructureCatsAdmin'] = 'Редагувати категорії та рубрики форуму';
$L['langSkStr_forumConfigModule'] = 'Конфігурація модуля Forums';
$L['langSkStr_forumConfigModuleAdmin'] = 'Редагувати конфігурацію модуля Forums';
$L['langSkStr_forumTopicExtrafields'] = 'Екстраполя топіків';
$L['langSkStr_forumTopicExtrafieldsAdmin'] = 'Редагувати екстраполя топіків модуля Forums';
$L['langSkStr_forumPostExtrafields'] = 'Екстраполя постів';
$L['langSkStr_forumPostExtrafieldsAdmin'] = 'Редагувати екстраполя постів модуля Forums';
$L['langSkStr_forumAdminModule'] = 'Адміністрування модуля';
$L['langSkStr_forumLastTopics'] = 'Останні теми';

$L['langSkStr_userConfigModule'] = 'Конфігурація модуля Users';
$L['langSkStr_userConfigModuleAdmin'] = 'Редагувати конфігурацію модуля Users';
$L['langSkStr_userExtrafields'] = 'Екстраполя модуля Users';
$L['langSkStr_userExtrafieldsAdmin'] = 'Редагувати екстраполя модуля Users';
$L['langSkStr_userGrpRights'] = 'Конфігурація груп і прав';
$L['langSkStr_userAdminModule'] = 'Адміністрування модуля';
$L['langSkStr_usersProfile'] = 'Профіль';
$L['langSkStr_usersSendPM'] = 'Повідомлення';
$L['langSkStr_usersPostCount'] = 'Постів на форумах';
$L['langSkStr_usersLogCount'] = 'Авторизацій на сайті';
$L['langSkStr_usersProfileBG'] = 'Фоновий профіль';
$L['langSkStr_usersJoined'] = 'З нами з';

$L['langSkStr_pageListIconHelp'] = 'Допомога та інструкції';
$L['langSkStr_pageListIconHelpContent'] = 'Текст вашої довідки користувачам. Відредагуйте рядок з ключем <code>pageListIconHelpContent</code> у файлі локалізації теми <strong>"Index36"</strong>';

$L['langSkStr_mainContent'] = 'Основний вміст';
$L['langSkStr_basicInfo'] = 'Основна інформація';
$L['langSkStr_pageContent'] = 'Вміст сторінки';
$L['langSkStr_parametersPageSyst'] = 'SEO-параметри сторінки та системні налаштування';
$L['langSkStr_publMangmt'] = 'Публікація та управління';
$L['langSkStr_pageByEachContent'] = 'Посторінковий вміст статті';

$L['langSkStr_period']       = 'Період';
$L['langSkStr_periodStart']  = 'Починаючи з';
$L['langSkStr_periodEnd']    = 'Включно до';
$L['langSkStr_searchFilters'] = 'Фільтри';
$L['langSkStr_searchReserFilter'] = 'Скинути фільтр';
$L['langSkStr_searchStartSearch'] = 'Почати пошук';

$L['langSkStr_tabPages'] = 'Сторінки, статті та новини';
$L['langSkStr_tabPlgTolls'] = 'Інструменти та плагіни';

$L['langSkStr_blank_temporary_example_title'] = '<i class="fa-regular fa-star fa-lg me-2"></i>Заготовка заголовок';
$L['langSkStr_blank_temporary_example_desc'] = '
<i class="fa-solid fa-info-circle fa-xl me-3"></i>Опис як <span class="text-danger fw-semibold"> приклад заготовки</span>. 
<span class="text-primary fw-semibold">Приклад</span> текстового контенту <span class="text-success fw-semibold">для подальшої </span> <span class="text-warning fw-semibold">кастомізації</span> шаблону <a href="https://github.com/webitproff/index36-cotonti-theme" target="_blank" title="Завантажити шаблон Cotonti CMF безкоштовно"><strong>"Index36"</strong></a>.<hr class="my-2"> 
<p><i class="fa-solid fa-edit fa-xl me-3"></i> Редагувати шаблон можна на власний розсуд. Якщо у вас немає часу або знань – завжди можна замовити адаптацію шаблону, написавши мені через <a href="https://github.com/webitproff" target="_blank" class="fw-bold" title="Контакти розробника на GitHub">GitHub</a> або <a href="https://abuyfile.com/ru/users/webitproff" class="fw-bold link-success" title="Контакти розробника">особисті повідомлення на публічній сторінці</a> маркетплейсу цифрових товарів.</p>';

$L['msg404_title'] = 'Упс. Сторінку не знайдено (404)';
$L['msg404_body'] = 'Сторінка, яку ви шукаєте, ймовірно застаріла і більше недоступна. Будь ласка, поверніться на головну або скористайтеся пошуком';
$L['langSkStr_BackToHome'] = 'На головну';


$L['langSkStr_debug_tpl_note_1'] = 'Функція з файлу';
$L['langSkStr_debug_tpl_note_2'] = 'виводить абсолютну адресу шаблону та показує це повідомлення <strong>тільки супер адміністраторам.</strong>';
$L['langSkStr_debug_tpl_note_3'] = 'Це дозволяє уникнути плутанини під час правок шаблонів.';
