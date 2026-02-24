<?php
/** 
 * Index36 - Theme for Cotonti
 * Compatibility: [CMF/CMS Cotonti Siena v0.9.26+](https://github.com/Cotonti/Cotonti); PHP-8.4 & MySQL-8.0 
 * File: index36.ru.lang.php 
 * Placement: /themes/index36/index36.ru.lang.php 
 * Description: Languages Skin Strings - Пользовательский файл локализации темы для интерфейса на русском языке 
 * Created: 01 Feb 2026  
 * Updated: 23 Feb 2026
 * Source code: https://github.com/webitproff/index36-cotonti-theme
 * Support & Help: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
 * 
 * @package index36 
 * @version 1.0.2  
 * @author webitproff 
 * @copyright (c) 2026 webitproff | https://github.com/webitproff 
 * @license BSD (Free using and distribution with saving copyrights)   
 */ 


defined('COT_CODE') or die('Wrong URL.');
// USERS groups localization title
if (isset($cot_groups['7']['name']) && is_array($cot_groups)) {
	$cot_groups['7']['name'] = 'Заказчики и участники';
}

if (isset($cot_groups['4']['name']) && is_array($cot_groups)) {
	$cot_groups['4']['name'] = 'Специалисты';
}
// PAGE structure localization title
if (isset($structure['page']['news']) && is_array($structure['page']['news'])) {
    $structure['page']['news']['title'] = 'Новости проекта';
    $structure['page']['news']['desc'] = 'Это описание категории новостей для русской локализации сайта в файле темы';
}
if (isset($structure['page']['articles']) && is_array($structure['page']['articles'])) {
    $structure['page']['articles']['title'] = 'Статьи проекта';
    $structure['page']['articles']['desc'] = 'Это описание категории статей для русской локализации сайта в файле темы';
}

