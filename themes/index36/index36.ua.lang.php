<?php
/** 
 * Index36 - Theme for Cotonti
 * Compatibility: [CMF/CMS Cotonti Siena v0.9.26+](https://github.com/Cotonti/Cotonti); PHP-8.4 & MySQL-8.0 
 * File: index36.ua.lang.php 
 * Placement: /themes/index36/index36.ua.lang.php 
 * Description: Файл локалізації теми для інтерфейсу українською мовою
 * Created: 01 Feb 2026  
 * Updated: 24 Feb 2026
 * Source code: https://github.com/webitproff/index36-cotonti-theme
 * Support & Help: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
 * 
 * @package index36 
 * @version 1.0.2  
 * @author webitproff 
 * @copyright (c) 2026 webitproff | https://github.com/webitproff 
 * @license BSD (Безкоштовне використання та поширення з збереженням авторських прав)   
 */ 

defined('COT_CODE') or die('Wrong URL.');

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
    $langSkStr['indexWeCanHelp'] = 'Чим ми можемо вам допомогти?';
    $langSkStr['indexPopularSearched'] = 'Популярне в пошуку';
    $langSkStr['indexGetStart'] = 'Перше знайомство з Cotonti';
    $langSkStr['indexGtStQ1'] = '<i class="fa-regular fa-star fa-xl me-3"></i> Що таке Cotonti?';
    $langSkStr['indexGtStA1'] = 'Це основа, на якій розробник може створювати різні CMS, від сайту-візитки до соціальної мережі.';
    $langSkStr['indexGtStQ2'] = '<i class="fa-regular fa-star fa-xl me-3"></i> Що може Cotonti?';
    $langSkStr['indexGtStA2'] = '<p>Якщо наочно, уявіть, що з гаража виїжджає тюнінгований прокачаний автомобіль після реконструкції та модернізації – це ваш сайт.</p>
    <p>А кілька місяців тому ви привезли машину прямо з конвеєра або навіть металобрухт.</p>';
    $langSkStr['indexGtStQ3'] = '<i class="fa-regular fa-star fa-xl me-3"></i> Для кого Cotonti?';
    $langSkStr['indexGtStA3'] = '<p>З точки зору розробки – насамперед для PHP-розробників сайтів.</p><p>З точки зору адміністрування – впорається будь-хто, хто вміє користуватися смартфоном.</p>';
    $langSkStr['indexGtStQ4'] = '<i class="fa-regular fa-star fa-xl me-3"></i> А якщо я новачок?';
    $langSkStr['indexGtStA4'] = '<p>Існує поріг входження, хоча б здатність читати простий код у кілька рядків.</p><p>Можна навчитися досить швидко самостійно, використовуючи документацію та задаючи питання на форумі.</p>';

    $langSkStr['indexDownApp'] = 'Cotonti – завантажити додатки';
    $langSkStr['indexDwnApQ1'] = '<i class="fa-solid fa-compact-disc fa-xl me-3"></i> Встановлювальний пакет на GitHub';
    $langSkStr['indexDwnApA1'] = '<p>Актуальний вихідний код Cotonti завжди <a href="https://github.com/Cotonti/Cotonti" target="_blank" class="badge rounded border bg-warning border-dark fw-bold text-dark link-light" title="Завантажити встановлювальний архів Cotonti CMS/CMF">доступний за посиланням</a></p>';
    $langSkStr['indexDwnApQ2'] = '<i class="fa-solid fa-puzzle-piece fa-xl me-3"></i> Завантажити модулі та плагіни';
    $langSkStr['indexDwnApA2'] = '<p>Відвідайте <a href="https://abuyfile.com/ru/market" target="_blank" class="fw-bold" title="Маркетплейс розширень та шаблонів тем для Cotonti CMS/CMF">маркетплейс розширень та шаблонів тем</a> для CMF Cotonti.</p>
    <p>Ви зможете ознайомитися з кожним, завантажити безкоштовно або замовити платну адаптацію під ваші потреби.</p>';
    $langSkStr['indexDwnApQ3'] = '<i class="fa-solid fa-battery-three-quarters fa-xl me-3"></i> Сховище безкоштовних розробок';
    $langSkStr['indexDwnApA3'] = 'Плагіни, модулі, шаблони сайтів та їх актуальний вихідний код зібрані у репозиторіях на <a href="https://github.com/webitproff?tab=repositories" target="_blank" class="fw-bold" title="Завантажити плагіни, модулі, шаблони та скрипти для Cotonti CMF">GitHub</a></p>';
    $langSkStr['indexDwnApQ4'] = '<i class="fa-solid fa-headset fa-xl me-3"></i> Підтримка користувачів Cotonti Siena';
    $langSkStr['indexDwnApA4'] = '<p>Вам обов’язково допоможуть безкоштовно. Потрібно лише поставити предметне та детальне питання на <a href="https://abuyfile.com/ru/forums/cotonti" target="_blank" class="fw-bold" title="Форум підтримки користувачів Cotonti">форумі спільноти на нашому сайті</a></p>';
    $langSkStr['indexDwnApQ5'] = '<i class="fa-solid fa-book-atlas fa-xl me-3"></i> Керівництво користувача та документація по Cotonti CMF';
    $langSkStr['indexDwnApA5'] = '<p><i class="fa-solid fa-building-circle-arrow-right fa-xl me-3 text-success"></i>Оновлювана документація користувача <a href="https://abuyfile.com/ru/cotonti" target="_blank" class="fw-bold" title="Документація Cotonti">на сайті приватних розробників та ентузіастів, що підтримують Cotonti!</a></p><hr><i class="fa-solid fa-building-flag fa-xl me-3"></i><p>Офіційна документація <a href="https://www.cotonti.com/docs/" target="_blank" class="fw-bold" title="Форум і документація офіційного Cotonti">на офіційному сайті від перших розробників</a>, які не пов’язані з поточною командою.</p>';
}

