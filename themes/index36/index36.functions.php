<?php
/** 
 * Index36 - Theme for Cotonti  
 * Compatibility: [CMF/CMS Cotonti Siena v0.9.26+](https://github.com/Cotonti/Cotonti); PHP-8.4 & MySQL-8.0 
 * File: index36.functions.php
 * Placement: /themes/index36/index36.functions.php
 * Description: Customs functions for this your Cotonti Theme 
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


defined('COT_CODE') or die('Wrong URL');

// If you want to use cot_page_enum() function you can uncomment code below to be sure that it is available
//if (!function_exists('cot_page_enum') && cot_auth('page', 'any', 'R')) {
//    require_once cot_incfile('page', 'module');
//}


/**
 * Функция для получения значения 'upd_value' из таблицы '$db_updates',
 * где 'upd_param' равно 'revision'.
 *
 * @global object $db Объект базы данных для выполнения запроса.
 * @global string $db_updates Имя таблицы, в которой производится поиск.
 * @return string|null Возвращает обработанное значение 'upd_value' или null, если ничего не найдено.
 */
function getRevisionValue()
{
    global $db, $db_updates; // Используем глобальные переменные $db и $db_updates

    try {
        // Выполняем запрос для получения значения 'upd_value', где 'upd_param' равно 'revision'
        $query = $db->query("SELECT upd_value FROM $db_updates WHERE upd_param = 'revision'");
        // Извлекаем значение первого столбца из результата запроса
        $value = $query->fetchColumn();

        // Применяем функцию htmlspecialchars для экранирования спецсимволов в HTML
        return htmlspecialchars($value); // Возвращаем обработанное значение
    } catch (PDOException $e) {
        // Если произошла ошибка базы данных, записываем её в лог и возвращаем null
        error_log("Ошибка выполнения запроса: " . $e->getMessage());
        return null;
    }
}

function custom_php_version()
{
    return phpversion();
} 

// В шаблоне футера или в файле, где выводится футер
// $legacyModeStatus = getLegacyModeStatus();
// Cot::$out['legacyMode'] = $legacyModeStatus;
// {PHP|getLegacyModeStatus()}

function getLegacyModeStatus()
{
    global $cfg, $langSkStr; // Получаем глобальный массив конфигурации. Доступ к глобальным переменным Cotonti
    if (isset($cfg['legacyMode']) && $cfg['legacyMode'] === true) {
        return $langSkStr['footer_legacy_mode_on'];
    } else {
        return $langSkStr['footer_legacy_mode_off'];
    }
}





