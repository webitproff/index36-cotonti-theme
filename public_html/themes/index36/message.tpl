<!--
	/********************************************************************************
	* File: message.tpl
	* Extension: Core 
	* Description: HTML template for message.tpl.
	* Compatibility: CMF/CMS Cotonti v.1.0.0.[](https://github.com/Cotonti/Cotonti)
	* Dependencies: 
	* 		 Bootstrap 5.3.+[](https://getbootstrap.com/); 
	* 		 Font Awesome Free 7.3[](https://fontawesome.com/)
	* Theme: Index36  
	* Version=2.1.1 
	* Created: 01 Feb 2026 
	* Updated: 03 Oct 2026 
	* Copyright (c) 2026 webitproff | https://github.com/webitproff
	* Source: https://github.com/webitproff/index36-cotonti-theme
	* Demo : https://freelance-script.abuyfile.com 
	* Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
	* License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)  
	********************************************************************************/
-->

<!-- BEGIN: MAIN -->
<!-- IF {PHP.msg} == '930' -->
<div class="container py-5 col-12 col-md-6">
    <div class="card mb-4">
		<div class="card-header bg-danger-subtle text-danger-emphasis border">
			<h2 class="h5 mb-0">{MESSAGE_TITLE}</h2>
		</div>
		<div class="card-body">
			<div class="alert alert-warning mb-0" role="alert">
				{MESSAGE_BODY}
				<!-- BEGIN: MESSAGE_CONFIRM -->
				<div class="d-flex justify-content-center gap-3 mt-3">
					<a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="btn btn-success">{PHP.L.Yes}</a>
					<a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="btn btn-danger">{PHP.L.No}</a>
				</div>
				<!-- END: MESSAGE_CONFIRM -->
			</div>
		</div>
	</div>
</div>
<!-- ELSE -->
<div class="container py-4">
    <div class="card mx-auto message-card">
        <div class="card-header bg-warning text-dark border border-dark">
            <h2 class="h5 mb-0">{MESSAGE_TITLE}</h2>
		</div>
        <div class="card-body">
            <div class="alert alert-warning mb-0" role="alert">
                {MESSAGE_BODY}
                <!-- BEGIN: MESSAGE_CONFIRM -->
                <div class="d-flex justify-content-center gap-3 mt-3">
                    <a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="btn btn-lg btn-success">{PHP.L.Yes}</a>
                    <a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="btn btn-lg btn-danger">{PHP.L.No}</a>
				</div>
                <!-- END: MESSAGE_CONFIRM -->
			</div>
		</div>
		<!-- Кнопку «Закрыть» показываем только во всплывающем окне
			(jqModal). На отдельной странице /message она не нужна —
		там пользователь уходит по кнопкам Да/Нет или браузером. -->
		<!-- IF {PHP.env.ext} != 'message' -->
		<div class="card-footer">
			<button type="button" class="btn btn-danger jqmClose">{PHP.L.Close}</button>
		</div>
		<!-- ENDIF -->
	</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->