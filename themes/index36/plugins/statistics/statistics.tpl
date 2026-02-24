<!--
	/********************************************************************************
	* File: statistics.tpl
	* Extension: plugin 'statistics'
	* Description: HTML template for statistics plugin.
	* Compatibility: CMF/CMS Cotonti Siena v0.9.26[](https://github.com/Cotonti/Cotonti)
	* Dependencies: 
	* 		 Bootstrap 5.3.+[](https://getbootstrap.com/); 
	* 		 Font Awesome Free 7.1[](https://fontawesome.com/)
	* Theme: Index36  
	* Version: 1.0.2 
	* Created: 01 Feb 2026 
	* Updated: 23 Feb 2026 
	* Copyright (c) 2026 webitproff | https://github.com/webitproff
	* Source: https://github.com/webitproff/index36-cotonti-theme
	* Demo : https://freelance-script.abuyfile.com/ 
	* Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
	* License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)  
	********************************************************************************/
-->

<!-- BEGIN: MAIN -->
<div class="container my-4">
    <h2 class="stats mb-3">{PHP.L.plu_title}</h2>
	
    <h3>{PHP.L.Main}:</h3>
    <div class="list-group mb-4">
        <div class="list-group-item d-flex justify-content-between flex-wrap">
            <div class="flex-grow-1">{PHP.L.plu_maxwasreached} {STATISTICS_MAX_DATE}, {STATISTICS_MAX_HITS} {PHP.L.plu_pagesdisplayedthisday}</div>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_totalpagessince} {STATISTICS_SINCE}</span>
            <span>{STATISTICS_TOTALPAGES}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_registeredusers}</span>
            <span>{STATISTICS_TOTALDBUSERS}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.Pages}</span>
            <span>{STATISTICS_TOTALDBPAGES}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_totalmails}</span>
            <span>{STATISTICS_TOTALMAILSENT}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.comments_comments}</span>
            <span>{STATISTICS_TOTALDBCOMMENTS}</span>
		</div>
	</div>
	
    <h3>{PHP.L.Private_Messages}:</h3>
    <div class="list-group mb-4">
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_totalpms}</span>
            <span>{STATISTICS_TOTALPMSENT}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_totalactivepms}</span>
            <span>{STATISTICS_TOTALPMACTIVE}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_totalarchivedpms}</span>
            <span>{STATISTICS_TOTALPMARCHIVED}</span>
		</div>
	</div>
	
    <h3>{PHP.L.Forums}:</h3>
    <div class="list-group mb-4">
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_viewsforums}</span>
            <span>{STATISTICS_TOTALDBVIEWS}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_postsforums}</span>
            <span>{STATISTICS_TOTALDBPOSTS}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_topicsforums}</span>
            <span>{STATISTICS_TOTALDBTOPICS}</span>
		</div>
	</div>
	
    <h3>{PHP.L.plu_pollsratings}:</h3>
    <div class="list-group mb-4">
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_pagesrated}</span>
            <span>{STATISTICS_TOTALDBRATINGS}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_votesratings}</span>
            <span>{STATISTICS_TOTALDBRATINGSVOTES}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_polls}</span>
            <span>{STATISTICS_TOTALDBPOLLS}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_votespolls}</span>
            <span>{STATISTICS_TOTALDBPOLLSVOTES}</span>
		</div>
	</div>
	
    <h3>{PHP.L.PFS}:</h3>
    <div class="list-group mb-4">
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_pfsspace}</span>
            <span>{STATISTICS_TOTALDBFILES}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.plu_pfssize}, {PHP.L.kb}</span>
            <span>{STATISTICS_TOTALDBFILESIZE}</span>
		</div>
	</div>
	
    <h3>{PHP.L.plu_contributions}:</h3>
    <div class="list-group mb-4">
        <!-- BEGIN: IS_USER -->
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.forums_posts}</span>
            <span>{STATISTICS_USER_POSTSCOUNT}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.forums_topics}</span>
            <span>{STATISTICS_USER_TOPICSCOUNT}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between">
            <span>{PHP.L.comments_comments}</span>
            <span>{STATISTICS_USER_COMMENTS}</span>
		</div>
        <!-- END: IS_USER -->
        <!-- BEGIN: IS_NOT_USER -->
        <div class="list-group-item">
            <span>{PHP.L.plu_notloggedin}</span>
		</div>
        <!-- END: IS_NOT_USER -->
	</div>
	
    <h3>{PHP.L.plu_membersbycountry}:</h3>
    <div class="list-group mb-4">
        <div class="list-group-item d-flex justify-content-between fw-bold">
            <span class="w-10">{PHP.L.plu_flag}</span>
            <span class="w-70"><a href="{STATISTICS_PLU_URL}">{PHP.cot_img_down}</a> {PHP.L.Country}</span>
            <span class="w-20"><a href="{STATISTICS_SORT_BY_USERCOUNT}" rel="nofollow">{PHP.cot_img_down}</a> {PHP.L.Users}</span>
		</div>
        <!-- BEGIN: ROW_COUNTRY -->
        <div class="list-group-item d-flex justify-content-between align-items-center">
            <span class="w-10 text-center">{STATISTICS_COUNTRY_FLAG}</span>
            <span class="w-70">{STATISTICS_COUNTRY_NAME}</span>
            <span class="w-20 text-end">{STATISTICS_COUNTRY_COUNT}</span>
		</div>
        <!-- END: ROW_COUNTRY -->
        <div class="list-group-item d-flex justify-content-between align-items-center">
            <span class="w-10 text-center"><img src="images/flags/f-00.png" alt="" /></span>
            <span class="w-70">{PHP.L.plu_unknown}</span>
            <span class="w-20 text-end">{STATISTICS_UNKNOWN_COUNT}</span>
		</div>
        <div class="list-group-item d-flex justify-content-between fw-bold">
            <span class="w-80 text-end">{PHP.L.Total}:</span>
            <span class="w-20 text-end">{STATISTICS_TOTALUSERS}</span>
		</div>
	</div>
</div>
<!-- END: MAIN -->
