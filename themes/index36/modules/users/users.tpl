
<!--
	/********************************************************************************
	* File: users.tpl
	* Extension: Module 'users'
	* Description: HTML template for users Module - users.tpl is a List of users on your site.
	* Compatibility: CMF/CMS Cotonti Siena v0.9.26[](https://github.com/Cotonti/Cotonti)
	* Dependencies: 
	* 		 Bootstrap 5.3.+[](https://getbootstrap.com/); 
	* 		 Font Awesome Free 7.1[](https://fontawesome.com/)
	* Theme: Index36  
	* Version: 1.0.2 
	* Created: 01 Feb 2026 
	* Updated: 18 Feb 2026 
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
			{USERS_BREADCRUMBS}
		</ol>
	</nav>
</div>

<div class="container py-5">
	<h2 class="fs-4 mb-4">{PHP.L.Filters}</h2>
	
	<!-- IF {USERS_ACTIVE_FILTERS} -->
	<div class="alert alert-secondary"> 
		{USERS_ACTIVE_FILTERS}
	</div>
	<!-- ENDIF -->
	
	<div class="card border-0 shadow-sm mb-5 p-4">
		<form id="filter-form" action="{USERS_FILTERS_ACTION}" method="GET">
			{USERS_FILTERS_PARAMS}	
			<div class="col-12">
				<label class="form-label">{PHP.L.Filter_search}:</label>
				<div class="row">
					<div class="col-md-4 mb-3">{USERS_FILTERS_COUNTRY}</div>
					<div class="col-md-4 mb-3"> {USERS_FILTERS_MAIN_GROUP}</div>
					<div class="col-md-4 mb-3">{USERS_FILTERS_GROUP}</div>
				</div>
			</div>
			<div class="col-12 mb-3">
				<div class="row">
					<div class="col-md-5  mb-3">
						<label class="form-label">{PHP.L.Username_search}:</label>
						{USERS_FILTERS_SEARCH}
					</div>
					<div class="col-md-7 mb-3">
						<label class="form-label">{PHP.L.OrderBy}:</label>
						<div class="d-flex gap-2">
							{USERS_FILTERS_SORT}
							{USERS_FILTERS_SORT_WAY}
						</div>
					</div>
				</div>
			</div>
			<div class="col-12">
				<div class="row">
					<div class="col-md-6 col-12 text-center mb-3">
						<button type="submit" class="w-100 w-md-auto btn btn-outline-primary">{PHP.L.Search}</button>
					</div>
					<div class="col-md-6 col-12 text-center mb-3">
						<a class="btn btn-outline-danger w-100 " href="{PHP|cot_url('users')}">{PHP.L.Reset}</a>
					</div>
				</div>
			</div>
		</form>
	</div>
	<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
		<!-- BEGIN: USERS_ROW -->
		<div class="col">
			<div class="card h-100 shadow-sm border-0 user-card {USERS_ROW_ODDEVEN}">
				<div class="card-body d-flex flex-column">
					<div class="dropdown ms-auto">
						<button class="btn btn-sm btn-link text-muted p-0" type="button" data-bs-toggle="dropdown">
							<i class="fas fa-ellipsis-v fa-lg"></i>
						</button>
						<ul class="dropdown-menu dropdown-menu-end">
							<!-- IF {PHP.usr.id} AND {PHP.usr.id|cot_auth('users', 'a', 'A')} -->
							<li><a class="dropdown-item" href="{USERS_ROW_ID|cot_url('users','m=edit&id=$this')}"><i class="fa-solid fa-edit me-2"></i>{PHP.L.Edit}</a></li>
							<li><hr class="dropdown-divider"></li>
							<!-- ENDIF -->
							<li><span class="dropdown-item badge bg-primary-subtle text-primary px-2 py-1 me-1">{USERS_ROW_REGDATE}</span></li>
							<li><span class="dropdown-item badge bg-danger-subtle text-danger px-2 py-1 me-1">{USERS_ROW_LASTLOG}</span></li>
							<li><hr class="dropdown-divider"></li>
							<li><span class="dropdown-item badge bg-warning-subtle text-warning-emphasis px-2 py-1 me-1">{USERS_ROW_TIMEZONE}</span></li>
							<li><span class="dropdown-item badge bg-success-subtle text-warning-emphasis px-2 py-1 me-1">{USERS_ROW_LANG}</span></li>
						</ul>
					</div>
					
					<div class="text-center" data-user-id="{USERS_ROW_ID}">
						<div class="avatar-wrapper avatar-circle mx-auto mb-2">
							<!-- IF {PHP|cot_plugin_active('userimages')} -->
							<!-- IF {USERS_ROW_AVATAR_SRC} -->
							<img src="{USERS_ROW_AVATAR_SRC}" alt="{USERS_ROW_NICKNAME}" loading="lazy">
							<!-- ELSE -->
							<img src="{PHP.R.userimg_default_avatar}" alt="{USERS_ROW_NICKNAME}" loading="lazy">
							<!-- ENDIF -->
							<!-- ENDIF -->
						</div>
						<!-- IF {USERS_ROW_FIRSTNAME} -->
						<h5 class="card-title mb-1">{USERS_ROW_FULL_NAME}</h5>
						<!-- ENDIF -->
						<!-- IF {USERS_ROW_NAME} -->
						<p class="text-muted mb-2">{USERS_ROW_NAME}</p>
						<!-- ENDIF -->
						<p class="text-muted">Backend Developer ({USERS_ROW_MAIN_GROUP_NAME})</p>
					</div>
					
					
					
					<div class="text-center mb-2">
						<span class="badge bg-primary-subtle text-primary px-2 py-1 me-1">PHP</span>
						<span class="badge bg-warning-subtle text-warning-emphasis px-2 py-1 me-1">HTML</span>
						<span class="badge bg-success-subtle text-success px-2 py-1 me-1">JavaScript</span>
					</div>
					<div class="row text-center mb-3">
						<div class="col-6 ">
							<span class="badge bg-primary rounded-pill px-3 py-2 fs-6 shadow"
							title="{PHP.langSkStr.usersLogCount}" 
							data-bs-toggle="tooltip" 
							data-bs-title="{PHP.langSkStr.usersLogCount}">
								<i class="fa-solid fa-thumbs-up"></i>
								{USERS_ROW_LOGCOUNT}
							</span>
						</div>
						<div class="col-6">
							<span class="badge bg-primary rounded-pill px-3 py-2 fs-6 shadow"
							title="{PHP.langSkStr.usersPostCount}" 
							data-bs-toggle="tooltip" 
							data-bs-title="{PHP.langSkStr.usersPostCount}">
								<i class="fa-solid fa-comment-dots"></i>
								{USERS_ROW_POSTCOUNT}
							</span>
						</div>
					</div>
					<div class="d-flex gap-2 justify-content-center mt-auto">
						<a href="{USERS_ROW_DETAILS_URL}" class="btn btn-outline-primary btn-sm flex-fill">
							<i class="fa-solid fa-id-card fa-lg me-2"></i>{PHP.langSkStr.usersProfile}
						</a>
						<!-- IF {PHP.usr.id} == 0 -->
						<a class="btn btn-outline-secondary btn-sm flex-fill" data-bs-toggle="modal" data-bs-target="#authModal">
							<i class="fa-solid fa-comment-dots fa-lg me-2"></i>{PHP.langSkStr.usersSendPM}
						</a>
						<!-- ENDIF -->
						<!-- IF {PHP|cot_module_active('pm')} -->
						<!-- IF {PHP.usr.id} AND {PHP.usr.id} !== {USERS_ROW_ID} -->
						<a href="{PHP|cot_url('pm', 'm=send&to={USERS_ROW_ID}')}" class="btn btn-outline-success btn-sm flex-fill">
							<i class="fa-solid fa-comment-dots fa-lg me-2"></i>{PHP.langSkStr.usersSendPM}
						</a>
						<!-- ENDIF -->
						<!-- ENDIF -->
					</div>
				</div>
			</div>
		</div>
		<!-- END: USERS_ROW -->
	</div>
	<!-- IF {PAGINATION} -->
	<div class="col-12">
		<nav aria-label="Page Pagination" class="mt-3">
			<div class="text-center mb-2">{PHP.L.users_usersperpage}: {ENTRIES_PER_PAGE} | {PHP.L.users_usersinthissection}: {TOTAL_ENTRIES}</div>
			<ul class="pagination pagination-sm justify-content-center">
				{PAGINATION}
			</ul>
		</nav>
	</div>
	<!-- ENDIF -->
</div>


<style>
	
	/* ===============================
	USER CARD
	================================= */
	
	.user-card {
	position: relative;
	border-radius: 20px;
	transition: all 0.25s ease;
	overflow: hidden;
	}
	
	.user-card .card-body {
	padding: 1.75rem 1.5rem;
	}
	
	.user-card:hover {
	transform: translateY(-6px);
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.08);
	}
	
	/* ===============================
	AVATAR WRAPPER
	================================= */
	
	.avatar-wrapper {
	width: 120px;
	height: 120px;
	position: relative;
	display: flex;
	align-items: center;
	justify-content: center;
	}
	
	.avatar-wrapper img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	transition: transform 0.3s ease;
	}
	
	.user-card:hover .avatar-wrapper img {
	transform: scale(1.07);
	}
	
