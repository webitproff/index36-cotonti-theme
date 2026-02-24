<!--
	/********************************************************************************
	* File: users.profile.tpl
	* Extension: Module 'users'
	* Description: HTML template for Users Module - profile users setup data.
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
			{USERS_PROFILE_BREADCRUMBS}
		</ol>
	</nav>
</div>
<div class="container py-5">
	
	{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
	<div class="mb-3">
		<h3 class="mb-4"> # <span class="badge bg-primary rounded-pill px-3 py-2 fs-6 gap-2 shadow"> {USERS_PROFILE_ID}</span> {PHP.L.users_id}</h3>
	</div>
	<div class="card border-0 shadow-sm mb-5">
		<div class="card-body">
			<div class="row g-4">
				<div class="col-md-6">
					<div class="mb-3">
						<label class="form-label fw-semibold">{PHP.L.Registered}:</label>
						<div>{USERS_PROFILE_REGDATE}</div>
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="mb-3">
						<label class="form-label fw-semibold">{PHP.L.Lastlogged}:</label>
						<div>{USERS_PROFILE_LASTLOG}</div>
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="mb-3">
						<label class="form-label fw-semibold">{PHP.L.users_lastip}:</label>
						<div>{USERS_PROFILE_LASTIP}</div>
					</div>
				</div>
				
				<div class="col-md-6">
					<div class="mb-3">
						<label class="form-label fw-semibold">{PHP.L.users_logcounter}:</label>
						<div>{USERS_PROFILE_LOGCOUNT}</div>
					</div>
				</div>
			</div>
		</div>
	</div>		
	<form action="{USERS_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile">
		<input type="hidden" name="userid" value="{USERS_PROFILE_ID}"/>
		<div class="card border-0 shadow-sm mb-5">
			<div class="card-body">
				<div class="row g-4">
					<div class="col-md-6">
						<div class="mb-3">
							<p class="fw-semibold">{PHP.L.Username} (NickName): <code>{USERS_PROFILE_NAME}</code></p>
						</div>	  
						<!-- Экстраполе Extrafield-->
						<!-- IF {USERS_PROFILE_FIRSTNAME} -->
						<div class="row mb-3">
							<label class="col-sm-3 col-form-label fw-semibold">{USERS_PROFILE_FIRSTNAME_TITLE}:</label>
							<div class="col-sm-9 pt-2">{USERS_PROFILE_FIRSTNAME}</div>
						</div>
						<!-- ENDIF -->
						<!-- Экстраполе Extrafield-->
						<!-- IF {USERS_PROFILE_LASTNAME} -->
						<div class="row mb-3">
							<label class="col-sm-3 col-form-label fw-semibold">{USERS_PROFILE_LASTNAME_TITLE}:</label>
							<div class="col-sm-9 pt-2">{USERS_PROFILE_LASTNAME}</div>
						</div>
						<!-- ENDIF -->
					</div>
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Groupsmembership}:</label>
							<div class="user-groups">
								{PHP.L.Maingroup}:<br/>
								{PHP.R.icon_vert_active.asc}<br/>
								{USERS_PROFILE_GROUPS}
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
							<div>{USERS_PROFILE_COUNTRY}</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Timezone}:</label>
							<div>{USERS_PROFILE_TIMEZONE}</div>
						</div>
					</div>
					<!-- IF !{PHP.cfg.forcedefaulttheme} -->
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Theme}:</label>
							<div>{USERS_PROFILE_THEME}</div>
						</div>
					</div>
					<!-- ENDIF -->					
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Language}:</label>
							<div>{USERS_PROFILE_LANG}</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Birthdate}:</label>
							<div>{USERS_PROFILE_BIRTHDATE}</div>
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Gender}:</label>
							<div>{USERS_PROFILE_GENDER}</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- IF {PHP|cot_plugin_active('userimages')} -->
		<div class="card border-0 shadow-sm mb-4">
			<div class="card-body">
				<div class="row g-4">
					<!-- IF {USERS_PROFILE_AVATAR} -->
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Avatar}:</label>
							<div>{USERS_PROFILE_AVATAR}</div>
						</div>
					</div>
					<!-- ENDIF -->
					
					<!-- IF {USERS_PROFILE_PHOTO} -->
					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Photo}:</label>
							<div>{USERS_PROFILE_PHOTO}</div>
						</div>
					</div>
					<!-- ENDIF -->
				</div>
				<!-- IF {USERS_PROFILE_BACKGROUND} -->
				<div class="mt-3">
					<div class="mb-3">
						<label class="form-label fw-semibold">{PHP.langSkStr.usersProfileBG}:</label>
						<div id="prf-bg">{USERS_PROFILE_BACKGROUND}</div>
					</div>
				</div>
				<!-- ENDIF -->	
			</div>
		</div>
		<!-- ENDIF -->

		<div class="card border-0 shadow-sm mb-4">
			<div class="card-body pb-5">
				<label class="form-label fw-semibold">{PHP.L.Signature}:</label>
				<div>{USERS_PROFILE_TEXT}</div>
			</div>
		</div>

		<div class="card border-0 shadow-sm mb-5">
			<div class="card-body">
				<div class="row g-4">
					
					<div class="col-md-6">
						
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.Email}:</label>
							<div class="mb-4 position-relative">
								<i class="fa-solid fa-envelope position-absolute top-50 start-0 translate-middle-y ms-3"></i>
								{USERS_PROFILE_EMAIL}
							</div>
						</div>
						
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.users_hideemail}:</label>
							<div>{USERS_PROFILE_HIDEEMAIL}</div>
						</div>

						<!-- IF {PHP|cot_module_active('pm')} -->
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.users_pmnotify}:</label>
							<div>{USERS_PROFILE_PMNOTIFY}</div>
							<small class="text-muted">{PHP.L.users_pmnotifyhint}</small>
						</div>
						<!-- ENDIF -->
					</div>

					<div class="col-md-6">
						<div class="mb-3">
							<label class="form-label fw-semibold">{PHP.L.users_newpass}:</label>
							<small class="text-muted d-block mb-2">{PHP.L.users_newpasshint1}</small>
							<div class="mb-2">{USERS_PROFILE_OLDPASS}</div>
							<small class="text-muted d-block mb-2">{PHP.L.users_oldpasshint}</small>
							<div class="d-flex gap-2 flex-wrap">
								{USERS_PROFILE_NEWPASS1} {USERS_PROFILE_NEWPASS2}
							</div>
							<small class="text-muted d-block mt-1">{PHP.L.users_newpasshint2}</small>
						</div>
					</div>
				</div>
			</div>
		</div>			
		<div class="col-12 text-end">
			<button type="submit" class="btn btn-lg btn-primary">{PHP.L.Update}</button>
		</div>
		
	</form>
</div>
<!-- END: MAIN -->