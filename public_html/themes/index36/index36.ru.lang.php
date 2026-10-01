<?php
/** 
 * Index36 - Theme for Cotonti
 * Compatibility: [CMF/CMS Cotonti V.1](https://github.com/Cotonti/Cotonti); PHP-8.5 & MySQL-8.4 
 * File: index36.ru.lang.php 
 * Placement: /themes/index36/index36.ru.lang.php 
 * Description: Languages Skin Strings - Пользовательский файл локализации темы для интерфейса на русском языке 
 * Created: 01 Feb 2026  
 * Updated: 28 Sep 2026 
 * Source code: https://github.com/webitproff/index36-cotonti-theme
 * Support & Help: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
 * 
 * @package index36 
 * @version 2.0.1  
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
    $L['langSkStr_indexWeCanHelp'] = 'Кам мы можем вам помочь?';
    $L['langSkStr_indexPopularSearched'] = 'Популярное в поиске';
    $L['langSkStr_indexGetStart'] = 'Первое знакомство с Cotonti';
    $L['langSkStr_indexGtStQ1'] = '<i class="fa-regular fa-star fa-xl me-3"></i>  Что такое Cotonti?';
    $L['langSkStr_indexGtStA1'] = 'Это основа, на чем, разработчик может строить разные CMS, от сайта визитки до социальной сети';
    $L['langSkStr_indexGtStQ2'] = '<i class="fa-regular fa-star fa-xl me-3"></i>  Что может Cotonti?';
    $L['langSkStr_indexGtStA2'] = '<p>Если наглядно, - представьте из гаража выезжяет тюнингованная прокачанная тачка после реконструкции и модернизации, и это ваше авто.</p>
    <p>А пару месяцев назад, вы пригнали машину сразу с конвейера или вообще металлолом. </p>';
    $L['langSkStr_indexGtStQ3'] = '<i class="fa-regular fa-star fa-xl me-3"></i>  Для кого Cotonti?';
    $L['langSkStr_indexGtStA3'] = '<p>Если смотреть на этапе разработки - то прежде всего для разработчиков сайтов на PHP. </p><p>Если смотреть на этапе администрирования, как на готовый сайт - разберется любой, кто может освоить смартфон.</p>';
    $L['langSkStr_indexGtStQ4'] = '<i class="fa-regular fa-star fa-xl me-3"></i>  А если я новичек?';
    $L['langSkStr_indexGtStA4'] = '<p>Порог вхождения присутствует, хотя бы в виде способности читать простейший код в несколько строк.</p><p>Можно научиться достаточно быстро и самостоятельно, используя документацию и задавая вопросы на форуме.</p>';

    $L['langSkStr_indexDownApp'] = 'Cotonti - скачать приложения';
    $L['langSkStr_indexDwnApQ1'] = '<i class="fa-solid fa-compact-disc fa-xl me-3"></i> Установочный пакет на GitHub';
    $L['langSkStr_indexDwnApA1'] = '<p>Актуальный исходный код Cotonti всегда <a href="https://github.com/Cotonti/Cotonti" target="_blank" class="badge rounded border bg-warning border-dark fw-bold text-dark link-light" title="Скачать установочный архив Cotonti CMS/CMF">доступен по ссылке</a></p>';
    $L['langSkStr_indexDwnApQ2'] = '<i class="fa-solid fa-puzzle-piece fa-xl me-3"></i> Модули и плагины скачать';
    $L['langSkStr_indexDwnApA2'] = '<p>Посетите <a href="https://abuyfile.com/ru/market" target="_blank" class="fw-bold" title="маркетплейс расширений и шаблонов тем для Cotonti CMS/CMF">маркетплейс расширений и шаблонов тем</a> сайта для CMF Cotonti.</p>
    <p>Вы сможете ознакомиться с каждым, скачать бесплатно или заказать платную переработку приложения именно под ваши нужды.</p>';
    $L['langSkStr_indexDwnApQ3'] = '<i class="fa-solid fa-battery-three-quarters fa-xl me-3"></i> Хранилище бесплатных разработок';
    $L['langSkStr_indexDwnApA3'] = 'Плагины и модули, шаблоны сайтов и их актуальный исходный код собраны в репозиториях на <a href="https://github.com/webitproff?tab=repositories" target="_blank" class="fw-bold" title="Скачать плагины и модули, шаблоны и скрипты для Cotonti CMF">GitHub</a></p>';
    $L['langSkStr_indexDwnApQ4'] = '<i class="fa-solid fa-headset fa-xl me-3"></i> Поддержка пользователей Cotonti';
    $L['langSkStr_indexDwnApA4'] = '<p>Вам обязательно помогут и бесплатно. Нужно лишь потрудиться составить предметный и обстоятельный вопрос, чтобы задать его  <a href="https://abuyfile.com/ru/forums/cotonti" target="_blank" class="fw-bold" title="форум поддержки пользователей и помощь по Cotonti">на форуме сообщества на нашем сайте!</a></p>';
    $L['langSkStr_indexDwnApQ5'] = '<i class="fa-solid fa-book-atlas fa-xl me-3"></i> Руководство пользователя и документация по Cotonti CMF';
    $L['langSkStr_indexDwnApA5'] = '<p><i class="fa-solid fa-building-circle-arrow-right fa-xl me-3 text-success"></i>Пользовательская обновляемая документация <a href="https://abuyfile.com/ru/cotonti" target="_blank" class="fw-bold" title="Документация Cotonti"> на сайте частных разработчиков и энтузиастов, активно поддерживающих Котонти!</a></p><hr><i class="fa-solid fa-building-flag fa-xl me-3"></i><p>Официальная документация <a href="https://www.cotonti.com/docs/" target="_blank" class="fw-bold" title="форум и документация официального Cotonti"> на официальном сайте от первых разработчиков</a>, которые никак не связаны с текущей командой!</p>';
}



$L['langSkStr_Username'] = 'Никнейм пользователя';  
$L['langSkStr_Account'] = 'Аккаунт';
$L['langSkStr_passkey'] = 'Пароль пользователя';
$L['langSkStr_passCurrent'] = 'Пароль текущий';
$L['langSkStr_passNew'] = 'Пароль новый';
$L['langSkStr_passNewRepeat'] = 'Пароль новый повторно';
$L['langSkStr_emailCurrentOnly'] = 'Email (для подтверждения)';
$L['langSkStr_emailCurrentRecover'] = 'Email (только действующий)';
$L['langSkStr_captchaVerify'] = 'Арифметика для не ботов';
$L['langSkStr_captchaAnswer'] = 'Введите результат';
$L['langSkStr_public_profile_page'] = 'Публичный профиль на сайте';
$L['langSkStr_public_profile_set_data'] = 'Настройки профиля и данные';
$L['langSkStr_noticesLinkTitle'] = 'Уведомления системы';

$L['langSkStr_footer_php_version'] = 'Версия PHP';
$L['langSkStr_footer_legacy_mode'] = 'Режим совместимости "legacyMode"';
$L['langSkStr_footer_legacy_mode_on'] = '<span class="text-bg-danger fw-semibold"> Включён. Могут быть проблемы </span>';
$L['langSkStr_footer_legacy_mode_off'] = '<span class="text-bg-success fw-semibold"> Выключен! Это хорошо! </span>';
$L['langSkStr_footer_engine'] = 'Движок сайта';
$L['langSkStr_footer_cotonti'] = 'Cotonti';
$L['langSkStr_footer_cotonti_tooltip'] = 'Cotonti - это современный PHP Фреймворк для веб-разработки гибких CMS, от визиток до порталов.';
$L['langSkStr_footer_core_version'] = 'Версия ядра';
$L['langSkStr_footer_db_version'] = 'Версия БД';
$L['langSkStr_footer_creation_time'] = 'Время генерации';
$L['langSkStr_footer_hooks_fired'] = 'Запущено хуков';
$L['langSkStr_footer_sql_statistics'] = 'Статистика SQL';
$L['langSkStr_footer_download_index36'] = 'Шаблон сайта <strong>«Index36»</strong> скачать бесплатно';
$L['langSkStr_footer_download_index36_title'] = 'Шаблон сайта «Index36» скачать бесплатно';


$L['langSkStr_pageInformation'] = 'Информация о странице';
$L['langSkStr_pageDateCreated'] = 'Cтраница создана';
$L['langSkStr_pageDescriptionShort'] = 'Краткое описание';
$L['langSkStr_pageDescriptionFullContent'] = 'Полное описание содержимого';

$L['langSkStr_pageFormNoticeTitle'] = 'Форма редактирования статьи';
$L['langSkStr_pageFormNoticeContent'] = 'Отредактируйте и заполните поля формы с данными страницы. После этого вы можете опубликовать материал, отправить на модерацию или сохранить в черновиках.';
$L['langSkStr_PFS_hint'] = 'для вставки в текст (полного описания статьи)';
$L['langSkStr_PFS_myFiles_Title'] = 'Менеджер моих файлов';
$L['langSkStr_pageFiles'] = 'Файлы. Прикрепление, вставка.';
$L['langSkStr_pageSeoMeta'] = 'SEO, Meta';
$L['langSkStr_pageLocalFileByURL'] = 'Прикрепить локальный файл по ссылке';
$L['langSkStr_pageDateTerms'] = 'Даты и сроки';
$L['langSkStr_pageAnotherData'] = 'Другие данные';
$L['langSkStr_pageKeyControlPoints'] = 'Ключевые точки управления';

$L['langSkStr_pageSearch'] = 'Поиск по статьям';
$L['langSkStr_pageStructureCats'] = 'Категории и рубрики';
$L['langSkStr_pageStructureCatsAdmin'] = 'Категории и рубрики редактировать';
$L['langSkStr_pageConfigModule'] = 'Конфигурация модуля Pages';
$L['langSkStr_pageConfigModuleAdmin'] = 'Конфигурация модуля Pages редактировать';
$L['langSkStr_pageExtrafields'] = 'Экстраполя модуля Pages';
$L['langSkStr_pageExtrafieldsAdmin'] = 'Редактировать Экстраполя модуля Pages';
$L['langSkStr_pageAdminModule'] = 'Админ-ние модуля';
$L['langSkStr_pageModerate'] = 'Модерация страниц';

$L['langSkStr_forumSearch'] = 'Поиск по форумам';
$L['langSkStr_forumStructureCats'] = 'Структура разделов';
$L['langSkStr_forumStructureCatsAdmin'] = 'Редактировать категории и рубрики форумов';
$L['langSkStr_forumConfigModule'] = 'Конфигурация модуля Forums';
$L['langSkStr_forumConfigModuleAdmin'] = 'Конфигурация модуля Forums редактировать';
$L['langSkStr_forumTopicExtrafields'] = 'Экстраполя топиков';
$L['langSkStr_forumTopicExtrafieldsAdmin'] = 'Редактировать Экстраполя топиков модуля Forums';
$L['langSkStr_forumPostExtrafields'] = 'Экстраполя постов';
$L['langSkStr_forumPostExtrafieldsAdmin'] = 'Редактировать Экстраполя постов модуля Forums';
$L['langSkStr_forumAdminModule'] = 'Админ-ние модуля';
$L['langSkStr_forumLastTopics'] = 'Последние топики';

$L['langSkStr_userConfigModule'] = 'Конфигурация модуля Users';
$L['langSkStr_userConfigModuleAdmin'] = 'Конфигурация модуля Users редактировать';
$L['langSkStr_userExtrafields'] = 'Экстраполя модуля Users';
$L['langSkStr_userExtrafieldsAdmin'] = 'Редактировать Экстраполя модуля Users';
$L['langSkStr_userGrpRights'] = 'Конфигурация групп и прав';
$L['langSkStr_userAdminModule'] = 'Админ-ние модуля';
$L['langSkStr_usersProfile'] = 'Профиль';
$L['langSkStr_usersSendPM'] = 'Сообщение';
$L['langSkStr_usersPostCount'] = 'Постов на форумах';
$L['langSkStr_usersLogCount'] = 'Авторизаций на сайте';
$L['langSkStr_usersProfileBG'] = 'Background Profile';
$L['langSkStr_usersJoined'] = 'С нами с';


$L['langSkStr_pageListIconHelp'] = 'Помощь и справка';
$L['langSkStr_pageListIconHelpContent'] = 'Текст вашей справки пользователям. Отредактируейте строку с ключем <code>pageListIconHelpContent</code> в файле локализации темы <strong>"Index36"</strong>';

$L['langSkStr_mainContent'] = 'Основное содержимое';
$L['langSkStr_basicInfo'] = 'Основная информация';
$L['langSkStr_pageContent'] = 'Содержимое страницы';
$L['langSkStr_parametersPageSyst'] = 'SEO-параметры страницы и системные настройки';
$L['langSkStr_publMangmt'] = 'Публикация и управление';
$L['langSkStr_pageByEachContent'] = 'Постраничное содержимое статьи';


$L['langSkStr_period']       = 'Период';
$L['langSkStr_periodStart']  = 'Начиная с';
$L['langSkStr_periodEnd']    = 'Включительно до';
$L['langSkStr_searchFilters'] = 'Фильтры';
$L['langSkStr_searchReserFilter'] = 'Сброс фильтра';
$L['langSkStr_searchStartSearch'] = 'Начать поиск';



// SIDEBAR TABS
$L['langSkStr_tabPages'] = 'Страницы, статьи и новости';
$L['langSkStr_tabPlgTolls'] = 'Инструменты и плагины';

$L['langSkStr_blank_temporary_example_title'] = '<i class="fa-regular fa-star fa-lg me-2"></i>Заготовка заголовок';
$L['langSkStr_blank_temporary_example_desc'] = '
<i class="fa-solid fa-info-circle fa-xl me-3"></i>Описание как <span class="text-danger fw-semibold"> пример заготовки</span>. 
<span class="text-primary fw-semibold">Пример</span> текстового контента <span class="text-success fw-semibold">для дальнейшей </span> <span class="text-warning fw-semibold">кастомизации</span> шаблона <a href="https://github.com/webitproff/index36-cotonti-theme" target="_blank" title="Скачать шаблон Cotonti CMF бесплатно"><strong>"Index36"</strong></a>.<hr class="my-2"> 
<p><i class="fa-solid fa-edit fa-xl me-3"></i> Редактировать шаблон вы можете на свое усмотрение и как вам угодно. Если у вас на это нет времени или недостаточно знаний - вы всегда можете заказать адаптацию шаблона сайта написав мне по контактам на <a href="https://github.com/webitproff" target="_blank" class="fw-bold" title="контакты разработчика на GitHub">GitHub</a> или <a href="https://abuyfile.com/ru/users/webitproff" class="fw-bold link-success" title="контакты разработчика">в личные сообщения на публичной странице</a> сайта маркетплейса цифровых товаров</p>';

$L['msg404_title'] = 'Упс. Страница не найдена. (404)';
$L['msg404_body'] = 'Страница, которую вы ищете, вероятно устарела и более недоступна. Пожалуйста, вернитесь на главную или воспользуйтесь поиском';
$L['langSkStr_BackToHome'] = 'На Главную';


