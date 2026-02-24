<!--
	/********************************************************************************
	* File: forums.editpost.tpl
	* Extension: Module 'forums'
	* Description: HTML template for Forums Module - Edit posts.
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
<div class="border-bottom py-3 px-3">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb d-flex mb-0">
			{FORUMS_EDITPOST_BREADCRUMBS}
		</ol>
	</nav>
</div>

<div class="container-xl mt-4 mb-5">
	
	
    <!-- IF {FORUMS_EDITPOST_SUBTITLE} -->
    <p class="text-muted mb-4 small">{FORUMS_EDITPOST_SUBTITLE}</p>
    <!-- ENDIF -->
	
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
	<div class="card border-0 shadow-sm mb-4">
		<div class="card-body">
			<form action="{FORUMS_EDITPOST_FORM_ACTION}" method="POST" name="editpost" class="needs-validation" novalidate>
				
				<!-- ================== Заголовок и описание темы (только для первого поста) ================== -->
				<!-- BEGIN: FORUMS_EDITPOST_FIRSTPOST -->
				<div class="mb-4">
					<label for="topic-title" class="form-label fw-bold">{PHP.L.forums_topic}</label>
					{FORUMS_EDITPOST_FORM_TOPIC_TITTLE}
				</div>
				
				<div class="mb-4">
					<label for="topic-desc" class="form-label">{PHP.L.Description}</label>
					{FORUMS_EDITPOST_FORM_TOPIC_DESCRIPTION}
				</div>
				<!-- END: FORUMS_EDITPOST_FIRSTPOST -->
				
				<!-- ================== Основное поле текста сообщения ================== -->
				<div class="mb-4">
					
					{FORUMS_EDITPOST_FORM_TEXT}
					
					
					<div class="d-flex flex-wrap gap-2 mt-2">
						<!-- IF {FORUMS_EDITPOST_PFS} -->
						<div>{FORUMS_EDITPOST_PFS}</div>
						<!-- ENDIF -->
						
						<!-- IF {FORUMS_EDITPOST_SFS} -->
						<div>{FORUMS_EDITPOST_SFS}</div>
						<!-- ENDIF -->
						
						<!-- IF {FORUMS_EDITPOST_EDIT_TIMEOUT} -->
						<div class="text-muted small ms-auto align-self-center">
							{PHP.L.forums_edittimeoutnote} <strong>{FORUMS_EDITPOST_EDIT_TIMEOUT}</strong>
						</div>
						<!-- ENDIF -->
					</div>
				</div>
				
				<!-- ================== Опрос (если включён) ================== -->
				<!-- BEGIN: POLL -->
				<div class="card border mb-4">
					<div class="card-header bg-light fw-bold">
						{PHP.L.poll}
					</div>
					<div class="card-body">
						
						<script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
						<script type="text/javascript">
							var ansMax = {PHP.cfg.polls.max_options_polls};
						</script>
						
						{EDIT_POLL_IDFIELD}
						
						<div class="mb-3">
							<label class="form-label">{PHP.L.Question}</label>
							{EDIT_POLL_TEXT}
						</div>
						
						<div class="mb-3">
							<label class="form-label">{PHP.L.Options}</label>
							<div id="poll-options-container">
								<!-- BEGIN: OPTIONS -->
								<div class="input-group mb-2 poll-option-row">
									{EDIT_POLL_OPTION_TEXT}
									<button type="button" class="btn btn-outline-danger deloption">
										<i class="fa-solid fa-xmark"></i>
									</button>
								</div>
								<!-- END: OPTIONS -->
							</div>
							
							<button id="addoption" type="button" class="btn btn-outline-primary mt-2">
								<i class="fa-solid fa-plus me-1"></i>{PHP.L.Add}
							</button>
						</div>
						
						<div class="form-check mb-3">
							{EDIT_POLL_MULTIPLE}
						</div>
						
						<!-- BEGIN: EDIT -->
						<div class="d-flex flex-wrap gap-3">
							{EDIT_POLL_LOCKED}
							{EDIT_POLL_RESET}
							{EDIT_POLL_DELETE}
						</div>
						<!-- END: EDIT -->
						
					</div>
				</div>
				<!-- END: POLL -->
				
				<!-- ================== Теги ================== -->
				<!-- IF {FORUMS_EDITPOST_FORM_TAGS} -->
				<div class="mb-4">
					<label class="form-label">{PHP.L.Tags}</label>
					{FORUMS_EDITPOST_FORM_TAGS}
					<div class="form-text text-muted small">
						{PHP.L.taghint}
					</div>
				</div>
				<!-- ENDIF -->
				
				<!-- ================== Кнопка отправки ================== -->
				<div class="d-grid d-sm-block text-sm-end">
					<button type="submit" class="btn btn-primary btn-lg px-5">
						<i class="fa-solid fa-check me-2"></i>{PHP.L.Update}
					</button>
				</div>
				
			</form>
		</div>
	</div>
</div>
<!-- END: MAIN -->