<?php
/* ====================
[BEGIN_COT_THEME]
Name=Index36
Version=1.0.2
Schemes=default:Default
[END_COT_THEME]
==================== */

/** 
 * Index36 - Theme for Cotonti
 * Main loader file Cotonti Model Theme
 *
 * Compatibility: [CMF/CMS Cotonti Siena v0.9.26+](https://github.com/Cotonti/Cotonti); PHP-8.4 & MySQL-8.0 
 * File: index36.php 
 * Placement: /themes/index36/index36.php 
 * Description: Entry point for request parameters, global vars & etc. 
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
/**
 * Cotonti Plugin Users Avatar 'userimages'
 */
// ниже две строки новичкам лучше не трогать
$R['users_defaultAvatarSrc'] = Cot::$cfg['themes_dir'] . "/" . Cot::$cfg['defaulttheme'] . "/img/avatar-demo.jpg";
$R['userimg_default_avatar'] = $R['users_defaultAvatarSrc']; // не передавать по &$R !
$R['userimg_default_background'] = Cot::$cfg['themes_dir'] . "/" . Cot::$cfg['defaulttheme'] . "/img/userimg_default_background.jpg";


// Global Vars
global $L, $langSkStr, $cfg, $R;

// Customs Resource strings
require_once 
    Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/' . Cot::$cfg['defaulttheme'] . '.resources.php';
	
// Customs functions for this your Cotonti Model Theme
require_once 
    Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/' . Cot::$cfg['defaulttheme'] . '.functions.php';



$R['userimg_selectfile'] = '{$form_input}';
$R['userimg_html'] = '<div class="userimg_{$code}">{$existing}{$selectfile}</div>';
$R['userimg_remove'] = '<a href="{$url}" class="button btn btn-danger">'.$L['Delete'].'</a>';

$R['userimg_img'] = '<img src="{$src}" alt="{$alt}" class="rounded-3 mb-3 userimg {$class}" />'; 
// "строчит" как пример в {AUTHOR_AVATAR}, но мне удобнее использовать {AUTHOR_AVATAR_SRC} он же {$src}
/**
 * Cotonti Plugin Users Avatar
 */



/**
 * Resourses for the Files module by Alex300 (Alexey Kalnov)
 * Source https://github.com/Alex300/files
 */
$R['files_user_avatar'] = '{$src}';
$R['files_user_default_avatar'] = '<img src="images/blank-avatar.png" alt="'.Cot::$L['Avatar'].'" class="avatar img-responsive" />';
/**
 * Resourses for the Files module by Alex300 (Alexey Kalnov)
 * Source https://github.com/Alex300/files
 */



// Пагинация (обновлены классы для Bootstrap 5)
$R['code_title_page_num'] = ' (' . $L['Page'] . ' {$num})';
$R['link_pagenav_current'] = '<li class="page-item active"><a class="page-link" href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_first'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_first'] . '</a></li>';
$R['link_pagenav_gap'] = '<li class="page-item disabled"><span class="page-link">...</span></li>'; 
$R['link_pagenav_last'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_last'] . '</a></li>';
$R['link_pagenav_main'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_next'] . '</a></li>';
$R['link_pagenav_prev'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_prev'] . '</a></li>';
$R['forums_code_topic_pages'] = '<ul class="pagination pagination-sm">{$main}{$last}</ul>';

$R['breadcrumbs_container'] = '{$crumbs}';
$R['breadcrumbs_separator'] = '<span class="mx-2">' . Cot::$cfg['separator'] . '</span>';
$R['breadcrumbs_link'] = '<a href="{$url}" title="{$title}">{$title}</a>';
$R['breadcrumbs_plain'] = '{$title}';
$R['breadcrumbs_crumb'] = '{$crumb}';
$R['breadcrumbs_first'] = '{$crumb}';
$R['breadcrumbs_last'] = '<span class="text-truncate" style="max-width: 350px;">{$crumb}</span>';


// Для полей rs[...] — БЕЗ form-select (Select2)
$R['input_select_rs'] = '<select name="{$name}"{$attrs}>{$options}</select>';

// Для полей rtags[...] — тоже без form-select (если используется Select2)
$R['input_select_rtags'] = '<select name="{$name}"{$attrs}>{$options}</select>';

// Для всех остальных — с Bootstrap 5
$R['input_select'] = '<select class="form-select" name="{$name}"{$attrs}>{$options}</select>';


$R['input_checkbox'] = '<input type="hidden" name="{$name}" value="{$value_off}" /><div class="form-check"><input class="form-check-input" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}" /><label class="form-check-label" for="{$name}">{$title}</label></div>';
$R['input_check'] = '<div class="form-check"><input class="form-check-input" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}" /><label class="form-check-label" for="{$name}">{$title}</label></div>';
$R['input_default'] = '<input class="form-control" type="{$type}" name="{$name}" value="{$value}"{$attrs} />{$error}';
$R['input_radio'] = '<div class="form-check mx-3"><input class="form-check-input" type="radio" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}_{$value}" /><label class="form-check-label" for="{$name}_{$value}">{$title}</label></div>{$error}';
$R['input_radio_separator'] = ' ';

$R['input_select_option'] = '<option value="{$value}"{$selected}>{$title}</option>';
$R['input_submit'] = '<button class="btn btn-primary" type="submit" name="{$name}" {$attrs}>{$value}</button>'; 
$R['input_file'] = '<div class="input-group"><input type="file" class="form-control" name="{$name}" value="{$value}" {$attrs} id="{$name}" /><label class="input-group-text" for="{$name}"></label></div>{$error}'; 
$R['input_text'] = '<input class="form-control" type="text" name="{$name}" value="{$value}" {$attrs} />{$error}';


$R['input_textarea'] = '<textarea class="form-control" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_editor'] = '<textarea class="form-control editor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_medieditor'] = '<textarea class="form-control medieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_minieditor'] = '<textarea class="form-control minieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';

