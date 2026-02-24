<?php
/** 
 * Index36 - Theme for Cotonti
 * Compatibility: [CMF/CMS Cotonti Siena v0.9.26+](https://github.com/Cotonti/Cotonti); PHP-8.4 & MySQL-8.0 
 * File: index36.en.lang.php 
 * Placement: /themes/index36/index36.en.lang.php 
 * Description: Theme language strings - English localization file for the theme interface 
 * Created: 01 Feb 2026  
 * Updated: 24 Feb 2026
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
    $langSkStr['indexWeCanHelp']     = 'How can we help you?';
    $langSkStr['indexPopularSearched'] = 'Popular Searches';
    $langSkStr['indexGetStart']      = 'First Steps with Cotonti';
    $langSkStr['indexGtStQ1']        = '<i class="fa-regular fa-star fa-xl me-3"></i> What is Cotonti?';
    $langSkStr['indexGtStA1']        = 'It is a foundation on which a developer can build different kinds of CMS — from a simple business card site to a full social network.';
    $langSkStr['indexGtStQ2']        = '<i class="fa-regular fa-star fa-xl me-3"></i> What can Cotonti do?';
    $langSkStr['indexGtStA2']        = '<p>To put it simply — imagine driving out of a garage in a fully tuned, upgraded car after a complete rebuild and modernization. That’s your new ride.</p>
    <p>A couple of months ago you brought in either a factory-fresh car or just a pile of scrap metal.</p>';
    $langSkStr['indexGtStQ3']        = '<i class="fa-regular fa-star fa-xl me-3"></i> Who is Cotonti for?';
    $langSkStr['indexGtStA3']        = '<p>At the development stage — primarily for PHP web developers.</p>
    <p>At the administration stage (already running site) — anyone who can master a smartphone will figure it out.</p>';
    $langSkStr['indexGtStQ4']        = '<i class="fa-regular fa-star fa-xl me-3"></i> What if I’m a complete beginner?';
    $langSkStr['indexGtStA4']        = '<p>There is an entry threshold — at minimum the ability to read and understand a few lines of simple code.</p>
    <p>You can learn quite quickly on your own using the documentation and asking questions on the forum.</p>';

    $langSkStr['indexDownApp'] = 'Cotonti — Download & Get Started';
    $langSkStr['indexDwnApQ1'] = '<i class="fa-solid fa-compact-disc fa-xl me-3"></i> Installation Package on GitHub';
    $langSkStr['indexDwnApA1'] = '<p>The most up-to-date Cotonti source code is always <a href="https://github.com/Cotonti/Cotonti" target="_blank" class="badge rounded border bg-warning border-dark fw-bold text-dark link-light" title="Download Cotonti CMS/CMF installation archive">available here</a></p>';
    $langSkStr['indexDwnApQ2'] = '<i class="fa-solid fa-puzzle-piece fa-xl me-3"></i> Download Modules & Plugins';
    $langSkStr['indexDwnApA2'] = '<p>Visit the <a href="https://abuyfile.com/ru/market" target="_blank" class="fw-bold" title="marketplace of extensions and themes for Cotonti CMS/CMF">extensions & themes marketplace</a> for Cotonti CMF.</p>
    <p>You can browse each item, download for free or order custom modifications exactly for your needs.</p>';
    $langSkStr['indexDwnApQ3'] = '<i class="fa-solid fa-battery-three-quarters fa-xl me-3"></i> Free Development Storage';
    $langSkStr['indexDwnApA3'] = 'Plugins, modules, site templates and their up-to-date source code are collected in repositories on <a href="https://github.com/webitproff?tab=repositories" target="_blank" class="fw-bold" title="Download plugins, modules, templates and scripts for Cotonti CMF">GitHub</a></p>';
    $langSkStr['indexDwnApQ4'] = '<i class="fa-solid fa-headset fa-xl me-3"></i> Support for Cotonti Siena Users';
    $langSkStr['indexDwnApA4'] = '<p>You will definitely get help — and it’s free. Just make sure to write a clear, specific and detailed question and post it <a href="https://abuyfile.com/ru/forums/cotonti" target="_blank" class="fw-bold" title="Cotonti community support forum">on the community forum!</a></p>';
    $langSkStr['indexDwnApQ5'] = '<i class="fa-solid fa-book-atlas fa-xl me-3"></i> User Guide & Cotonti CMF Documentation';
    $langSkStr['indexDwnApA5'] = '<p><i class="fa-solid fa-building-circle-arrow-right fa-xl me-3 text-success"></i>Community-maintained up-to-date documentation <a href="https://abuyfile.com/ru/cotonti" target="_blank" class="fw-bold" title="Cotonti Documentation">on the site of independent developers and enthusiasts actively supporting Cotonti!</a></p><hr><i class="fa-solid fa-building-flag fa-xl me-3"></i><p>Official documentation <a href="https://www.cotonti.com/docs/" target="_blank" class="fw-bold" title="official Cotonti forum & documentation">on the original project website</a>, maintained by the initial developers (not related to the current community team).</p>';
}

$langSkStr['Username']             = 'Username';
$langSkStr['Account']              = 'Account';
$langSkStr['passkey']              = 'User Password';
$langSkStr['passCurrent']          = 'Current Password';
$langSkStr['passNew']              = 'New Password';
$langSkStr['passNewRepeat']        = 'Repeat New Password';
$langSkStr['emailCurrentOnly']     = 'Email (for confirmation)';
$langSkStr['emailCurrentRecover']  = 'Email (must be valid/active)';
$langSkStr['captchaVerify']        = 'Simple math to prove you’re not a bot';
$langSkStr['captchaAnswer']        = 'Enter the result';
$langSkStr['public_profile_page']  = 'Public profile on the site';
$langSkStr['public_profile_set_data'] = 'Profile settings & data';
$langSkStr['noticesLinkTitle']     = 'System Notifications';

$langSkStr['footer_php_version']       = 'PHP Version';
$langSkStr['footer_legacy_mode']       = 'Legacy compatibility mode';
$langSkStr['footer_legacy_mode_on']    = '<span class="text-bg-danger fw-semibold">Enabled. May cause issues</span>';
$langSkStr['footer_legacy_mode_off']   = '<span class="text-bg-success fw-semibold">Disabled — that’s good!</span>';
$langSkStr['footer_engine']            = 'Site Engine';
$langSkStr['footer_cotonti']           = 'Cotonti Siena';
$langSkStr['footer_cotonti_tooltip']   = 'Cotonti is a modern PHP framework for building flexible CMS solutions — from business-card sites to large portals.';
$langSkStr['footer_core_version']      = 'Core Version';
$langSkStr['footer_db_version']        = 'Database Version';
$langSkStr['footer_creation_time']     = 'Generation Time';
$langSkStr['footer_hooks_fired']       = 'Hooks Fired';
$langSkStr['footer_sql_statistics']    = 'SQL Statistics';

$langSkStr['pageInformation']             = 'Page Information';
$langSkStr['pageDateCreated']             = 'Page Created';
$langSkStr['pageDescriptionShort']        = 'Short Description';
$langSkStr['pageDescriptionFullContent']  = 'Full Content Description';

$langSkStr['pageFormNoticeTitle']   = 'Article Editing Form';
$langSkStr['pageFormNoticeContent'] = 'Edit and fill in the page data fields. After that you can publish the material, send it for moderation or save as draft.';
$langSkStr['PFS_hint']              = 'for insertion into the text (full article description)';
$langSkStr['PFS_myFiles_Title']     = 'My Files Manager';
$langSkStr['pageFiles']             = 'Files. Attachment & Insertion';
$langSkStr['pageSeoMeta']           = 'SEO & Meta';
$langSkStr['pageLocalFileByURL']    = 'Attach local file by URL';
$langSkStr['pageDateTerms']         = 'Dates & Deadlines';
$langSkStr['pageAnotherData']       = 'Other Data';
$langSkStr['pageKeyControlPoints']  = 'Key Control Points';

$langSkStr['pageSearch']               = 'Search Articles';
$langSkStr['pageStructureCats']        = 'Categories & Sections';
$langSkStr['pageStructureCatsAdmin']   = 'Edit Categories & Sections';
$langSkStr['pageConfigModule']         = 'Pages Module Configuration';
$langSkStr['pageConfigModuleAdmin']    = 'Edit Pages Module Configuration';
$langSkStr['pageExtrafields']          = 'Pages Module Extra Fields';
$langSkStr['pageExtrafieldsAdmin']     = 'Edit Pages Extra Fields';
$langSkStr['pageAdminModule']          = 'Module Administration';
$langSkStr['pageModerate']             = 'Pages Moderation';

$langSkStr['forumSearch']               = 'Forum Search';
$langSkStr['forumStructureCats']        = 'Forum Sections Structure';
$langSkStr['forumStructureCatsAdmin']   = 'Edit Forum Categories & Sections';
$langSkStr['forumConfigModule']         = 'Forums Module Configuration';
$langSkStr['forumConfigModuleAdmin']    = 'Edit Forums Module Configuration';
$langSkStr['forumTopicExtrafields']     = 'Topic Extra Fields';
$langSkStr['forumTopicExtrafieldsAdmin']= 'Edit Topic Extra Fields';
$langSkStr['forumPostExtrafields']      = 'Post Extra Fields';
$langSkStr['forumPostExtrafieldsAdmin'] = 'Edit Post Extra Fields';
$langSkStr['forumAdminModule']          = 'Module Administration';
$langSkStr['forumLastTopics']           = 'Latest Topics';

$langSkStr['userConfigModule']         = 'Users Module Configuration';
$langSkStr['userConfigModuleAdmin']    = 'Edit Users Module Configuration';
$langSkStr['userExtrafields']          = 'Users Module Extra Fields';
$langSkStr['userExtrafieldsAdmin']     = 'Edit Users Extra Fields';
$langSkStr['userGrpRights']            = 'Groups & Permissions Configuration';
$langSkStr['userAdminModule']          = 'Module Administration';
$langSkStr['usersProfile']             = 'Profile';
$langSkStr['usersSendPM']              = 'Message';
$langSkStr['usersPostCount']           = 'Forum Posts';
$langSkStr['usersLogCount']            = 'Site Logins';
$langSkStr['usersProfileBG']           = 'Profile Background';
$langSkStr['usersJoined']              = 'Member Since';

$langSkStr['pageListIconHelp']         = 'Help & Documentation';
$langSkStr['pageListIconHelpContent']  = 'Your user help text. Edit the string with key <code>pageListIconHelpContent</code> in the <strong>"Index36"</strong> theme localization file.';

$langSkStr['mainContent']              = 'Main Content';
$langSkStr['basicInfo']                = 'Basic Information';
$langSkStr['pageContent']              = 'Page Content';
$langSkStr['parametersPageSyst']       = 'SEO Parameters & System Settings';
$langSkStr['publMangmt']               = 'Publication & Management';
$langSkStr['pageByEachContent']        = 'Paginated Article Content';

$langSkStr['period']           = 'Period';
$langSkStr['periodStart']      = 'From';
$langSkStr['periodEnd']        = 'To (inclusive)';
$langSkStr['searchFilters']    = 'Filters';
$langSkStr['searchReserFilter']= 'Reset Filter';
$langSkStr['searchStartSearch']= 'Start Search';

// SIDEBAR TABS
$langSkStr['tabPages']    = 'Pages, Articles & News';
$langSkStr['tabPlgTolls'] = 'Tools & Plugins';

$langSkStr['blank_temporary_example_title'] = '<i class="fa-regular fa-star fa-lg me-2"></i>Example / Placeholder Title';
$langSkStr['blank_temporary_example_desc'] = '
<i class="fa-solid fa-info-circle fa-xl me-3"></i>Description as an <span class="text-danger fw-semibold">example placeholder</span>. 
<span class="text-primary fw-semibold">Sample</span> text content <span class="text-success fw-semibold">for further </span> <span class="text-warning fw-semibold">customization</span> of the <a href="https://github.com/webitproff/index36-cotonti-theme" target="_blank" title="Download Cotonti CMF theme for free"><strong>"Index36"</strong></a> template.<hr class="my-2"> 
<p><i class="fa-solid fa-edit fa-xl me-3"></i>You are free to edit and customize the template however you like. If you don’t have time or enough knowledge — you can always order template adaptation by contacting me via <a href="https://github.com/webitproff" target="_blank" class="fw-bold" title="developer contacts on GitHub">GitHub</a> or <a href="https://abuyfile.com/ru/users/webitproff" class="fw-bold link-success" title="developer private messages">private messages</a> on the digital goods marketplace.</p>';

$L['msg404_title'] = 'Oops. Page not found. (404)';
$L['msg404_body']  = 'The page you are looking for has probably been moved, deleted or is temporarily unavailable. Please return to the homepage or use the search.';
$langSkStr['BackToHome'] = 'Back to Home';