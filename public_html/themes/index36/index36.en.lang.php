<?php
/** 
 * Index36 - Theme for Cotonti
 * Compatibility: [CMF/CMS Cotonti V.1](https://github.com/Cotonti/Cotonti); PHP-8.5 & MySQL-8.4 
 * File: index36.en.lang.php 
 * Placement: /themes/index36/index36.en.lang.php 
 * Description: Theme language strings - English localization file for the theme interface 
 * Created: 01 Feb 2026  
 * Updated: 24 Feb 2026
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
	$cot_groups['7']['name'] = 'Clients & Participants';
}

if (isset($cot_groups['4']['name']) && is_array($cot_groups)) {
	$cot_groups['4']['name'] = 'Specialists';
}

// PAGE structure localization title
if (isset($structure['page']['news']) && is_array($structure['page']['news'])) {
    $structure['page']['news']['title'] = 'Project News';
    $structure['page']['news']['desc'] = 'This is the news category description for Russian localization in the theme file';
}
if (isset($structure['page']['articles']) && is_array($structure['page']['articles'])) {
    $structure['page']['articles']['title'] = 'Project Articles';
    $structure['page']['articles']['desc'] = 'This is the articles category description for Russian localization in the theme file';
}

// Load strings ONLY on the main page (index)
// Main page is determined as: ?e=index  OR no 'e' parameter at all
$ext = Cot::$env['ext'] ?? 'index';
if ($ext === 'index') {
    $L['langSkStr_indexWeCanHelp']     = 'How can we help you?';
    $L['langSkStr_indexPopularSearched'] = 'Popular Searches';
    $L['langSkStr_indexGetStart']      = 'First Steps with Cotonti';
    $L['langSkStr_indexGtStQ1']        = '<i class="fa-regular fa-star fa-xl me-3"></i> What is Cotonti?';
    $L['langSkStr_indexGtStA1']        = 'It is a foundation on which a developer can build different kinds of CMS — from a simple business card site to a full social network.';
    $L['langSkStr_indexGtStQ2']        = '<i class="fa-regular fa-star fa-xl me-3"></i> What can Cotonti do?';
    $L['langSkStr_indexGtStA2']        = '<p>To put it simply — imagine driving out of a garage in a fully tuned, upgraded car after a complete rebuild and modernization. That’s your new ride.</p>
    <p>A couple of months ago you brought in either a factory-fresh car or just a pile of scrap metal.</p>';
    $L['langSkStr_indexGtStQ3']        = '<i class="fa-regular fa-star fa-xl me-3"></i> Who is Cotonti for?';
    $L['langSkStr_indexGtStA3']        = '<p>At the development stage — primarily for PHP web developers.</p>
    <p>At the administration stage (already running site) — anyone who can master a smartphone will figure it out.</p>';
    $L['langSkStr_indexGtStQ4']        = '<i class="fa-regular fa-star fa-xl me-3"></i> What if I’m a complete beginner?';
    $L['langSkStr_indexGtStA4']        = '<p>There is an entry threshold — at minimum the ability to read and understand a few lines of simple code.</p>
    <p>You can learn quite quickly on your own using the documentation and asking questions on the forum.</p>';

    $L['langSkStr_indexDownApp'] = 'Cotonti — Download & Get Started';
    $L['langSkStr_indexDwnApQ1'] = '<i class="fa-solid fa-compact-disc fa-xl me-3"></i> Installation Package on GitHub';
    $L['langSkStr_indexDwnApA1'] = '<p>The most up-to-date Cotonti source code is always <a href="https://github.com/Cotonti/Cotonti" target="_blank" class="badge rounded border bg-warning border-dark fw-bold text-dark link-light" title="Download Cotonti CMS/CMF installation archive">available here</a></p>';
    $L['langSkStr_indexDwnApQ2'] = '<i class="fa-solid fa-puzzle-piece fa-xl me-3"></i> Download Modules & Plugins';
    $L['langSkStr_indexDwnApA2'] = '<p>Visit the <a href="https://abuyfile.com/ru/market" target="_blank" class="fw-bold" title="marketplace of extensions and themes for Cotonti CMS/CMF">extensions & themes marketplace</a> for Cotonti CMF.</p>
    <p>You can browse each item, download for free or order custom modifications exactly for your needs.</p>';
    $L['langSkStr_indexDwnApQ3'] = '<i class="fa-solid fa-battery-three-quarters fa-xl me-3"></i> Free Development Storage';
    $L['langSkStr_indexDwnApA3'] = 'Plugins, modules, site templates and their up-to-date source code are collected in repositories on <a href="https://github.com/webitproff?tab=repositories" target="_blank" class="fw-bold" title="Download plugins, modules, templates and scripts for Cotonti CMF">GitHub</a></p>';
    $L['langSkStr_indexDwnApQ4'] = '<i class="fa-solid fa-headset fa-xl me-3"></i> Support for Cotonti Users';
    $L['langSkStr_indexDwnApA4'] = '<p>You will definitely get help — and it’s free. Just make sure to write a clear, specific and detailed question and post it <a href="https://abuyfile.com/ru/forums/cotonti" target="_blank" class="fw-bold" title="Cotonti community support forum">on the community forum!</a></p>';
    $L['langSkStr_indexDwnApQ5'] = '<i class="fa-solid fa-book-atlas fa-xl me-3"></i> User Guide & Cotonti CMF Documentation';
    $L['langSkStr_indexDwnApA5'] = '<p><i class="fa-solid fa-building-circle-arrow-right fa-xl me-3 text-success"></i>Community-maintained up-to-date documentation <a href="https://abuyfile.com/ru/cotonti" target="_blank" class="fw-bold" title="Cotonti Documentation">on the site of independent developers and enthusiasts actively supporting Cotonti!</a></p><hr><i class="fa-solid fa-building-flag fa-xl me-3"></i><p>Official documentation <a href="https://www.cotonti.com/docs/" target="_blank" class="fw-bold" title="official Cotonti forum & documentation">on the original project website</a>, maintained by the initial developers (not related to the current community team).</p>';
}

$L['langSkStr_Username']             = 'Username';
$L['langSkStr_Account']              = 'Account';
$L['langSkStr_passkey']              = 'User Password';
$L['langSkStr_passCurrent']          = 'Current Password';
$L['langSkStr_passNew']              = 'New Password';
$L['langSkStr_passNewRepeat']        = 'Repeat New Password';
$L['langSkStr_emailCurrentOnly']     = 'Email (for confirmation)';
$L['langSkStr_emailCurrentRecover']  = 'Email (must be valid/active)';
$L['langSkStr_captchaVerify']        = 'Simple math to prove you’re not a bot';
$L['langSkStr_captchaAnswer']        = 'Enter the result';
$L['langSkStr_public_profile_page']  = 'Public profile on the site';
$L['langSkStr_public_profile_set_data'] = 'Profile settings & data';
$L['langSkStr_noticesLinkTitle']     = 'System Notifications';

$L['langSkStr_footer_php_version']       = 'PHP Version';
$L['langSkStr_footer_legacy_mode']       = 'Legacy compatibility mode';
$L['langSkStr_footer_legacy_mode_on']    = '<span class="text-bg-danger fw-semibold">Enabled. May cause issues</span>';
$L['langSkStr_footer_legacy_mode_off']   = '<span class="text-bg-success fw-semibold">Disabled — that’s good!</span>';
$L['langSkStr_footer_engine']            = 'Site Engine';
$L['langSkStr_footer_cotonti']           = 'Cotonti';
$L['langSkStr_footer_cotonti_tooltip']   = 'Cotonti is a modern PHP framework for building flexible CMS solutions — from business-card sites to large portals.';
$L['langSkStr_footer_core_version']      = 'Core Version';
$L['langSkStr_footer_db_version']        = 'Database Version';
$L['langSkStr_footer_creation_time']     = 'Generation Time';
$L['langSkStr_footer_hooks_fired']       = 'Hooks Fired';
$L['langSkStr_footer_sql_statistics']    = 'SQL Statistics';
$L['langSkStr_footer_download_index36'] = 'Website theme <strong>“Index36”</strong> — download for free';
$L['langSkStr_footer_download_index36_title'] = 'Website theme “Index36” — download for free';

$L['langSkStr_pageInformation']             = 'Page Information';
$L['langSkStr_pageDateCreated']             = 'Page Created';
$L['langSkStr_pageDescriptionShort']        = 'Short Description';
$L['langSkStr_pageDescriptionFullContent']  = 'Full Content Description';

$L['langSkStr_pageFormNoticeTitle']   = 'Article Editing Form';
$L['langSkStr_pageFormNoticeContent'] = 'Edit and fill in the page data fields. After that you can publish the material, send it for moderation or save as draft.';
$L['langSkStr_PFS_hint']              = 'for insertion into the text (full article description)';
$L['langSkStr_PFS_myFiles_Title']     = 'My Files Manager';
$L['langSkStr_pageFiles']             = 'Files. Attachment & Insertion';
$L['langSkStr_pageSeoMeta']           = 'SEO & Meta';
$L['langSkStr_pageLocalFileByURL']    = 'Attach local file by URL';
$L['langSkStr_pageDateTerms']         = 'Dates & Deadlines';
$L['langSkStr_pageAnotherData']       = 'Other Data';
$L['langSkStr_pageKeyControlPoints']  = 'Key Control Points';

$L['langSkStr_pageSearch']               = 'Search Articles';
$L['langSkStr_pageStructureCats']        = 'Categories & Sections';
$L['langSkStr_pageStructureCatsAdmin']   = 'Edit Categories & Sections';
$L['langSkStr_pageConfigModule']         = 'Pages Module Configuration';
$L['langSkStr_pageConfigModuleAdmin']    = 'Edit Pages Module Configuration';
$L['langSkStr_pageExtrafields']          = 'Pages Module Extra Fields';
$L['langSkStr_pageExtrafieldsAdmin']     = 'Edit Pages Extra Fields';
$L['langSkStr_pageAdminModule']          = 'Module Administration';
$L['langSkStr_pageModerate']             = 'Pages Moderation';

$L['langSkStr_forumSearch']               = 'Forum Search';
$L['langSkStr_forumStructureCats']        = 'Forum Sections Structure';
$L['langSkStr_forumStructureCatsAdmin']   = 'Edit Forum Categories & Sections';
$L['langSkStr_forumConfigModule']         = 'Forums Module Configuration';
$L['langSkStr_forumConfigModuleAdmin']    = 'Edit Forums Module Configuration';
$L['langSkStr_forumTopicExtrafields']     = 'Topic Extra Fields';
$L['langSkStr_forumTopicExtrafieldsAdmin']= 'Edit Topic Extra Fields';
$L['langSkStr_forumPostExtrafields']      = 'Post Extra Fields';
$L['langSkStr_forumPostExtrafieldsAdmin'] = 'Edit Post Extra Fields';
$L['langSkStr_forumAdminModule']          = 'Module Administration';
$L['langSkStr_forumLastTopics']           = 'Latest Topics';

$L['langSkStr_userConfigModule']         = 'Users Module Configuration';
$L['langSkStr_userConfigModuleAdmin']    = 'Edit Users Module Configuration';
$L['langSkStr_userExtrafields']          = 'Users Module Extra Fields';
$L['langSkStr_userExtrafieldsAdmin']     = 'Edit Users Extra Fields';
$L['langSkStr_userGrpRights']            = 'Groups & Permissions Configuration';
$L['langSkStr_userAdminModule']          = 'Module Administration';
$L['langSkStr_usersProfile']             = 'Profile';
$L['langSkStr_usersSendPM']              = 'Message';
$L['langSkStr_usersPostCount']           = 'Forum Posts';
$L['langSkStr_usersLogCount']            = 'Site Logins';
$L['langSkStr_usersProfileBG']           = 'Profile Background';
$L['langSkStr_usersJoined']              = 'Member Since';

$L['langSkStr_pageListIconHelp']         = 'Help & Documentation';
$L['langSkStr_pageListIconHelpContent']  = 'Your user help text. Edit the string with key <code>pageListIconHelpContent</code> in the <strong>"Index36"</strong> theme localization file.';

$L['langSkStr_mainContent']              = 'Main Content';
$L['langSkStr_basicInfo']                = 'Basic Information';
$L['langSkStr_pageContent']              = 'Page Content';
$L['langSkStr_parametersPageSyst']       = 'SEO Parameters & System Settings';
$L['langSkStr_publMangmt']               = 'Publication & Management';
$L['langSkStr_pageByEachContent']        = 'Paginated Article Content';

$L['langSkStr_period']           = 'Period';
$L['langSkStr_periodStart']      = 'From';
$L['langSkStr_periodEnd']        = 'To (inclusive)';
$L['langSkStr_searchFilters']    = 'Filters';
$L['langSkStr_searchReserFilter']= 'Reset Filter';
$L['langSkStr_searchStartSearch']= 'Start Search';

// SIDEBAR TABS
$L['langSkStr_tabPages']    = 'Pages, Articles & News';
$L['langSkStr_tabPlgTolls'] = 'Tools & Plugins';

$L['langSkStr_blank_temporary_example_title'] = '<i class="fa-regular fa-star fa-lg me-2"></i>Example / Placeholder Title';
$L['langSkStr_blank_temporary_example_desc'] = '
<i class="fa-solid fa-info-circle fa-xl me-3"></i>Description as an <span class="text-danger fw-semibold">example placeholder</span>. 
<span class="text-primary fw-semibold">Sample</span> text content <span class="text-success fw-semibold">for further </span> <span class="text-warning fw-semibold">customization</span> of the <a href="https://github.com/webitproff/index36-cotonti-theme" target="_blank" title="Download Cotonti CMF theme for free"><strong>"Index36"</strong></a> template.<hr class="my-2"> 
<p><i class="fa-solid fa-edit fa-xl me-3"></i>You are free to edit and customize the template however you like. If you don’t have time or enough knowledge — you can always order template adaptation by contacting me via <a href="https://github.com/webitproff" target="_blank" class="fw-bold" title="developer contacts on GitHub">GitHub</a> or <a href="https://abuyfile.com/ru/users/webitproff" class="fw-bold link-success" title="developer private messages">private messages</a> on the digital goods marketplace.</p>';

$L['msg404_title'] = 'Oops. Page not found. (404)';
$L['msg404_body']  = 'The page you are looking for has probably been moved, deleted or is temporarily unavailable. Please return to the homepage or use the search.';
$L['langSkStr_BackToHome'] = 'Back to Home';