// DATES
$R['input_date'] = '<div class="row g-2">
    <div class="col-2">{$day}</div>
    <div class="col-3">{$month}</div>
    <div class="col-2">{$year}</div>
    <div class="col-2">{$hour}</div>
    <div class="col-1 text-center">:</div>
    <div class="col-2">{$minute}</div>
</div>';
$R['input_date_short'] = '<div class="row g-2">
    <div class="col-4">{$day}</div>
    <div class="col-4">{$month}</div>
    <div class="col-4">{$year}</div>
</div>';


// USERS users.edit.tpl & users.profile.tpl
$R['input_password_roldpass'] = '<input class="form-control" type="password" name="{$name}" placeholder="' . $langSkStr['passCurrent'] . '" value="{$value}" {$attrs} />{$error}';
$R['input_password_rnewpass1'] = '<input class="form-control" type="password" name="{$name}" placeholder="' . $langSkStr['passNew'] . '" value="{$value}" {$attrs} />{$error}';
$R['input_password_rnewpass2'] = '<input class="form-control" type="password" name="{$name}" placeholder="' . $langSkStr['passNewRepeat'] . '" value="{$value}" {$attrs} />{$error}';


$R['form_guest_remember_forced'] = '<input class="form-check-input" type="checkbox" name="rremember" checked="checked" disabled="disabled" />';
$R['form_guest_password'] = '<input class="form-control ps-3" type="password" name="rpassword" size="12" maxlength="32" />';

// LOGIN (modal or tpl)
$R['input_text_rusername'] = '<input class="form-control ps-5" type="text" name="rusername" placeholder="' . $langSkStr['Username'] . '" value="{$value}" {$attrs} />{$error}';
$R['input_password_rpassword'] = '<input class="form-control ps-5" type="password" name="rpassword" placeholder="' . $langSkStr['passkey'] . '" value="{$value}" {$attrs} />{$error}';
$R['form_guest_remember'] = '<input class="form-check-input " type="checkbox" id="rememberMe" name="rremember" /><div class="flex-grow-1"><label class="form-check-label ms-3 small" for="rememberMe">' . $L['users_rememberme'] . '</label></div>';

// REGISTER
$R['input_text_ruseremail'] = '<input class="form-control ps-5" type="text" name="ruseremail" placeholder="' . $langSkStr['emailCurrentOnly'] . '" value="{$value}" {$attrs} />{$error}';
$R['input_text_rverify'] = '<input class="form-control" type="text" name="rverify" placeholder="' . $langSkStr['captchaAnswer'] . '" value="{$value}" {$attrs} />{$error}';
$R['input_password_rpassword1'] = '<input class="form-control ps-5" type="password" name="rpassword1" placeholder="' . $L['Password'] . '" value="{$value}" {$attrs} />{$error}';
$R['input_password_rpassword2'] = '<input class="form-control ps-5" type="password" name="rpassword2" placeholder="' . $L['users_confirmpass'] . '" value="{$value}" {$attrs} />{$error}';

