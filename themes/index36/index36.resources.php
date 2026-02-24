<?php
/**
 * Resource strings overriding
 * Index36 Theme for Cotonti 
 * Created: 01 Feb 2026  
 * Updated: 23 Feb 2026
 * Source code: https://github.com/webitproff/index36-cotonti-theme
 * Support & Help: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
 *
 * @package index36
 * @version 0.9.26+
 * @author webitproff
 * @copyright Copyright (c) webitproff
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL.');

// Global variables are already declared at the beginning of the site's theme file.
// for example, $L, $langSkStr, $cfg, etc. we write in themes/index36/index36.php
// в строках ресурсов, при использовании переменных типа $L нужно делать строгую проверку на isset
// Resource strings
//$R['content_container_selector'] = 'div#main .first';



/**
 * Header/footer resources
 */
$R['notices_container'] = '{$notices}';           // без лишних обёрток
$R['notices_separator'] = '';                    // разделитель не нужен
$R['notices_link']      = '<li><a class="nav-link" href="{$url}" title="{$title}"><i class="fa-solid fa-circle-info me-2"></i>{$title}</a></li>';
$R['notices_plain']     = '<li class="nav-link disabled">{$title}</li>';   // если вдруг без ссылки
