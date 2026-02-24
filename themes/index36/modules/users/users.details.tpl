<!--
	/********************************************************************************
	* File: users.details.tpl
	* Extension: Module 'users'
	* Description: HTML template with DEMO DATA for Users Module - users.details.tpl. 
 	* Compatibility: CMF/CMS Cotonti Siena v0.9.26[](https://github.com/Cotonti/Cotonti)
	* Dependencies: 
	* 		 Bootstrap 5.3.+[](https://getbootstrap.com/); 
	* 		 Font Awesome Free 7.1[](https://fontawesome.com/)
	* Theme: Index36  
	* Version: 1.0.2 
	* Created: 01 Feb 2026 
	* Updated: 24 Feb 2026 
	* Copyright (c) 2026 webitproff | https://github.com/webitproff
	* Source: https://github.com/webitproff/index36-cotonti-theme
	* Demo : https://freelance-script.abuyfile.com/ 
	* Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
	* License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)  
	********************************************************************************/
-->
<!-- BEGIN: MAIN -->

<!-- Custom minimal styles for users.details.tpl -->
<style>
	/* Minimal custom styles for easy integration */
	.user-details-header-background img {
	block-size: 250px;
	inline-size: 100%;
	object-fit: cover;
	}
	
	.user-details-header {
	margin-block-start: -2rem;
	}
	.user-details-header .user-details-img {
	border: 5px solid;
	border-color: #ff8809;
	background-color: #f8f9fa;
    padding: 3px;
	inline-size: 120px;
	}
	
	/* Responsive style */
	@media (max-width: 767.98px) {
	.user-details-header-background img {
    block-size: 150px;
	}
	.user-details-header .user-details-img {
    inline-size: 100px;
	}
	}
	
    .details-background { height: 200px; object-fit: cover; }
	
	/* Active */
	.nav-pills .nav-link.active,
	.nav-pills .show > .nav-link {
	color: #fafaf0!important;
	background-color: #666cff!important;
	font-weight: 600;
	}
	
	/* Hover + Focus */
	.nav-pills .nav-link:hover,
	.nav-pills .nav-link:focus {
	color: #fafaf0;
	background-color: #666cff;
	font-weight: 600;
	}
	
	/* Убираем стандартный outline Bootstrap при focus */
	.nav-pills .nav-link:focus {
	box-shadow: none;
	}
</style>