// TAGS
$R['tags_input_editpage'] = '<input type="text" name="rtags" class="form-control autotags" value="{$tags}" />';
$R['tags_input_editpost'] = '<input type="text" name="rtags" class="form-control autotags" value="{$tags}" />';

// LOGO main header and other placeholder pictures
$R['app-logo'] = 
	Cot::$cfg['themes_dir'] . "/" . Cot::$cfg['defaulttheme'] . "/img/app-logo.svg";
// Default placeholder picture for page of news
$R['page_default_image'] = 
	Cot::$cfg['themes_dir'] . "/" . Cot::$cfg['defaulttheme'] . "/img/page-default-image.jpg";
// Default placeholder picture/icon for category of page	
$R['cat_icon_default'] = 
	Cot::$cfg['themes_dir'] . "/" . Cot::$cfg['defaulttheme'] . "/img/cat-icon-default.svg";


/**
 * Structure
 */
// for variants as example RC string icons for items structure
// $R['img_structure_cat'] = '<img class="bg-white rounded-circle" width="36" height="36" src="{$icon}" alt="{$title}" title="{$desc}" />';	
// Use that
$R['img_structure_cat'] = '{$icon}';

/**
 * Structure
 */

/*
 * Group list layout
 */
/* $R['users_code_grplist_begin'] = '<ul class="list-group list-group-flush">';
$R['users_code_grplist_end'] = '</ul>';
$R['users_code_grplist_item'] = '<li class="list-group-item bg-transparent">{$item}</li>';
$R['users_code_grplist_item_main'] = '<li class="list-group-item bg-transparent"><strong>{$item}</strong></li>';
$R['users_input_grplist_checkbox'] = '<input type="checkbox" class="form-check-input mx-2" name="{$name}" value="1"{$checked}{$attrs} />';
$R['users_input_grplist_radio'] = '<input type="radio" class="form-check-input" name="{$name}" value="{$value}"{$checked}{$attrs} />';

$R['icon_down'] = '<i class="fa-regular fa-circle-down fa-lg"></i>';
$R['icon_up'] = '<i class="fa-regular fa-circle-up fa-lg"></i>';
$R['icon_order_asc'] = &$R['icon_up'];
$R['icon_order_desc'] = $R['icon_down']; */

// PAGE LIST ReadMore button
$R['list_more'] =' <span class="badge rounded-pill bg-info bg-opacity-10 text-info"><a href="{$page_url}" title="' . $L['ReadMore'] . '">' . $L['ReadMore'] . '</a></span>';


// нижний и верхний порог выбора года (диапазона лет) при редактировании страниц и статей
// для функции cot_selectbox_date
/*
    {PAGEEDIT_FORM_DATE|cot_selectbox_date(
    '{PHP.pag.page_date}',
    'short',
    'rpagedate',
    '{PHP.R.page_years_max_range_threshold}',
    '{PHP.R.page_years_min_range_threshold}',
    false,
    false)}
*/
// нижний порог выбора года (диапазона лет) при редактировании страниц и статей
$R['page_years_min_range_threshold'] = (int) cot_date('Y', Cot::$sys['now']) - 3;
// верхний порог выбора года (диапазона лет) при редактировании страниц и статей
$R['page_years_max_range_threshold'] = (int) cot_date('Y', Cot::$sys['now']) + 1;

// Для полей rpagecat[...] — тоже без (редактирование статей) ДЛЯ SELECT2
$R['input_select_rpagecat'] = '<select name="{$name}"{$attrs}>{$options}</select>{$error}';


/**
 * Resource strings for tags plugin
 */

$R['tags_code_cloud_more'] = '<a class="more" href="{$url}">' . Cot::$L['Tags'] . '</a>';
$R['tags_link_cloud_tag'] = '<li><a href="{$url}" class="{$dim}" title="{$tag_title}" rel="tag"><span class="badge rounded-pill bg-info bg-opacity-10 text-info m-2">{$tag_title}</span></a></li>';