// Подгружать строки ТОЛЬКО на главной странице (index)
// Главная страница определяется как: ?e=index  ИЛИ отсутствие параметра e
// $ext = $_GET['e'] ?? 'index'; или $ext = Cot::$env['ext'] ?? 'index';
$ext = Cot::$env['ext'] ?? 'index';
if ($ext === 'index') {
    $langSkStr['indexWeCanHelp'] = 'Кам мы можем вам помочь?';
    $langSkStr['indexPopularSearched'] = 'Популярное в поиске';
    $langSkStr['indexGetStart'] = 'Первое знакомство с Cotonti';
    $langSkStr['indexGtStQ1'] = '<i class="fa-regular fa-star fa-xl me-3"></i>  Что такое Cotonti?';
    $langSkStr['indexGtStA1'] = 'Это основа, на чем, разработчик может строить разные CMS, от сайта визитки до социальной сети';
    $langSkStr['indexGtStQ2'] = '<i class="fa-regular fa-star fa-xl me-3"></i>  Что может Cotonti?';
    $langSkStr['indexGtStA2'] = '<p>Если наглядно, - представьте из гаража выезжяет тюнингованная прокачанная тачка после реконструкции и модернизации, и это ваше авто.</p>
    <p>А пару месяцев назад, вы пригнали машину сразу с конвейера или вообще металлолом. </p>';
    $langSkStr['indexGtStQ3'] = '<i class="fa-regular fa-star fa-xl me-3"></i>  Для кого Cotonti?';
    $langSkStr['indexGtStA3'] = '<p>Если смотреть на этапе разработки - то прежде всего для разработчиков сайтов на PHP. </p><p>Если смотреть на этапе администрирования, как на готовый сайт - разберется любой, кто может освоить смартфон.</p>';
    $langSkStr['indexGtStQ4'] = '<i class="fa-regular fa-star fa-xl me-3"></i>  А если я новичек?';
    $langSkStr['indexGtStA4'] = '<p>Порог вхождения присутствует, хотя бы в виде способности читать простейший код в несколько строк.</p><p>Можно научиться достаточно быстро и самостоятельно, используя документацию и задавая вопросы на форуме.</p>';

    $langSkStr['indexDownApp'] = 'Cotonti - скачать приложения';
    $langSkStr['indexDwnApQ1'] = '<i class="fa-solid fa-compact-disc fa-xl me-3"></i> Установочный пакет на GitHub';
    $langSkStr['indexDwnApA1'] = '<p>Актуальный исходный код Cotonti всегда <a href="https://github.com/Cotonti/Cotonti" target="_blank" class="badge rounded border bg-warning border-dark fw-bold text-dark link-light" title="Скачать установочный архив Cotonti CMS/CMF">доступен по ссылке</a></p>';
    $langSkStr['indexDwnApQ2'] = '<i class="fa-solid fa-puzzle-piece fa-xl me-3"></i> Модули и плагины скачать';
    $langSkStr['indexDwnApA2'] = '<p>Посетите <a href="https://abuyfile.com/ru/market" target="_blank" class="fw-bold" title="маркетплейс расширений и шаблонов тем для Cotonti CMS/CMF">маркетплейс расширений и шаблонов тем</a> сайта для CMF Cotonti.</p>
    <p>Вы сможете ознакомиться с каждым, скачать бесплатно или заказать платную переработку приложения именно под ваши нужды.</p>';
    $langSkStr['indexDwnApQ3'] = '<i class="fa-solid fa-battery-three-quarters fa-xl me-3"></i> Хранилище бесплатных разработок';
    $langSkStr['indexDwnApA3'] = 'Плагины и модули, шаблоны сайтов и их актуальный исходный код собраны в репозиториях на <a href="https://github.com/webitproff?tab=repositories" target="_blank" class="fw-bold" title="Скачать плагины и модули, шаблоны и скрипты для Cotonti CMF">GitHub</a></p>';
    $langSkStr['indexDwnApQ4'] = '<i class="fa-solid fa-headset fa-xl me-3"></i> Поддержка пользователей Cotonti Siena';
    $langSkStr['indexDwnApA4'] = '<p>Вам обязательно помогут и бесплатно. Нужно лишь потрудиться составить предметный и обстоятельный вопрос, чтобы задать его  <a href="https://abuyfile.com/ru/forums/cotonti" target="_blank" class="fw-bold" title="форум поддержки пользователей и помощь по Cotonti">на форуме сообщества на нашем сайте!</a></p>';
    $langSkStr['indexDwnApQ5'] = '<i class="fa-solid fa-book-atlas fa-xl me-3"></i> Рукодство пользователя и документация по Cotonti CMF';
    $langSkStr['indexDwnApA5'] = '<p><i class="fa-solid fa-building-circle-arrow-right fa-xl me-3 text-success"></i>Пользовательская обновляемая документация <a href="https://abuyfile.com/ru/cotonti" target="_blank" class="fw-bold" title="Документация Cotonti"> на сайте частных разработчиков и энтузиастов, активно поддерживающих Котонти!</a></p><hr><i class="fa-solid fa-building-flag fa-xl me-3"></i><p>Официальная документация <a href="https://www.cotonti.com/docs/" target="_blank" class="fw-bold" title="форум и документация официального Cotonti"> на официальном сайте от первых разработчиков</a>, которые никак не связаны с текущей командой!</p>';
}



$langSkStr['Username'] = 'Никнейм пользователя';  
$langSkStr['Account'] = 'Аккаунт';
$langSkStr['passkey'] = 'Пароль пользователя';
$langSkStr['passCurrent'] = 'Пароль текущий';
$langSkStr['passNew'] = 'Пароль новый';
$langSkStr['passNewRepeat'] = 'Пароль новый повторно';
$langSkStr['emailCurrentOnly'] = 'Email (для подтверждения)';
$langSkStr['emailCurrentRecover'] = 'Email (только действующий)';
$langSkStr['captchaVerify'] = 'Арифметика для не ботов';
$langSkStr['captchaAnswer'] = 'Введите результат';
$langSkStr['public_profile_page'] = 'Публичный профиль на сайте';
$langSkStr['public_profile_set_data'] = 'Настройки профиля и данные';
$langSkStr['noticesLinkTitle'] = 'Уведомления системы';