// USERS, FORUMS, PAGES, FOOTER, etc. translation
$langSkStr['Username'] = 'Нік користувача';
$langSkStr['Account'] = 'Обліковий запис';
$langSkStr['passkey'] = 'Пароль користувача';
$langSkStr['passCurrent'] = 'Поточний пароль';
$langSkStr['passNew'] = 'Новий пароль';
$langSkStr['passNewRepeat'] = 'Новий пароль повторно';
$langSkStr['emailCurrentOnly'] = 'Email (для підтвердження)';
$langSkStr['emailCurrentRecover'] = 'Email (тільки дійсний)';
$langSkStr['captchaVerify'] = 'Арифметика для не ботів';
$langSkStr['captchaAnswer'] = 'Введіть результат';
$langSkStr['public_profile_page'] = 'Публічний профіль на сайті';
$langSkStr['public_profile_set_data'] = 'Налаштування профілю та дані';
$langSkStr['noticesLinkTitle'] = 'Сповіщення системи';

$langSkStr['footer_php_version'] = 'Версія PHP';
$langSkStr['footer_legacy_mode'] = 'Режим сумісності "legacyMode"';
$langSkStr['footer_legacy_mode_on'] = '<span class="text-bg-danger fw-semibold"> Увімкнено. Можливі проблеми </span>';
$langSkStr['footer_legacy_mode_off'] = '<span class="text-bg-success fw-semibold"> Вимкнено! Це добре! </span>';
$langSkStr['footer_engine'] = 'Движок сайту';
$langSkStr['footer_cotonti'] = 'Cotonti Siena';
$langSkStr['footer_cotonti_tooltip'] = 'Cotonti – сучасний PHP-фреймворк для веб-розробки гнучких CMS, від візиток до порталів.';
$langSkStr['footer_core_version'] = 'Версія ядра';
$langSkStr['footer_db_version'] = 'Версія БД';
$langSkStr['footer_creation_time'] = 'Час генерації';
$langSkStr['footer_hooks_fired'] = 'Запущено хуків';
$langSkStr['footer_sql_statistics'] = 'Статистика SQL';

$langSkStr['pageInformation'] = 'Інформація про сторінку';
$langSkStr['pageDateCreated'] = 'Сторінка створена';
$langSkStr['pageDescriptionShort'] = 'Короткий опис';
$langSkStr['pageDescriptionFullContent'] = 'Повний опис вмісту';

$langSkStr['pageFormNoticeTitle'] = 'Форма редагування статті';
$langSkStr['pageFormNoticeContent'] = 'Відредагуйте та заповніть поля форми з даними сторінки. Після цього ви можете опублікувати матеріал, відправити на модерацію або зберегти як чернетку.';
$langSkStr['PFS_hint'] = 'для вставки в текст (повного опису статті)';
$langSkStr['PFS_myFiles_Title'] = 'Менеджер моїх файлів';
$langSkStr['pageFiles'] = 'Файли. Додати, вставити.';
$langSkStr['pageSeoMeta'] = 'SEO, Meta';
$langSkStr['pageLocalFileByURL'] = 'Прикріпити локальний файл за посиланням';
$langSkStr['pageDateTerms'] = 'Дати та терміни';
$langSkStr['pageAnotherData'] = 'Інші дані';
$langSkStr['pageKeyControlPoints'] = 'Ключові точки управління';

$langSkStr['pageSearch'] = 'Пошук по статтях';
$langSkStr['pageStructureCats'] = 'Категорії та рубрики';
$langSkStr['pageStructureCatsAdmin'] = 'Редагувати категорії та рубрики';
$langSkStr['pageConfigModule'] = 'Конфігурація модуля Pages';
$langSkStr['pageConfigModuleAdmin'] = 'Редагувати конфігурацію модуля Pages';
$langSkStr['pageExtrafields'] = 'Екстраполя модуля Pages';
$langSkStr['pageExtrafieldsAdmin'] = 'Редагувати екстраполя модуля Pages';
$langSkStr['pageAdminModule'] = 'Адміністрування модуля';
$langSkStr['pageModerate'] = 'Модерація сторінок';