/* ===============================
	AVATAR. DO NOT TOUCH !!!
================================= */
	
.avatar-circle img {
	border-radius: 50%;
	border: 5px solid;
	box-sizing: border-box;
}
	
	/* ===============================
	TYPOGRAPHY
	================================= */
	
	.user-card h5 {
	font-weight: 600;
	margin-bottom: 0.25rem;
	}
	
	.user-card p {
	font-size: 0.85rem;
	color: #6c757d;
	}
	
	/* ===============================
	BADGES
	================================= */
	
	.user-card .badge {
	font-weight: 500;
	padding: 0.45em 0.75em;
	border-radius: 50px;
	}
	
	/* ===============================
	BUTTONS
	================================= */
	
	.user-card .btn {
	border-radius: 10px;
	font-weight: 500;
	transition: all 0.2s ease;
	}
	
	.user-card .btn-primary:hover {
	transform: translateY(-2px);
	}
	
	.user-card .btn-outline-secondary:hover {
	background-color: #6c757d;
	color: #fff;
	}
	
	/* ===============================
	DROPDOWN BUTTON
	================================= */
	
	.user-card .dropdown .btn {
	width: 34px;
	height: 34px;
	padding: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	}
	
	/* ===============================
	GRID ADJUSTMENTS
	================================= */
	
	@media (max-width: 575px) {
	.avatar-wrapper {
	width: 100px;
	height: 100px;
	}
	}
	
	@media (min-width: 1400px) {
	.avatar-wrapper {
	width: 130px;
	height: 130px;
	}
	}
	
	/* ===============================
	DARK MODE
	================================= */
	
	
	
	
	[data-bs-theme="dark"] .user-card:hover {
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.6);
	}
	
	[data-bs-theme="dark"] .user-card p {
	color: #adb5bd;
	}
	
	[data-bs-theme="dark"] .btn-outline-secondary {
	border-color: #495057;
	color: #adb5bd;
	}
	
	[data-bs-theme="dark"] .btn-outline-secondary:hover {
	background-color: #495057;
	color: #ffffff;
	}
	
	[data-bs-theme="dark"] .badge {
	opacity: 0.9;
	}
	
	/* ===============================
	SMOOTH TRANSITIONS
	================================= */
	
	.card,
	.btn,
	.dropdown-menu {
	transition: all 0.2s ease-in-out;
	}
	
