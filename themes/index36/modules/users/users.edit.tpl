<!--
	/********************************************************************************
	* File: users.edit.tpl
	* Extension: Module 'users'
	* Description: HTML template for Users Module - Edit users.
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
<div class="border-bottom border-secondary py-3 px-3">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb d-flex mb-0">
			{USERS_EDIT_BREADCRUMBS}
		</ol>
	</nav>
</div>
<div class="container py-5">
	
	{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
	<div class="mb-3">
		<h3 class="mb-4"> # <span class="badge bg-primary rounded-pill px-3 py-2 fs-6 gap-2 shadow"> {USERS_EDIT_ID}</span> {PHP.L.users_id}</h3>
	</div>
	<div class="card border-0 shadow-sm mb-5">
		<div class="card-body">
			<div class="row g-4">
				<div class="col-md-6">
					<div class="mb-3">
						<label class="form-label fw-semibold">{PHP.L.Registered}:</label>
						<div>{USERS_EDIT_REGDATE}</div>
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="mb-3">
						<label class="form-label fw-semibold">{PHP.L.Lastlogged}:</label>
						<div>{USERS_EDIT_LASTLOG}</div>
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="mb-3">
						<label class="form-label fw-semibold">{PHP.L.users_lastip}:</label>
						<div>{USERS_EDIT_LASTIP}</div>
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="mb-3">
						<label class="form-label fw-semibold">{PHP.L.users_logcounter}:</label>
						<div>{USERS_EDIT_LOGCOUNT}</div>
					</div>
				</div>
			</div>
		</div>
	</div>		
	<form action="{USERS_EDIT_SEND}" method="post" name="useredit" enctype="multipart/form-data">
		<input type="hidden" name="id" value="{USERS_EDIT_ID}" />
		<div class="card border-0 shadow-sm mb-5">
			<div class="card-body">
				<div class="row g-4">
					
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Username} (NickName):</label>
							<div class="mb-3 position-relative">
								<i class="fa-solid fa-circle-user position-absolute top-50 start-0 translate-middle-y ms-3"></i>
								{USERS_EDIT_NAME}
							</div>
						</div>	  
						<!-- Экстраполе Extrafield-->
						<!-- IF {USERS_EDIT_FIRSTNAME} -->
						<div class="row mb-3">
							<label class="col-sm-3 col-form-label fw-semibold">{USERS_EDIT_FIRSTNAME_TITLE}:</label>
							<div class="col-sm-9 pt-2">{USERS_EDIT_FIRSTNAME}</div>
						</div>
						<!-- ENDIF -->
						<!-- Экстраполе Extrafield-->
						<!-- IF {USERS_EDIT_LASTNAME} -->
						<div class="row mb-3">
							<label class="col-sm-3 col-form-label fw-semibold">{USERS_EDIT_LASTNAME_TITLE}:</label>
							<div class="col-sm-9 pt-2">{USERS_EDIT_LASTNAME}</div>
						</div>
						<!-- ENDIF -->
						
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Email}:</label>
							<div class="mb-4 position-relative">
								<i class="fa-solid fa-envelope position-absolute top-50 start-0 translate-middle-y ms-3"></i>
								{USERS_EDIT_EMAIL}
							</div>
						</div>
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.users_newpass}:</label>
							<div>{USERS_EDIT_NEWPASS}</div>
							<small class="text-muted">{PHP.L.users_newpasshint1}</small>
						</div>
					</div>
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Groupsmembership}:</label>
							<div class="user-groups">
								{PHP.L.Maingroup}:<br/>
								{PHP.R.icon_vert_active.asc}<br/>
								{USERS_EDIT_GROUPS}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card border-0 shadow-sm mb-5">
			<div class="card-body">
				<div class="row g-4">
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Country}:</label>
							<div>{USERS_EDIT_COUNTRY}</div>
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Timezone}:</label>
							<div>{USERS_EDIT_TIMEZONE}</div>
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Theme}:</label>
							<div>{USERS_EDIT_THEME}</div>
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Language}:</label>
							<div>{USERS_EDIT_LANG}</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Birthdate}:</label>
							<div>{USERS_EDIT_BIRTHDATE}</div>
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Gender}:</label>
							<div>{USERS_EDIT_GENDER}</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- IF {PHP|cot_plugin_active('userimages')} -->
		<div class="card border-0 shadow-sm mb-4">
			<div class="card-body">
				<div class="row g-4">
					<!-- IF {USERS_EDIT_AVATAR} -->
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Avatar}:</label>
							<div>{USERS_EDIT_AVATAR}</div>
						</div>
					</div>
					<!-- ENDIF -->
					
					<!-- IF {USERS_EDIT_PHOTO} -->
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Photo}:</label>
							<div>{USERS_EDIT_PHOTO}</div>
						</div>
					</div>
					<!-- ENDIF -->
				</div>
				<!-- IF {USERS_EDIT_BACKGROUND} -->
				<div class="mt-3">
					<div class="mb-3">
						<label class="form-label fw-semibold">{PHP.langSkStr.usersProfileBG}:</label>
						<div id="prf-bg">{USERS_EDIT_BACKGROUND}</div>
					</div>
				</div>
				<!-- ENDIF -->	
			</div>
		</div>
		<!-- ENDIF -->
		
		<div class="row g-4">
			<div class="col-md-6">
				<div class="card border-0 shadow-sm mb-4">
					<div class="card-body">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.users_hideemail}:</label>
							<div>{USERS_EDIT_HIDEEMAIL}</div>
						</div>
					</div>
				</div>
			</div>
			<!-- IF {PHP|cot_module_active('pm')} -->
			<div class="col-md-6">
				<div class="card border-0 shadow-sm mb-4">
					<div class="card-body">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.users_pmnotify}:</label>
							<div>{USERS_EDIT_PMNOTIFY}</div>
							<small class="text-muted">{PHP.L.users_pmnotifyhint}</small>
						</div>
					</div>
				</div>
			</div>
			<!-- ENDIF -->
			<div class="col-12">
				<div class="card border-0 shadow-sm mb-4">
					<div class="card-body pb-5">
						<label class="form-label fw-semibold">{PHP.L.Signature}:</label>
						<div>{USERS_EDIT_TEXT}</div>
					</div>
				</div>
			</div>
			<div class="col-12">
				<div class="card border-0 shadow-sm mb-4">
					<div class="card-body">
						<label class="form-label fw-semibold">{PHP.L.users_deleteuser}:</label>
						<div class="bg-warning bg-opacity-50 p-2 rounded-3">{USERS_EDIT_DELETE}</div>
					</div>
				</div>
			</div>
			<div class="col-12 text-end">
				<button type="submit" class="btn btn-lg btn-primary">{PHP.L.Update}</button>
			</div>
		</div>
	</form>
</div>
<!-- END: MAIN -->
