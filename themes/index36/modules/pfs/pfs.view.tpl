<!--
	/********************************************************************************
	* File: pfs.view.tpl
	* Extension: Module 'pfs'
	* Description: HTML template for Personal File Space Module.
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

{PFSVIEW_HEADER1}

<link href="themes/{PHP.theme}/css/{PHP.scheme}.css" type="text/css" rel="stylesheet" />

{PFSVIEW_HEADER2}

	<h2>{PFSVIEW_FILE_DESC}</h2>
	<p class="desc">{PFSVIEW_FILE_SIZEX} x {PFSVIEW_FILE_SIZEY} x {PFSVIEW_FILE_SIZE} kb</p>

	<div id="main">
		{PFSVIEW_FILE_IMAGE}
	</div>

{PFSVIEW_FOOTER}

<!-- END: MAIN -->