</style>
<script>
	document.addEventListener("DOMContentLoaded", function () {
		const avatars = document.querySelectorAll(".avatar-circle img");
		if (avatars.length === 0) return;
		
		const colors = [
		"#ff8809", // Темно-оранжевый
		"#ff5c5c", // Светлый коралл
		"#e83e8c", // Ярко-розовый
		"#6f42c1", // Фиолетовый
		"#666cff", // Средний синий
		"#0d6efd", // Синий (Доджер)
		"#20c997", // Средний бирюзовый
		"#198754", // Зеленый
		"#ffc107", // Янтарный
		"#fd7e14", // Оранжевый
		"#6610f2", // Темно-фиолетовый
		"#343a40", // Угольный
		"#ff1493", // Ярко-розовый (светлый)
		"#32cd32", // Лаймовый зеленый
		"#ff6347", // Помидорный
		"#00bfff", // Ярко-голубой
		"#7b68ee", // Средний сланцевый синий
		"#d2691e", // Шоколадный
		"#8a2be2", // Синий фиолетовый
		"#98fb98", // Бледно-зеленый
		"#ff4500", // Оранжево-красный
		"#2e8b57", // Морской зеленый
		"#ff5722", // orange red
		"#ba55d3", // Средний орхидейный
		"#ff00ff", // Фуксия
		"#ffff00", // Желтый
		"#4b0082", // Индиго
		"#ffd700"  // Золотой
		];
		
		function getColorForUser(userId) {
			let hash = 0;
			for (let i = 0; i < userId.length; i++) {
				hash = userId.charCodeAt(i) + ((hash << 5) - hash);
			}
			const index = Math.abs(hash) % colors.length;
			return colors[index];
		}
		
		avatars.forEach(avatar => {
			const container = avatar.closest("[data-user-id]");
			if (!container) return;
			
			const userId = container.getAttribute("data-user-id");
			const color = getColorForUser(userId);
			
			avatar.style.borderColor = color;
		});
	});
</script>

<!-- END: MAIN -->
