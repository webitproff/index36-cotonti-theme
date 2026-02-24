<!--
	/********************************************************************************
	* File: forums.posts.tpl
	* Extension: Module 'forums'
	* Description: HTML template for Forums Module - List posts.
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

<div class="border-bottom py-3 px-3 mb-4">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-transparent mb-0 p-0">
            {FORUMS_POSTS_BREADCRUMBS}
		</ol>
	</nav>
</div>
<div class="container-xl py-5">
	<!-- BEGIN: FORUMS_POSTS_TOPICPRIVATE -->
	<div class="alert alert-danger mb-4" role="alert">
		{PHP.L.forums_privatetopic}
	</div>
	<!-- END: FORUMS_POSTS_TOPICPRIVATE -->
	
	<!-- BEGIN: POLLS_VIEW -->
	<div class="card mb-4">
		<div class="card-header bg-light fw-bold">
			{POLLS_TITLE}
		</div>
		<div class="card-body">
			{POLLS_FORM}
		</div>
	</div>
	<!-- END: POLLS_VIEW -->
	
	<!-- BEGIN: FORUMS_POSTS_ADMIN -->
	<div class="card mb-4 border-warning">
		<div class="card-header bg-warning-subtle fw-bold">
			{PHP.L.forums_topicoptions}
		</div>
		<div class="card-body">
			<div class="d-flex flex-wrap gap-3 mb-3 align-items-center">
				<a href="{FORUMS_POSTS_BUMP_URL}" class="btn btn-sm btn-outline-secondary" title="{PHP.L.forums_explainbump}">{PHP.L.forums_bump}</a>
				<a href="{FORUMS_POSTS_LOCK_URL}" class="btn btn-sm btn-outline-secondary" title="{PHP.L.forums_explainlock}">{FORUMS_POSTS_LOCK_LABEL}</a>
				<a href="{FORUMS_POSTS_STICKY_URL}" class="btn btn-sm btn-outline-secondary" title="{PHP.L.forums_explainsticky}">{PHP.L.forums_makesticky}</a>
				<a href="{FORUMS_POSTS_ANNOUNCE_URL}" class="btn btn-sm btn-outline-secondary" title="{PHP.L.forums_explainannounce}">{PHP.L.forums_announcement}</a>
				<a href="{FORUMS_POSTS_PRIVATE_URL}" class="btn btn-sm btn-outline-secondary" title="{PHP.L.forums_explainprivate}">{PHP.L.forums_private}</a>
				<a href="{FORUMS_POSTS_CLEAR_URL}" class="btn btn-sm btn-outline-secondary" title="{PHP.L.forums_explaindefault}">{PHP.L.Default}</a>
				<a href="{FORUMS_POSTS_DELETE_URL}" class="btn btn-sm btn-outline-danger confirmLink" title="{PHP.L.forums_explaindelete}">{PHP.L.Delete}</a>
			</div>
			
			<form id="movetopic" action="{FORUMS_POSTS_MOVE_URL}" method="post" class="d-flex flex-wrap gap-3 align-items-center">
				<div class="flex-grow-1">
					{FORUMS_POSTS_MOVEBOX_SELECT}
				</div>
				<div class="form-check">
					{FORUMS_POSTS_MOVEBOX_KEEP}
					<label class="form-check-label small text-muted">{PHP.L.forums_keepmovedlink}</label>
				</div>
				<button type="submit" class="btn btn-outline-primary">{PHP.L.Move}</button>
			</form>
		</div>
	</div>
	<!-- END: FORUMS_POSTS_ADMIN -->
	
	{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
	
	<div class="mb-4">
		{FORUMS_POSTS_TAGS}
	</div>
	
	<!-- Посты -->
	<div class="mb-5">
		<!-- BEGIN: FORUMS_POSTS_ROW -->
		<div class="card mb-4 border {FORUMS_POSTS_ROW_ODDEVEN}">
			<div class="card-header d-flex justify-content-between align-items-center py-2 px-3" style="background-color: var(--bs-header-bg);">
				<div class="d-flex align-items-center gap-3">
					<a name="{FORUMS_POSTS_ROW_ID}" id="{FORUMS_POSTS_ROW_POSTID}" href="{FORUMS_POSTS_ROW_IDURL}" class="fw-bold text-decoration-none">
						#{FORUMS_POSTS_ROW_ORDER}
					</a>
					
					<h5 class="mb-0">
						<!-- IF {PHP|cot_plugin_active('whosonline')} -->
						<img src="themes/{PHP.theme}/img/online{FORUMS_POSTS_ROW_USER_ONLINE}.png"
						title="{PHP.L.Status}: {FORUMS_POSTS_ROW_USER_ONLINE_TITLE}"
						alt="" class="me-2" style="width:16px;height:16px;vertical-align:middle;" />
						<!-- ENDIF -->
						{FORUMS_POSTS_ROW_USER_NAME}
					</h5>
				</div>
				
				<div class="small text-muted d-flex align-items-center gap-2 flex-wrap justify-content-end">
					{FORUMS_POSTS_ROW_CREATION}
					<!-- IF {FORUMS_POSTS_ROW_POSTERIP} -->
					<span class="mx-1">•</span>{FORUMS_POSTS_ROW_POSTERIP}
					<!-- ENDIF -->
					<!-- IF {FORUMS_POSTS_ROW_QUOTE} --><span class="mx-1">•</span>{FORUMS_POSTS_ROW_QUOTE}<!-- ENDIF -->
					<!-- IF {FORUMS_POSTS_ROW_EDIT}   --><span class="mx-1">•</span>{FORUMS_POSTS_ROW_EDIT}<!-- ENDIF -->
					<!-- IF {FORUMS_POSTS_ROW_DELETE} --><span class="mx-1">•</span>{FORUMS_POSTS_ROW_DELETE}<!-- ENDIF -->
					{FORUMS_POSTS_ROW_BOTTOM}
				</div>
			</div>
			
			<div class="card-body">
				<div class="row g-4">
					<div class="col-md-3 col-lg-2 text-center">
						<!-- IF {PHP|cot_plugin_active('userimages')} -->
							<!-- IF {FORUMS_POSTS_ROW_USER_AVATAR_SRC} -->
							<img src="{FORUMS_POSTS_ROW_USER_AVATAR_SRC}" alt="{PAGE_OWNER_NICKNAME}" class="rounded-circle" width="57" height="57">
							<!-- ELSE -->
							<img src="{PHP.R.userimg_default_avatar}" alt="{FORUMS_POSTS_ROW_USER_NICKNAME}" class="rounded-circle border border-2 border-light" width="54" height="54">
							<!-- ENDIF -->
						<!-- ELSE -->
						<img class="rounded-circle me-2 profile-img" src="{FORUMS_POSTS_ROW_USER_AVATAR}" alt="{FORUMS_POSTS_ROW_USER_NICKNAME}" width="76" height="76" style="object-fit: cover;">
						<!-- ENDIF -->
						<div class="mt-3">
							<button class="btn btn-outline-primary rounded-circle p-0" type="button" data-bs-toggle="modal" data-bs-target="#moreUser-{FORUMS_POSTS_ROW_ID}" style="width: 2rem; height: 2rem;">
								<i class="fa fa-ellipsis-v fa-lg"></i>
							</button>
						</div>
						
						
					</div>
					
					<div class="col-md-9 col-lg-10">
						<div class="mb-3">
							{FORUMS_POSTS_ROW_TEXT}
						</div>
						
						<!-- IF {FORUMS_POSTS_ROW_UPDATEDBY} -->
						<div class="text-muted fst-italic small mt-4 border-top pt-3">
							{FORUMS_POSTS_ROW_UPDATEDBY}
						</div>
						<!-- ENDIF -->
					</div>
				</div>
			</div>
			<div class="modal fade" id="moreUser-{FORUMS_POSTS_ROW_ID}" tabindex="-1" aria-labelledby="moreUserLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="moreUserLabel">{PHP.L.Help}</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="row">
								
								<div class="mb-2 fw-bold text-center">
									{FORUMS_POSTS_ROW_USER_FULL_NAME}
								</div>
								<div class="mb-2 fw-bold text-center">
									{FORUMS_POSTS_ROW_USER_MAIN_GROUP_TITLE}
								</div>
								
								<div class="mb-2 text-muted text-center">
									{PHP.L.forums_posts}: {FORUMS_POSTS_ROW_USER_POSTCOUNT}
								</div>
								
								<div class="mb-2">
									{FORUMS_POSTS_ROW_USER_TEXT}
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{PHP.L.Close}</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- END: FORUMS_POSTS_ROW -->
		
		<!-- IF {PAGINATION} -->
		<nav aria-label="Pagination" class="mt-4">
			<ul class="pagination justify-content-center justify-content-md-start">
				{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
			</ul>
		</nav>
		<!-- ENDIF -->
	</div>
	
	<!-- BEGIN: FORUMS_POSTS_TOPICLOCKED -->
	<div class="alert alert-warning mb-4" role="alert">
		{FORUMS_POSTS_TOPICLOCKED_BODY}
	</div>
	<!-- END: FORUMS_POSTS_TOPICLOCKED -->
	
	<!-- BEGIN: FORUMS_POSTS_ANTIBUMP -->
	<div class="alert alert-info mb-4">
		{FORUMS_POSTS_ANTIBUMP_BODY}
	</div>
	<!-- END: FORUMS_POSTS_ANTIBUMP -->
	
	<!-- BEGIN: FORUMS_POSTS_NEWPOST -->
	<form action="{FORUMS_POSTS_NEWPOST_SEND}" method="post" name="newpost" class="card border-primary mt-5">
		<div class="card-header fw-bold">
			{PHP.L.Reply}
		</div>
		<div class="card-body">
			<div class="mb-3 form-floating">
				{FORUMS_POSTS_NEWPOST_TEXT}
			</div>
			
			<div class="d-flex flex-wrap gap-3 align-items-center">
				<!-- IF {FORUMS_POSTS_NEWPOST_PFS} -->
				{FORUMS_POSTS_NEWPOST_PFS}
				<!-- ENDIF -->
				
				<!-- IF {FORUMS_POSTS_NEWPOST_SFS} -->
				<!-- IF {FORUMS_POSTS_NEWPOST_PFS} --><span class="align-self-center mx-2">{PHP.cfg.separator}</span><!-- ENDIF -->
				{FORUMS_POSTS_NEWPOST_SFS}
				<!-- ENDIF -->
				
				<!-- IF {PHP.cfg.forums.edittimeout} != 0 -->
				<div class="text-muted small ms-auto">
					{PHP.L.forums_edittimeoutnote} <strong>{FORUMS_POSTS_NEWPOST_EDITTIMEOUT}</strong>
				</div>
				<!-- ENDIF -->
			</div>
		</div>
		
		<div class="card-footer text-end">
			<button type="submit" class="btn btn-primary px-5">
				<i class="fa-solid fa-paper-plane me-2"></i>{PHP.L.Reply}
			</button>
		</div>
	</form>
	<!-- END: FORUMS_POSTS_NEWPOST -->
</div>
<!-- END: MAIN -->