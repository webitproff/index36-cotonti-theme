<?php
/**
 * Index36 - Theme for Cotonti
 * JavaScript and CSS loader 
 *
 * Compatibility: [CMF/CMS Cotonti Siena v0.9.26+](https://github.com/Cotonti/Cotonti); PHP-8.4 & MySQL-8.0 
 * File: index36.rc.php 
 * Placement: /themes/index36/index36.rc.php 
 * Description: connection CSS & JS files, plugins, frameworks, libraries
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

// Bootstrap 
// is needed to use the Modal, Toast, etc. components.
Resources::addFile('lib/bootstrap/css/bootstrap.min.css');
if (Cot::$cfg['headrc_consolidate']) {
    Resources::addFile('lib/bootstrap/js/bootstrap.bundle.min.js');
} else {
    Resources::linkFileFooter('lib/bootstrap/js/bootstrap.bundle.min.js');
}
// fontawesome
Resources::addFile('lib/fontawesome/css/all.min.css', 'css', 200);
// perfect-scrollbar
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/perfect-scrollbar/perfect-scrollbar.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/perfect-scrollbar/styles-perfect-scrollbar.css'); 
// perfect-scrollbar customizations
Resources::linkFileFooter(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/perfect-scrollbar/perfect-scrollbar.min.js');
Resources::linkFileFooter(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/perfect-scrollbar/js-perfect-scrollbar.js'); 

// SELECT2 
// from base libraries (lib) of directory site Cotonti
Resources::linkFileFooter(Resources::SELECT2);
// SELECT2 styles customization
Resources::linkFileFooter(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/assets/select2/style-select2.css', 'css', 900);

// Styles secondary! 
// Additional - Not main for Index36 Theme
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/css/default.css');

// Only after secondary styles connection our main styles!
// MAIN Styles for Index36 Theme
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/css/header.last.css', 'css', 900);
// JS requiered for Index36 Theme
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/js/header.first.js');
// Additional custom JS
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/js/js.js');