$langSkStr['footer_php_version'] = 'Версия PHP';
$langSkStr['footer_legacy_mode'] = 'Режим совместимости "legacyMode"';
$langSkStr['footer_legacy_mode_on'] = '<span class="text-bg-danger fw-semibold"> Включён. Могут быть проблемы </span>';
$langSkStr['footer_legacy_mode_off'] = '<span class="text-bg-success fw-semibold"> Выключен! Это хорошо! </span>';
$langSkStr['footer_engine'] = 'Движок сайта';
$langSkStr['footer_cotonti'] = 'Cotonti Siena';
$langSkStr['footer_cotonti_tooltip'] = 'Cotonti - это современный PHP Фреймворк для веб-разработки гибких CMS, от визиток до порталов.';
$langSkStr['footer_core_version'] = 'Версия ядра';
$langSkStr['footer_db_version'] = 'Версия БД';
$langSkStr['footer_creation_time'] = 'Время генерации';
$langSkStr['footer_hooks_fired'] = 'Запущено хуков';
$langSkStr['footer_sql_statistics'] = 'Статистика SQL';


$langSkStr['pageInformation'] = 'Информация о странице';
$langSkStr['pageDateCreated'] = 'Cтраница создана';
$langSkStr['pageDescriptionShort'] = 'Краткое описание';
$langSkStr['pageDescriptionFullContent'] = 'Полное описание содержимого';

$langSkStr['pageFormNoticeTitle'] = 'Форма редактирования статьи';
$langSkStr['pageFormNoticeContent'] = 'Отредактируйте и заполните поля формы с данными страницы. После этого вы можете опубликовать материал, отправить на модерацию или сохранить в черновиках.';
$langSkStr['PFS_hint'] = 'для вставки в текст (полного описания статьи)';
$langSkStr['PFS_myFiles_Title'] = 'Менеджер моих файлов';
$langSkStr['pageFiles'] = 'Файлы. Прикрепление, вставка.';
$langSkStr['pageSeoMeta'] = 'SEO, Meta';
$langSkStr['pageLocalFileByURL'] = 'Прикрепить локальный файл по ссылке';
$langSkStr['pageDateTerms'] = 'Даты и сроки';
$langSkStr['pageAnotherData'] = 'Другие данные';
$langSkStr['pageKeyControlPoints'] = 'Ключевые точки управления';

$langSkStr['pageSearch'] = 'Поиск по статьям';
$langSkStr['pageStructureCats'] = 'Категории и рубрики';
$langSkStr['pageStructureCatsAdmin'] = 'Категории и рубрики редактировать';
$langSkStr['pageConfigModule'] = 'Конфигурация модуля Pages';
$langSkStr['pageConfigModuleAdmin'] = 'Конфигурация модуля Pages редактировать';
$langSkStr['pageExtrafields'] = 'Экстраполя модуля Pages';
$langSkStr['pageExtrafieldsAdmin'] = 'Редактировать Экстраполя модуля Pages';
$langSkStr['pageAdminModule'] = 'Админ-ние модуля';
$langSkStr['pageModerate'] = 'Модерация страниц';

$langSkStr['forumSearch'] = 'Поиск по форумам';
$langSkStr['forumStructureCats'] = 'Структура разделов';
$langSkStr['forumStructureCatsAdmin'] = 'Редактировать категории и рубрики форумов';
$langSkStr['forumConfigModule'] = 'Конфигурация модуля Forums';
$langSkStr['forumConfigModuleAdmin'] = 'Конфигурация модуля Forums редактировать';
$langSkStr['forumTopicExtrafields'] = 'Экстраполя топиков';
$langSkStr['forumTopicExtrafieldsAdmin'] = 'Редактировать Экстраполя топиков модуля Forums';
$langSkStr['forumPostExtrafields'] = 'Экстраполя постов';
$langSkStr['forumPostExtrafieldsAdmin'] = 'Редактировать Экстраполя постов модуля Forums';
$langSkStr['forumAdminModule'] = 'Админ-ние модуля';
$langSkStr['forumLastTopics'] = 'Последние топики';