<div class="container-xxl flex-grow-1 py-4">
	<div class="row">
		<div class="col-12">
			<div class="card border-0 shadow mb-5">
				<div class="user-details-header-background">
					<!-- IF {USERS_DETAILS_BACKGROUND_SRC} -->
					<img src="{USERS_DETAILS_BACKGROUND_SRC}"
					alt="{USERS_DETAILS_NICKNAME}"
					class="img-fluid rounded-top details-background" loading="lazy" />
					<!-- ELSE -->
					<img src="{PHP.R.userimg_default_background}"
					alt="{USERS_DETAILS_NICKNAME}"
					class="img-fluid rounded-top details-background" loading="lazy" />
					<!-- ENDIF -->
					
				</div>
				<div data-user-id="{USERS_DETAILS_ID}" class="user-details-header d-flex flex-column flex-sm-row text-sm-start text-center mb-3">
					<div class="flex-shrink-0 mt-n2 mx-sm-0 mx-auto">
						<!-- IF {USERS_DETAILS_AVATAR_SRC} -->
						<img src="{USERS_DETAILS_AVATAR_SRC}"
						alt="{USERS_DETAILS_NICKNAME}"
						class="d-block h-auto ms-0 ms-sm-3 rounded-4 user-details-img"
						width="96"
						height="96" loading="lazy" />
						<!-- ELSE -->
						<img src="{PHP.R.userimg_default_avatar}"
						alt="{USERS_DETAILS_NICKNAME}"
						class="d-block h-auto ms-0 ms-sm-3 rounded-4 user-details-img"
						width="96"
						height="96" />
						<!-- ENDIF -->
					</div>
					<div class="flex-grow-1 mt-3 mt-sm-5">
						<div
						class="d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start mx-3 flex-md-row flex-column gap-4">
							<div class="user-details-info">
								<!-- IF {USERS_DETAILS_FIRSTNAME} -->
								<h4 class="mb-2">
									<!-- IF {USERS_DETAILS_FIRSTNAME} -->{USERS_DETAILS_FIRSTNAME}<!-- ENDIF --> 
									<!-- IF {USERS_DETAILS_LASTNAME} -->{USERS_DETAILS_LASTNAME}<!-- ENDIF -->
								</h4>
								<!-- ELSE -->
								<h4 class="mb-2">
									{USERS_DETAILS_NICKNAME}
								</h4>
								<!-- ENDIF -->
								<ul
								class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-4">
									<li class="list-inline-item">
										<i class="fas fa-palette me-2 icon-24px"></i><span class="fw-medium">UX Designer</span>
									</li>
									<li class="list-inline-item">
										<i class="fas fa-map-pin me-2 icon-24px"></i><span class="fw-medium">Vatican City</span>
									</li>
									<li class="list-inline-item">
										<i class="fas fa-calendar me-2 icon-24px"></i><span class="fw-medium">{PHP.langSkStr.usersJoined} {USERS_DETAILS_REGDATE|cot_date('F Y', $this)}</span>
									</li>
								</ul>
							</div>
							<a href="javascript:void(0)" class="btn btn-primary">
								<i class="fas fa-user-check icon-16px me-2"></i>Connected
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Навигация вкладками (pills) просто подстройте под себя -->
	<ul class="nav nav-pills flex-column flex-sm-row mb-4 gap-2" id="pills-tab" role="tablist">
		<li class="nav-item" role="presentation">
			<button class="nav-link active" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="true">
				<i class="fa-regular fa-user me-1"></i> Profile
			</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="pills-teams-tab" data-bs-toggle="pill" data-bs-target="#pills-teams" type="button" role="tab" aria-controls="pills-teams" aria-selected="false">
				<i class="fa-solid fa-users me-1"></i> Teams
			</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="pills-projects-tab" data-bs-toggle="pill" data-bs-target="#pills-projects" type="button" role="tab" aria-controls="pills-projects" aria-selected="false">
				<i class="fa-solid fa-laptop-code me-1"></i> Projects
			</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="pills-connections-tab" data-bs-toggle="pill" data-bs-target="#pills-connections" type="button" role="tab" aria-controls="pills-connections" aria-selected="false">
				<i class="fa-solid fa-link me-1"></i> Connections
			</button>
		</li>
	</ul>
	
	<!-- Контент вкладок -->
	<div class="tab-content mb-5" id="pills-tabContent">
		
		<div class="tab-pane fade show active" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
			<div class="card">
				<div class="card-body">
					<!-- BEGIN: USERS_DETAILS_ADMIN -->  [ {USERS_DETAILS_ADMIN_EDIT} ]<!-- END: USERS_DETAILS_ADMIN -->
					<div class="table-responsive">
						<table class="cells">
							<!-- IF {PHP|cot_module_active('pm')} -->
							<tr>
								<td>{PHP.L.users_sendpm}:</td>
								<td>{USERS_DETAILS_PM}</td>
							</tr>
							<!-- ENDIF -->
							<tr>
								<td>{PHP.L.Maingroup}:</td>
								<td>{USERS_DETAILS_MAIN_GROUP}</td>
							</tr>
							<tr>
								<td>{PHP.L.Groupsmembership}:</td>
								<td>{PHP.L.Maingroup}:<br/>&nbsp;{PHP.out.img_down}<br/>{USERS_DETAILS_GROUPS}</td>
							</tr>
							<tr>
								<td>{PHP.L.Country}:</td>
								<td>{USERS_DETAILS_COUNTRY_FLAG} {USERS_DETAILS_COUNTRY}</td>
							</tr>
							<tr>
								<td>{PHP.L.Timezone}:</td>
								<td>{USERS_DETAILS_TIMEZONE}</td>
							</tr>
							<tr>
								<td>{PHP.L.Birthdate}:</td>
								<td>{USERS_DETAILS_BIRTHDATE}</td>
							</tr>
							<tr>
								<td>{PHP.L.Age}:</td>
								<td>{USERS_DETAILS_AGE}</td>
							</tr>
							<tr>
								<td>{PHP.L.Gender}:</td>
								<td>{USERS_DETAILS_GENDER}</td>
							</tr>
							<tr>
								<td>{PHP.L.Signature}:</td>
								<td>{USERS_DETAILS_TEXT}</td>
							</tr>
							<tr>
								<td>{PHP.L.Registered}:</td>
								<td>{USERS_DETAILS_REGDATE}</td>
							</tr>
						</table>
					</div>
					<h5>Профиль</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					<div class="row g-3">
						<div class="col-md-6">
							<strong>Поле 1</strong><br>— значение —
						</div>
						<div class="col-md-6">
							<strong>Поле 2</strong><br>— значение —
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="tab-pane fade" id="pills-teams" role="tabpanel" aria-labelledby="pills-teams-tab">
			<div class="card">
				<div class="card-body">
					<h5>Команды</h5>
					<ul class="list-group">
						<li class="list-group-item">Команда A — описание</li>
						<li class="list-group-item">Команда B — описание</li>
						<li class="list-group-item">Команда C — описание</li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="tab-pane fade" id="pills-projects" role="tabpanel" aria-labelledby="pills-projects-tab">
			<div class="card">
				<div class="card-body">
					<h5>Проекты</h5>
					<div class="row g-3">
						<div class="col-md-6">
							<div class="card border-primary h-100">
								<div class="card-body">
									<h6>Проект 1</h6>
									<p class="card-text small">Краткое описание проекта 1</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card border-success h-100">
								<div class="card-body">
									<h6>Проект 2</h6>
									<p class="card-text small">Краткое описание проекта 2</p>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="tab-pane fade" id="pills-connections" role="tabpanel" aria-labelledby="pills-connections-tab">
			<div class="card">
				<div class="card-body">
					<h5>Связи</h5>
					<ul class="list-group">
						<li class="list-group-item">Связь 1 — статус</li>
						<li class="list-group-item">Связь 2 — статус</li>
						<li class="list-group-item">Связь 3 — статус</li>
					</ul>
				</div>
			</div>
		</div>
	</div>	
</div>


<script>
	document.addEventListener("DOMContentLoaded", function () {
		
		const header = document.querySelector(".user-details-header");
		const avatar = document.querySelector(".user-details-header .user-details-img");
		
		if (!header || !avatar) return;
		
		const userId = header.dataset.userId;
		if (!userId) return;
		
		const colors = [
		"#ff8809",
		"#ff5c5c",
		"#e83e8c",
		"#6f42c1",
		"#666cff",
		"#0d6efd",
		"#20c997",
		"#198754",
		"#ffc107",
		"#fd7e14",
		"#6610f2",
		"#343a40"
		];
		
		function hashCode(str) {
			let hash = 0;
			for (let i = 0; i < str.length; i++) {
				hash = str.charCodeAt(i) + ((hash << 5) - hash);
			}
			return hash;
		}
		
		const index = Math.abs(hashCode(userId)) % colors.length;
		avatar.style.borderColor = colors[index];
		
	});
</script>
<!-- END: MAIN -->
