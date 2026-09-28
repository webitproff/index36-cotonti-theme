<!--
	/********************************************************************************
	* File: users.details.tpl
	* Extension: Module 'users'
	* Description: HTML template with DEMO DATA for Users Module - users.details.tpl. 
 	* Compatibility: CMF/CMS Cotonti v.1.0.0.[](https://github.com/Cotonti/Cotonti)
	* Dependencies: 
	* 		 Bootstrap 5.3.+[](https://getbootstrap.com/); 
	* 		 Font Awesome Free 7.3[](https://fontawesome.com/)
	* Theme: Index36  
	* Version=2.0.1 
	* Created: 01 Feb 2026 
	* Updated: 28 Sep 2026  
	* Copyright (c) 2026 webitproff | https://github.com/webitproff
	* Source: https://github.com/webitproff/index36-cotonti-theme
	* Demo : https://freelance-script.abuyfile.com 
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
	
    .timeline-point { width: 12px; height: 12px; border-radius: 50%; display: inline-block; }
    .timeline-event { margin-left: 20px; }
    .avatar-group .avatar { margin-left: -10px; }
    .avatar-initial { background-color: #f0f0f0; color: #333; }
    .card-timeline { position: relative; }
    .card-timeline::before { content: ''; position: absolute; top: 0; bottom: 0; left: 5px; width: 2px; background: #ddd; }
    .timeline-item { position: relative; padding-left: 30px; }
    .timeline-item:not(:last-child) { margin-bottom: 20px; }
    .list-inline-item { display: inline-flex; align-items: center; }
    .icon-24px { font-size: 24px; }
    .icon-22px { font-size: 22px; }
    .icon-16px { font-size: 16px; }
    .icon-sm { font-size: 1rem; }
    .text-body-secondary { color: #6c757d; }
    .fw-medium { font-weight: 500; }
    .rounded-4 { border-radius: 1rem; }
    .gap-4 { gap: 1rem; }
    .gap-6 { gap: 1.5rem; }
    .gap-2 { gap: 0.5rem; }
    .my-3 { margin-top: 1rem; margin-bottom: 1rem; }
    .py-1 { padding-top: 0.25rem; padding-bottom: 0.25rem; }
    .pt-1 { padding-top: 0.25rem; }
    .pt-5 { padding-top: 3rem; }
    .mb-n4 { margin-bottom: -1rem; }
    .row-gap-2 { row-gap: 0.5rem; }
    .hide-arrow { border: none; background: none; }
    /* Colors for timeline points */
    .timeline-point-primary { background-color: #666cff; }
    .timeline-point-success { background-color: #198754; }
    .timeline-point-info { background-color: #0dcaf0; }
    /* Badge labels */
    .bg-label-danger { background-color: rgba(220, 53, 69, 0.1); color: #dc3545; }
    .bg-label-primary { background-color: rgba(13, 110, 253, 0.1); color: #666cff; }
    .bg-label-info { background-color: rgba(13, 202, 240, 0.1); color: #0dcaf0; }
    .bg-label-secondary { background-color: rgba(108, 117, 125, 0.1); color: #6c757d; }
    /* Lighter badge for invoices */
    .bg-lighter { background-color: #f8f9fa; }
	
	
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


<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->
    <div class="container-xxl flex-grow-1 py-4">
		<!-- Header -->
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
		<!--/ Header -->
		<!-- Навигация вкладками (pills) -->
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
		<!-- User Profile Content -->
		<div class="row">
			<div class="col-xl-4 col-lg-5 col-md-5">
				<!-- About User -->
				<div class="card mb-4">
					<div class="card-body">
						<small class="card-text text-uppercase text-body-secondary small">About</small>
						<ul class="list-unstyled my-3 py-1">
							<li class="d-flex align-items-center mb-3">
								<i class="fas fa-user icon-24px"></i><span class="fw-medium mx-2">Full Name:</span> <span>John Doe</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="fas fa-check icon-24px"></i><span class="fw-medium mx-2">Status:</span> <span>Active</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="fas fa-star icon-24px"></i><span class="fw-medium mx-2">Role:</span> <span>Developer</span>
							</li>
							<!-- IF {USERS_DETAILS_COUNTRY} !== '' -->
							<li class="d-flex align-items-center mb-3">
								<i class="fas fa-flag icon-24px"></i><span class="fw-medium mx-2">{PHP.L.Country}:</span> <span class="fw-medium mx-2">{USERS_DETAILS_COUNTRY_FLAG}</span><span> {USERS_DETAILS_COUNTRY}</span>
							</li>
							<!-- ENDIF -->
							
							<!-- IF {USERS_DETAILS_LANG} -->
							<li class="d-flex align-items-center mb-2">
								<i class="fas fa-language icon-24px"></i><span class="fw-medium mx-2">{PHP.L.Language}:</span> <span>{USERS_DETAILS_LANG}</span>
							</li>
							<!-- ENDIF -->
							
						</ul>
						<small class="card-text text-uppercase text-body-secondary small">Contacts</small>
						<ul class="list-unstyled my-3 py-1">
							<li class="d-flex align-items-center mb-3">
								<i class="fas fa-phone icon-24px"></i><span class="fw-medium mx-2">Contact:</span> <span>(123) 456-7890</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="fab fa-skype icon-24px"></i><span class="fw-medium mx-2">Skype:</span> <span>john.doe</span>
							</li>
							<li class="d-flex align-items-center mb-2">
								<i class="fas fa-envelope-open icon-24px"></i><span class="fw-medium mx-2">Email:</span> <span>john.doe@example.com</span>
							</li>
						</ul>
						<small class="card-text text-uppercase text-body-secondary small">Teams</small>
						<ul class="list-unstyled mb-0 mt-3 pt-1">
							<li class="d-flex align-items-center mb-3">
								<i class="fab fa-github icon-24px text-body me-2"></i>
								<div class="d-flex flex-wrap">
									<span class="fw-medium me-2">Backend Developer</span><span>(126 Members)</span>
								</div>
							</li>
							<li class="d-flex align-items-center">
								<i class="fab fa-react icon-24px text-body me-2"></i>
								<div class="d-flex flex-wrap">
									<span class="fw-medium me-2">React Developer</span><span>(98 Members)</span>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!--/ About User -->
				<!-- Profile Overview -->
				<div class="card mb-4">
					<div class="card-body">
						<small class="card-text text-uppercase text-body-secondary small">Overview</small>
						<ul class="list-unstyled mb-0 mt-3 pt-1">
							<li class="d-flex align-items-center mb-3">
								<i class="fas fa-check icon-24px"></i><span class="fw-medium mx-2">Task Compiled:</span> <span>13.5k</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="fas fa-user icon-24px"></i><span class="fw-medium mx-2">Projects Compiled:</span> <span>146</span>
							</li>
							<li class="d-flex align-items-center">
								<i class="fas fa-star icon-24px"></i><span class="fw-medium mx-2">Connections:</span> <span>897</span>
							</li>
						</ul>
					</div>
				</div>
				<!--/ Profile Overview -->
			</div>
			<div class="col-xl-8 col-lg-7 col-md-7">
				<!-- Activity Timeline -->
				<div class="card mb-4">
					<div class="card-header d-flex align-items-center">
						<h5 class="card-title mb-0">
							<i class="fas fa-chart-bar icon-24px text-body me-2"></i>Activity Timeline
						</h5>
					</div>
					<div class="card-body pt-3">
						<ul class="card-timeline mb-0 list-unstyled">
							<li class="timeline-item">
								<span class="timeline-point timeline-point-primary"></span>
								<div class="timeline-event">
									<div class="d-flex justify-content-between mb-2">
										<h6 class="mb-0">12 Invoices have been paid</h6>
										<small class="text-body-secondary">12 min ago</small>
									</div>
									<p class="mb-2">Invoices have been paid to the company</p>
									<div class="d-flex align-items-center">
										<div class="badge bg-lighter rounded-pill">
											<img src="../../assets//img/icons/misc/pdf.png" alt="img" width="20" class="me-2" />
											<span class="h6 mb-0 text-body">invoices.pdf</span>
										</div>
									</div>
								</div>
							</li>
							<li class="timeline-item">
								<span class="timeline-point timeline-point-success"></span>
								<div class="timeline-event">
									<div class="d-flex justify-content-between mb-2">
										<h6 class="mb-0">Client Meeting</h6>
										<small class="text-body-secondary">45 min ago</small>
									</div>
									<p class="mb-2">Project meeting with john @10:15am</p>
									<div class="d-flex justify-content-between flex-wrap gap-2">
										<div class="d-flex flex-wrap align-items-center">
											<div class="avatar avatar-sm me-2">
												<img src="{PHP.R.userimg_default_avatar}" width="36" height="36" alt="Avatar" class="rounded-circle" />
											</div>
											<div>
												<p class="mb-0 small fw-medium">Lester McCarthy (Client)</p>
												<small>CEO of Pixinvent</small>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li class="timeline-item">
								<span class="timeline-point timeline-point-info"></span>
								<div class="timeline-event">
									<div class="d-flex justify-content-between mb-2">
										<h6 class="mb-0">Create a new project for client</h6>
										<small class="text-body-secondary">2 Day Ago</small>
									</div>
									<p class="mb-2">6 team members in a project</p>
									<ul class="list-group list-group-flush">
										<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap p-0">
											<div class="d-flex flex-wrap align-items-center">
												<ul class="list-unstyled d-flex align-items-center avatar-group m-0 me-2">
													<li
													data-bs-toggle="tooltip"
													data-bs-placement="top"
													title="Vinnie Mostowy"
													class="avatar">
														<img class="rounded-circle" width="36" height="36" src="{PHP.R.userimg_default_avatar}" alt="Avatar" />
													</li>
													<li
													data-bs-toggle="tooltip"
													data-bs-placement="top"
													title="Allen Rieske"
													class="avatar">
														<img class="rounded-circle"  width="36" height="36" src="{PHP.R.userimg_default_avatar}" alt="Avatar" />
													</li>
													<li
													data-bs-toggle="tooltip"
													data-bs-placement="top"
													title="Julee Rossignol"
													class="avatar">
														<img class="rounded-circle"  width="36" height="36" src="{PHP.R.userimg_default_avatar}" alt="Avatar" />
													</li>
													<li class="avatar">
														<span
														class="avatar-initial rounded-circle text-body"
														data-bs-toggle="tooltip"
														data-bs-placement="bottom"
														title="3 more"
														>+3</span
														>
													</li>
												</ul>
											</div>
										</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!--/ Activity Timeline -->
				<div class="row">
					<!-- Connections -->
					<div class="col-lg-12 col-xl-6">
						<div class="card mb-4">
							<div class="card-header d-flex align-items-center justify-content-between">
								<h5 class="card-title mb-0">Connections</h5>
								<div class="dropdown">
									<button
									type="button"
									class="btn dropdown-toggle hide-arrow p-0"
									data-bs-toggle="dropdown"
									aria-expanded="false">
										<i class="fas fa-ellipsis icon-22px text-body-secondary"></i>
									</button>
									<ul class="dropdown-menu dropdown-menu-end">
										<li><a class="dropdown-item" href="javascript:void(0);">Share connections</a></li>
										<li><a class="dropdown-item" href="javascript:void(0);">Suggest edits</a></li>
										<li><hr class="dropdown-divider" /></li>
										<li><a class="dropdown-item" href="javascript:void(0);">Report bug</a></li>
									</ul>
								</div>
							</div>
							<div class="card-body">
								<ul class="list-unstyled mb-0">
									<li class="mb-3">
										<div class="d-flex align-items-center">
											<div class="d-flex align-items-center">
												<div class="avatar me-2">
													<img src="{PHP.R.userimg_default_avatar}"  width="36" height="36" alt="Avatar" class="rounded-circle" />
												</div>
												<div class="me-2">
													<h6 class="mb-1">Cecilia Payne</h6>
													<small>45 Connections</small>
												</div>
											</div>
											<div class="ms-auto">
												<button class="btn btn-outline-primary btn-icon">
													<i class="fas fa-user-plus icon-22px"></i>
												</button>
											</div>
										</div>
									</li>
									<li class="mb-3">
										<div class="d-flex align-items-center">
											<div class="d-flex align-items-center">
												<div class="avatar me-2">
													<img src="{PHP.R.userimg_default_avatar}"  width="36" height="36" alt="Avatar" class="rounded-circle" />
												</div>
												<div class="me-2">
													<h6 class="mb-1">Curtis Fletcher</h6>
													<small>1.32k Connections</small>
												</div>
											</div>
											<div class="ms-auto">
												<button class="btn btn-primary btn-icon">
													<i class="fas fa-user icon-22px"></i>
												</button>
											</div>
										</div>
									</li>
									<li class="mb-3">
										<div class="d-flex align-items-center">
											<div class="d-flex align-items-center">
												<div class="avatar me-2">
													<img src="{PHP.R.userimg_default_avatar}"  width="36" height="36" alt="Avatar" class="rounded-circle" />
												</div>
												<div class="me-2">
													<h6 class="mb-1">Alice Stone</h6>
													<small>125 Connections</small>
												</div>
											</div>
											<div class="ms-auto">
												<button class="btn btn-primary btn-icon">
													<i class="fas fa-user icon-22px"></i>
												</button>
											</div>
										</div>
									</li>
									<li class="mb-3">
										<div class="d-flex align-items-center">
											<div class="d-flex align-items-center">
												<div class="avatar me-2">
													<img src="{PHP.R.userimg_default_avatar}"  width="36" height="36" alt="Avatar" class="rounded-circle" />
												</div>
												<div class="me-2">
													<h6 class="mb-1">Darrell Barnes</h6>
													<small>456 Connections</small>
												</div>
											</div>
											<div class="ms-auto">
												<button class="btn btn-outline-primary btn-icon">
													<i class="fas fa-user-plus icon-22px"></i>
												</button>
											</div>
										</div>
									</li>
									<li class="mb-4">
										<div class="d-flex align-items-center">
											<div class="d-flex align-items-center">
												<div class="avatar me-2">
													<img src="{PHP.R.userimg_default_avatar}"  width="36" height="36" alt="Avatar" class="rounded-circle" />
												</div>
												<div class="me-2">
													<h6 class="mb-1">Eugenia Moore</h6>
													<small>1.2k Connections</small>
												</div>
											</div>
											<div class="ms-auto">
												<button class="btn btn-outline-primary btn-icon">
													<i class="fas fa-user-plus icon-22px"></i>
												</button>
											</div>
										</div>
									</li>
									<li class="text-center">
										<a href="javascript:;">View all connections</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!--/ Connections -->
					<!-- Teams -->
					<div class="col-lg-12 col-xl-6">
						<div class="card mb-4">
							<div class="card-header d-flex align-items-center justify-content-between">
								<h5 class="card-title mb-0">Teams</h5>
								<div class="dropdown">
									<button
									type="button"
									class="btn dropdown-toggle hide-arrow p-0"
									data-bs-toggle="dropdown"
									aria-expanded="false">
										<i class="fas fa-ellipsis icon-22px text-body-secondary"></i>
									</button>
									<ul class="dropdown-menu dropdown-menu-end">
										<li><a class="dropdown-item" href="javascript:void(0);">Share teams</a></li>
										<li><a class="dropdown-item" href="javascript:void(0);">Suggest edits</a></li>
										<li><hr class="dropdown-divider" /></li>
										<li><a class="dropdown-item" href="javascript:void(0);">Report bug</a></li>
									</ul>
								</div>
							</div>
							<div class="card-body">
								<ul class="list-unstyled mb-0">
									<li class="mb-3">
										<div class="d-flex align-items-center">
											<div class="d-flex align-items-center">
												<div class="avatar me-2">
													<img
													src="{PHP.R.userimg_default_avatar}"
													alt="Avatar"
													class="rounded-circle"  width="36" height="36" />
												</div>
												<div class="me-2">
													<h6 class="mb-1">React Developers</h6>
													<small>72 Members</small>
												</div>
											</div>
											<div class="ms-auto">
												<a href="javascript:;"><span class="badge bg-label-danger rounded-pill">Developer</span></a>
											</div>
										</div>
									</li>
									<li class="mb-3">
										<div class="d-flex align-items-center">
											<div class="d-flex align-items-center">
												<div class="avatar me-2">
													<img
													src="{PHP.R.userimg_default_avatar}"
													alt="Avatar"
													class="rounded-circle"  width="36" height="36" />
												</div>
												<div class="me-2">
													<h6 class="mb-1">Support Team</h6>
													<small>122 Members</small>
												</div>
											</div>
											<div class="ms-auto">
												<a href="javascript:;"><span class="badge bg-label-primary rounded-pill">Support</span></a>
											</div>
										</div>
									</li>
									<li class="mb-3">
										<div class="d-flex align-items-center">
											<div class="d-flex align-items-center">
												<div class="avatar me-2">
													<img
													src="{PHP.R.userimg_default_avatar}"
													alt="Avatar"
													class="rounded-circle"  width="36" height="36" />
												</div>
												<div class="me-2">
													<h6 class="mb-1">UI Designers</h6>
													<small>7 Members</small>
												</div>
											</div>
											<div class="ms-auto">
												<a href="javascript:;"><span class="badge bg-label-info rounded-pill">Designer</span></a>
											</div>
										</div>
									</li>
									<li class="mb-3">
										<div class="d-flex align-items-center">
											<div class="d-flex align-items-center">
												<div class="avatar me-2">
													<img
													src="{PHP.R.userimg_default_avatar}"
													alt="Avatar"
													class="rounded-circle"  width="36" height="36" />
												</div>
												<div class="me-2">
													<h6 class="mb-1">Vue.js Developers</h6>
													<small>289 Members</small>
												</div>
											</div>
											<div class="ms-auto">
												<a href="javascript:;"><span class="badge bg-label-danger rounded-pill">Developer</span></a>
											</div>
										</div>
									</li>
									<li class="mb-4">
										<div class="d-flex align-items-center">
											<div class="d-flex align-items-center">
												<div class="avatar me-2">
													<img
													src="../../assets/img/icons/brands/twitter-label.png"
													alt="Avatar"
													class="rounded-circle"  width="36" height="36" />
												</div>
												<div class="me-2">
													<h6 class="mb-1">Digital Marketing</h6>
													<small>24 Members</small>
												</div>
											</div>
											<div class="ms-auto">
												<a href="javascript:;"><span class="badge bg-label-secondary rounded-pill">Marketing</span></a>
											</div>
										</div>
									</li>
									<li class="text-center">
										<a href="javascript:;">View all teams</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					
				</div>
				
				<div class="card mb-4">
					<div class="table-responsive pb-0 mb-n4">
						<table class="table table-border-bottom-0">
							<thead>
								<tr>
									<th></th>
									<th></th>
									<th>Project</th>
									<th>leader</th>
									<th>teams</th>
									<th>Progress</th>
									<th>Actions</th>
								</tr>
							</thead>
						</table>
					</div>
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
		
		// 12 цветов
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
		
		// Генерируем число на основе userId
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