$langSkStr['userConfigModule'] = 'Конфигурация модуля Users';
$langSkStr['userConfigModuleAdmin'] = 'Конфигурация модуля Users редактировать';
$langSkStr['userExtrafields'] = 'Экстраполя модуля Users';
$langSkStr['userExtrafieldsAdmin'] = 'Редактировать Экстраполя модуля Users';
$langSkStr['userGrpRights'] = 'Конфигурация групп и прав';
$langSkStr['userAdminModule'] = 'Админ-ние модуля';
$langSkStr['usersProfile'] = 'Профиль';
$langSkStr['usersSendPM'] = 'Сообщение';
$langSkStr['usersPostCount'] = 'Постов на форумах';
$langSkStr['usersLogCount'] = 'Авторизаций на сайте';
$langSkStr['usersProfileBG'] = 'Background Profile';
$langSkStr['usersJoined'] = 'С нами с';


$langSkStr['pageListIconHelp'] = 'Помощь и справка';
$langSkStr['pageListIconHelpContent'] = 'Текст вашей справки пользователям. Отредактируейте строку с ключем <code>pageListIconHelpContent</code> в файле локализации темы <strong>"Index36"</strong>';

$langSkStr['mainContent'] = 'Основное содержимое';
$langSkStr['basicInfo'] = 'Основная информация';
$langSkStr['pageContent'] = 'Содержимое страницы';
$langSkStr['parametersPageSyst'] = 'SEO-параметры страницы и системные настройки';
$langSkStr['publMangmt'] = 'Публикация и управление';
$langSkStr['pageByEachContent'] = 'Постраничное содержимое статьи';


$langSkStr['period']       = 'Период';
$langSkStr['periodStart']  = 'Начиная с';
$langSkStr['periodEnd']    = 'Включительно до';
$langSkStr['searchFilters'] = 'Фильтры';
$langSkStr['searchReserFilter'] = 'Сброс фильтра';
$langSkStr['searchStartSearch'] = 'Начать поиск';



// SIDEBAR TABS
$langSkStr['tabPages'] = 'Страницы, статьи и новости';
$langSkStr['tabPlgTolls'] = 'Инструменты и плагины';

$langSkStr['blank_temporary_example_title'] = '<i class="fa-regular fa-star fa-lg me-2"></i>Заготовка заголовок';
$langSkStr['blank_temporary_example_desc'] = '
<i class="fa-solid fa-info-circle fa-xl me-3"></i>Описание как <span class="text-danger fw-semibold"> пример заготовки</span>. 
<span class="text-primary fw-semibold">Пример</span> текстового контента <span class="text-success fw-semibold">для дальнейшей </span> <span class="text-warning fw-semibold">кастомизации</span> шаблона <a href="https://github.com/webitproff/index36-cotonti-theme" target="_blank" title="Скачать шаблон Cotonti CMF бесплатно"><strong>"Index36"</strong></a>.<hr class="my-2"> 
<p><i class="fa-solid fa-edit fa-xl me-3"></i> Редактировать шаблон вы можете на свое усмотрение и как вам угодно. Если у вас на это нет времени или недостаточно знаний - вы всегда можете заказать адаптацию шаблона сайта написав мне по контактам на <a href="https://github.com/webitproff" target="_blank" class="fw-bold" title="контакты разработчика на GitHub">GitHub</a> или <a href="https://abuyfile.com/ru/users/webitproff" class="fw-bold link-success" title="контакты разработчика">в личные сообщения на публичной странице</a> сайта маркетплейса цифровых товаров</p>';

$L['msg404_title'] = 'Упс. Страница не найдена. (404)';
$L['msg404_body'] = 'Страница, которую вы ищете, вероятно устарела и более недоступна. Пожалуйста, вернитесь на главную или воспользуйтесь поиском';
$langSkStr['BackToHome'] = 'На Главную';


