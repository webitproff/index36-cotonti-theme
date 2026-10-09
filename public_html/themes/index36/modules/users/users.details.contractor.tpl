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
	* Version=2.1.1 
	* Created: 01 Feb 2026 
	* Updated: 09 Oct 2026  
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

<div class="border-bottom border-secondary py-3 px-3">
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a>
			</li>
			<li class="breadcrumb-item">
				<a href="{PHP.cot_groups.4.alias|cot_url('users', 'group=$this')}">
					{PHP.cot_groups.4.name}
				</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page">
				<!-- IF {USERS_DETAILS_FULL_NAME} -->{USERS_DETAILS_FULL_NAME}
				<!-- ELSE -->[{USERS_DETAILS_NICKNAME}]
				<!-- ENDIF -->
			</li>
		</ol>
	</nav>
</div>

<div class="container-fluid px-3 px-lg-5 py-5">
	
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
										<i class="fas fa-calendar me-2 icon-24px"></i><span class="fw-medium">{PHP.L.langSkStr_usersJoined} {USERS_DETAILS_REGDATE_STAMP|cot_date('F Y', $this)}</span>
									</li>
								</ul>
							</div>
							<!-- IF {MARKET_VENDOR_SHOWCASE_URL} -->
							<a href="{MARKET_VENDOR_SHOWCASE_URL}" class="btn btn-success ms-auto">
								{PHP.L.market_owner_vendor_link}
							</a>
							<!-- ENDIF -->
							<!-- IF {PHP|cot_module_active('pm')} -->
							
							<!-- IF {PHP.usr.id} > 0 AND {PHP.usr.id} != {USERS_DETAILS_ID} -->
							<a class="btn btn-primary" href="{USERS_DETAILS_ID|cot_url('pm','m=send&to=$this', '', 1)}">
								<span class="mb-3 me-1"><i class="fa-solid fa-paper-plane fa-xl"></i></span>
								<span class="fw-medium mb-2">{PHP.L.users_sendpm}</span>
							</a>
							<!-- ENDIF -->
							
							<!-- IF {PHP.usr.id} == '0' -->
							<button class="btn btn-outline-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#guestOffCanvas" aria-controls="guestOffCanvas" title="{PHP.L.users_sendpm}">
								<span class="mb-3 me-1"><i class="fa-solid fa-paper-plane fa-xl"></i></span>
								<span class="fw-medium mb-2">{PHP.L.users_sendpm}</span>
							</button>
							<!-- ENDIF -->
							
							<!-- ENDIF -->	
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
			<button class="nav-link <!-- IF {PHP.tab} == '' -->active<!-- ENDIF -->" 
			id="pills-profile-tab" 
			data-bs-toggle="pill" 
			data-bs-target="#pills-profile" 
			type="button" 
			role="tab" 
			aria-controls="pills-profile" 
			aria-selected="<!-- IF {PHP.tab} == '' -->true<!-- ELSE -->false<!-- ENDIF -->">
				<i class="fa-regular fa-user me-1"></i> {PHP.L.users_myProfile}
			</button>
		</li>
		<!-- IF {PHP|cot_module_active('market')} -->
		<li class="nav-item" role="presentation">
			<button class="nav-link <!-- IF {PHP.tab} == 'market' -->active<!-- ENDIF -->" 
			id="pills-market-tab" 
			data-bs-toggle="pill" 
			data-bs-target="#pills-market" 
			type="button" 
			role="tab" 
			aria-controls="pills-market" 
			aria-selected="<!-- IF {PHP.tab} == 'market' -->true<!-- ELSE -->false<!-- ENDIF -->">
				<i class="fa-solid fa-users me-1"></i> {PHP.L.market_users_products} {USERS_DETAILS_MARKET_COUNT}
			</button>
		</li>
		<!-- ENDIF -->
		
	</ul>
	
	<!-- Контент вкладок -->
	<div class="tab-content mb-5" id="pills-tabContent">
		<!-- Profile -->
		<div class="tab-pane fade <!-- IF {PHP.tab} == '' -->show active<!-- ENDIF -->" 
		id="pills-profile" 
		role="tabpanel" 
		aria-labelledby="pills-profile-tab">
			
			<div class="card">
				<div class="card-body">
					<!-- BEGIN: USERS_DETAILS_ADMIN -->  [ {USERS_DETAILS_ADMIN_EDIT} ]<!-- END: USERS_DETAILS_ADMIN -->
					<!-- IF {PHP.usr.maingrp} == 5 -->
					
					<!-- ENDIF -->					
					
					<!-- IF {PHP|cot_plugin_active('xtradbrowusers')} -->
					
					<!-- О себе -->
					<!-- IF {USERS_DETAILS_XTRA_X020_ABOUT_VENDOR_TEXT} -->
					<div class="d-flex mb-3">
						<div class="contact-icon about me-3">
							<i class="fa-solid fa-circle-info fa-xl"></i>
						</div>
						<div>
							<div class="contact-label">{USERS_DETAILS_XTRA_X020_ABOUT_VENDOR_TEXT_TITLE}</div>
							<div class="contact-value">{USERS_DETAILS_XTRA_X020_ABOUT_VENDOR_TEXT}</div>
						</div>
					</div>
					<!-- ENDIF -->
					
					<!-- Телефон -->
					<!-- IF {USERS_DETAILS_XTRA_X010_PHONE_VENDOR_ORDERS} -->
					<!-- IF {PHP.usr.maingrp} == 5 -->
					<!-- 
						создать поле 
						x010_phone_vendor_orders
						через плагин 'xtradbrowusers'
					-->
					<!-- ENDIF -->
					<div class="d-flex align-items-center mb-3">
						<div class="contact-icon phone me-3">
							<i class="fa-solid fa-phone fa-xl"></i>
						</div>
						<div>
							<div class="contact-label">{USERS_DETAILS_XTRA_X010_PHONE_VENDOR_ORDERS_TITLE}</div>
							<div class="d-flex align-items-center">
								<span id="phone-{USERS_DETAILS_ID}" class="contact-value fs-3" style="letter-spacing:2px"></span>
								<button type="button" class="btn btn-outline-primary btn-sm ms-2"
								id="show-phone-btn-{USERS_DETAILS_ID}"
								data-phone="{USERS_DETAILS_XTRA_X010_PHONE_VENDOR_ORDERS}"
								onclick="document.getElementById('phone-{USERS_DETAILS_ID}').textContent = this.dataset.phone; this.style.display='none';">
									<i class="fa-solid fa-eye me-1"></i> {PHP.L.xtradbrowusers_details_tpl_show_hidden_content}
								</button>
							</div>
						</div>
					</div>
					<!-- ENDIF -->
					
					<!-- Telegram -->
					<!-- IF {USERS_DETAILS_XTRA_X011_TG_VENDOR_ORDERS} -->
					<div class="d-flex align-items-center mb-3">
						<div class="contact-icon telegram me-3">
							<i class="fa-brands fa-telegram fa-xl"></i>
						</div>
						<div>
							<div class="contact-label">{USERS_DETAILS_XTRA_X011_TG_VENDOR_ORDERS_TITLE}</div>
							<a href="https://t.me/{USERS_DETAILS_XTRA_X011_TG_VENDOR_ORDERS}" target="_blank" rel="noopener noreferrer" class="telegram-link">
								@{USERS_DETAILS_XTRA_X011_TG_VENDOR_ORDERS}
							</a>
						</div>
					</div>
					<!-- ENDIF -->
					<!-- IF {USERS_DETAILS_XTRA_X012_TG_CHANEL_VENDOR} -->
					<div class="d-flex align-items-center mb-3">
						<div class="contact-icon telegram me-3">
							<i class="fa-brands fa-telegram fa-xl"></i>
						</div>
						<div>
							<div class="contact-label">{USERS_DETAILS_XTRA_X012_TG_CHANEL_VENDOR_TITLE}</div>
							<a href="https://t.me/{USERS_DETAILS_XTRA_X012_TG_CHANEL_VENDOR}" target="_blank" rel="noopener noreferrer" class="telegram-link">
								@{USERS_DETAILS_XTRA_X012_TG_CHANEL_VENDOR}
							</a>
						</div>
					</div>
					<!-- ENDIF -->					
					<!-- ENDIF -->
					
					
					
				</div>
			</div>
		</div>
		
		<!-- Market -->
		<!-- IF {PHP|cot_module_active('market')} -->
		<div class="tab-pane fade <!-- IF {PHP.tab} == 'market' -->show active<!-- ENDIF -->" 
		id="pills-market" 
		role="tabpanel" 
		aria-labelledby="pills-market-tab">
		<!-- IF {PHP.usr.maingrp} == 5 -->
		<!-- market.userdetails.tpl -->
		<!-- ENDIF -->	
			{MARKET}
		</div>
		<!-- ENDIF -->	
	</div>
	
	<!-- IF {PHP|function_exists('cot_debug_tpl_url')} AND {PHP.usr.maingrp} == 5 -->
	<div class="alert alert-warning mt-4">
		<p> {PHP.L.langSkStr_debug_tpl_note_1} <code>system/functions.custom.php</code></p> 
		<p> {PHP.L.langSkStr_debug_tpl_note_2} </p> 
		<p> {PHP.L.langSkStr_debug_tpl_note_3} </p> 
		<div class="text-danger fw-semibold">{PHP|cot_debug_tpl_url()}</div>
	</div>
	<!-- ENDIF -->	
	
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