$langSkStr['forumSearch'] = 'Пошук по форумах';
$langSkStr['forumStructureCats'] = 'Структура розділів';
$langSkStr['forumStructureCatsAdmin'] = 'Редагувати категорії та рубрики форуму';
$langSkStr['forumConfigModule'] = 'Конфігурація модуля Forums';
$langSkStr['forumConfigModuleAdmin'] = 'Редагувати конфігурацію модуля Forums';
$langSkStr['forumTopicExtrafields'] = 'Екстраполя топіків';
$langSkStr['forumTopicExtrafieldsAdmin'] = 'Редагувати екстраполя топіків модуля Forums';
$langSkStr['forumPostExtrafields'] = 'Екстраполя постів';
$langSkStr['forumPostExtrafieldsAdmin'] = 'Редагувати екстраполя постів модуля Forums';
$langSkStr['forumAdminModule'] = 'Адміністрування модуля';
$langSkStr['forumLastTopics'] = 'Останні теми';

$langSkStr['userConfigModule'] = 'Конфігурація модуля Users';
$langSkStr['userConfigModuleAdmin'] = 'Редагувати конфігурацію модуля Users';
$langSkStr['userExtrafields'] = 'Екстраполя модуля Users';
$langSkStr['userExtrafieldsAdmin'] = 'Редагувати екстраполя модуля Users';
$langSkStr['userGrpRights'] = 'Конфігурація груп і прав';
$langSkStr['userAdminModule'] = 'Адміністрування модуля';
$langSkStr['usersProfile'] = 'Профіль';
$langSkStr['usersSendPM'] = 'Повідомлення';
$langSkStr['usersPostCount'] = 'Постів на форумах';
$langSkStr['usersLogCount'] = 'Авторизацій на сайті';
$langSkStr['usersProfileBG'] = 'Фоновий профіль';
$langSkStr['usersJoined'] = 'З нами з';

$langSkStr['pageListIconHelp'] = 'Допомога та інструкції';
$langSkStr['pageListIconHelpContent'] = 'Текст вашої довідки користувачам. Відредагуйте рядок з ключем <code>pageListIconHelpContent</code> у файлі локалізації теми <strong>"Index36"</strong>';

$langSkStr['mainContent'] = 'Основний вміст';
$langSkStr['basicInfo'] = 'Основна інформація';
$langSkStr['pageContent'] = 'Вміст сторінки';
$langSkStr['parametersPageSyst'] = 'SEO-параметри сторінки та системні налаштування';
$langSkStr['publMangmt'] = 'Публікація та управління';
$langSkStr['pageByEachContent'] = 'Посторінковий вміст статті';

$langSkStr['period']       = 'Період';
$langSkStr['periodStart']  = 'Починаючи з';
$langSkStr['periodEnd']    = 'Включно до';
$langSkStr['searchFilters'] = 'Фільтри';
$langSkStr['searchReserFilter'] = 'Скинути фільтр';
$langSkStr['searchStartSearch'] = 'Почати пошук';

$langSkStr['tabPages'] = 'Сторінки, статті та новини';
$langSkStr['tabPlgTolls'] = 'Інструменти та плагіни';

$langSkStr['blank_temporary_example_title'] = '<i class="fa-regular fa-star fa-lg me-2"></i>Заготовка заголовок';
$langSkStr['blank_temporary_example_desc'] = '
<i class="fa-solid fa-info-circle fa-xl me-3"></i>Опис як <span class="text-danger fw-semibold"> приклад заготовки</span>. 
<span class="text-primary fw-semibold">Приклад</span> текстового контенту <span class="text-success fw-semibold">для подальшої </span> <span class="text-warning fw-semibold">кастомізації</span> шаблону <a href="https://github.com/webitproff/index36-cotonti-theme" target="_blank" title="Завантажити шаблон Cotonti CMF безкоштовно"><strong>"Index36"</strong></a>.<hr class="my-2"> 
<p><i class="fa-solid fa-edit fa-xl me-3"></i> Редагувати шаблон можна на власний розсуд. Якщо у вас немає часу або знань – завжди можна замовити адаптацію шаблону, написавши мені через <a href="https://github.com/webitproff" target="_blank" class="fw-bold" title="Контакти розробника на GitHub">GitHub</a> або <a href="https://abuyfile.com/ru/users/webitproff" class="fw-bold link-success" title="Контакти розробника">особисті повідомлення на публічній сторінці</a> маркетплейсу цифрових товарів.</p>';

$L['msg404_title'] = 'Упс. Сторінку не знайдено (404)';
$L['msg404_body'] = 'Сторінка, яку ви шукаєте, ймовірно застаріла і більше недоступна. Будь ласка, поверніться на головну або скористайтеся пошуком';
$langSkStr['BackToHome'] = 'На головну';
