<!--
	/********************************************************************************
	* File: index.tpl
	* Extension: Module 'index'
	* Description: HTML template for Index Module .
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
<div class="container-fluid py-4">
	<div class="position-relative text-center py-5">
		<div class="position-absolute top-0 end-0 d-none d-lg-block pe-4 mt-n4">
			<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/help.svg" class="img-fluid" style="max-width:260px" alt="">
		</div>
		
		<h2 class="mt-4 fs-4 fw-medium text-secondary">{PHP.langSkStr.indexWeCanHelp}</h2>
		
		<!-- IF {PHP|cot_plugin_active('search')} -->	
		<div class="card mx-auto border-0 shadow-sm rounded-5 p-2 mt-4" style="max-width:420px">
			<form id="search" action="{PHP|cot_url('search')}" method="GET" class="w-100 d-flex">
				<div class="input-group input-group-lg">
					<!-- Hidden input required for URL editor compatibility -->
					<!-- IF {PHP.cfg.plugin.urleditor.preset} !== 'handy' -->
					<input type="hidden" name="e" value="search" />
					<!-- ENDIF -->
					<input type="text" name="sq" class="rounded-start-5 form-control" placeholder="{PHP.L.Search}..." />
					<button type="submit" class="btn btn-primary rounded-end-5 " title="{PHP.L.Search}">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</div>
			</form>	
		</div>
		<!-- ENDIF -->
		<div class="mt-3 d-flex flex-wrap justify-content-center align-items-center gap-2">
			<span class="text-muted me-2">{PHP.langSkStr.indexPopularSearched}:</span>
			<span class="badge rounded-pill bg-info bg-opacity-10 text-info">{PHP.langSkStr.blank_temporary_example}</span>
			<span class="badge rounded-pill bg-danger bg-opacity-10 text-danger">Developers</span>
			<span class="badge rounded-pill bg-primary bg-opacity-10 text-primary">Repair</span>
			<span class="badge rounded-pill bg-success bg-opacity-10 text-success">Billing</span>
			<span class="badge rounded-pill bg-warning bg-opacity-10 text-warning">Cotonti</span>
		</div>
	</div>
</div>	
<div class="container-xl py-4">
	<!-- Content -->
	<div class="mt-5 d-flex flex-column">
		
		<!-- Getting Started -->
		<div class="row align-items-center">
			<div class="col-lg-6 text-center">
				<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/rocket.svg" class="img-fluid" style="max-width:280px" alt="">
			</div>
			<div class="col-lg-6">
				
				<h4 class="fw-medium mb-3">{PHP.langSkStr.indexGetStart}</h4>
				<div class="card mx-auto border-0 shadow-sm rounded-3 p-2 mb-3">
					<div class="accordion border rounded" id="accStart">
						<!-- Item 1 -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button bg-primary text-white shadow-none" data-bs-toggle="collapse" data-bs-target="#gs1">
									{PHP.langSkStr.indexGtStQ1}
								</button>
							</h2>
							<div id="gs1" class="accordion-collapse collapse show" data-bs-parent="#accStart">
								<div class="accordion-body" style="background-color: var(--card-bg);">
									<i class="fa-solid fa-smile fa-2xl text-info-emphasis m-3"></i>
									{PHP.langSkStr.indexGtStA1}
									<div class="d-flex gap-2">
										<span class="badge rounded-pill border border-primary text-primary">Tag 1</span>
										<span class="badge rounded-pill border border-primary text-primary">Tag 2</span>
									</div>
								</div>
							</div>
						</div>
						
						<!-- Item 2 -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed bg-primary-subtle text-primary-emphasis shadow-none" data-bs-toggle="collapse" data-bs-target="#gs2">
									{PHP.langSkStr.indexGtStQ2}
								</button>
							</h2>
							<div id="gs2" class="accordion-collapse collapse" data-bs-parent="#accStart">
								<div class="accordion-body">
									<i class="fa-solid fa-smile fa-2xl text-primary-emphasis m-3"></i>
									{PHP.langSkStr.indexGtStA2}
								</div>
							</div>
						</div>
						
						<!-- Item 3 -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed bg-primary-subtle text-primary-emphasis shadow-none" data-bs-toggle="collapse" data-bs-target="#gs3">
									{PHP.langSkStr.indexGtStQ3}
								</button>
							</h2>
							<div id="gs3" class="accordion-collapse collapse" data-bs-parent="#accStart">
								<div class="accordion-body">
									<i class="fa-solid fa-smile fa-2xl text-warning m-3"></i>{PHP.langSkStr.indexGtStA3}
								</div>
							</div>
						</div>
						
						<!-- Item 4 -->
						<div class="accordion-item">
							<h2 class="accordion-header">
								<button class="accordion-button collapsed bg-primary-subtle text-primary-emphasis shadow-none" data-bs-toggle="collapse" data-bs-target="#gs4">
									{PHP.langSkStr.indexGtStQ4}
								</button>
							</h2>
							<div id="gs4" class="accordion-collapse collapse" data-bs-parent="#accStart">
								<div class="accordion-body">
									<i class="fa-solid fa-smile fa-2xl text-success m-3"></i>
									{PHP.langSkStr.indexGtStA4}
									<div class="d-flex gap-2">
										<span class="badge rounded-pill border border-primary text-primary">Tag 1</span>
										<span class="badge rounded-pill border border-primary text-primary">Tag 2</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Mobile App -->
		<div class="row align-items-center">
			<div class="col-lg-6 order-lg-2 text-center">
				<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/mobile-app.svg" class="img-fluid" style="max-width:280px" alt="">
			</div>
			<div class="col-lg-6 order-lg-1">
				<h4 class="fw-medium mb-3">{PHP.langSkStr.indexDownApp}</h4>
				
				<div class="accordion border border-black rounded" id="accMobile">
					<div class="accordion-item">
						<h2 class="accordion-header text-white">
							<button class="accordion-button bg-black text-white" data-bs-toggle="collapse" data-bs-target="#mbcot">
								{PHP.langSkStr.indexDwnApQ1}
							</button>
						</h2>
						<div id="mbcot" class="accordion-collapse collapse show" data-bs-parent="#accMobile">
							<div class="accordion-body">
								<i class="fa-brands fa-github fa-2xl m-3"></i>
								{PHP.langSkStr.indexDwnApA1}
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button bg-danger text-white" data-bs-toggle="collapse" data-bs-target="#mb1">
								{PHP.langSkStr.indexDwnApQ2}
							</button>
						</h2>
						<div id="mb1" class="accordion-collapse collapse" data-bs-parent="#accMobile">
							<div class="accordion-body">
								<i class="fa-solid fa-store fa-2xl m-3 text-danger"></i>
								{PHP.langSkStr.indexDwnApA2}
								<div class="d-flex gap-2">
									<span class="badge rounded-pill border border-warning text-warning">Tag 1</span>
									<span class="badge rounded-pill border border-warning text-warning">Tag 2</span>
								</div>
							</div>
						</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button collapsed bg-warning text-dark " data-bs-toggle="collapse" data-bs-target="#mb2">
								{PHP.langSkStr.indexDwnApQ3}
							</button>
						</h2>
						<div id="mb2" class="accordion-collapse collapse" data-bs-parent="#accMobile">
							<div class="accordion-body">
								<i class="fa-solid fa-shapes fa-2xl m-3 text-success"></i>
								{PHP.langSkStr.indexDwnApA3}
							</div>
						</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button collapsed bg-success-subtle text-success-emphasis" data-bs-toggle="collapse" data-bs-target="#mb3">
								{PHP.langSkStr.indexDwnApQ4}
							</button>
						</h2>
						<div id="mb3" class="accordion-collapse collapse" data-bs-parent="#accMobile">
							<div class="accordion-body">
								<i class="fa-regular fa-comments fa-2xl m-3"></i>
								{PHP.langSkStr.indexDwnApA4}
							</div>
						</div>
					</div>
					
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button collapsed bg-primary-subtle text-primary-emphasis" data-bs-toggle="collapse" data-bs-target="#mb4">
								{PHP.langSkStr.indexDwnApQ5}
							</button>
						</h2>
						<div id="mb4" class="accordion-collapse collapse" data-bs-parent="#accMobile">
							<div class="accordion-body">
								{PHP.langSkStr.indexDwnApA5}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- IF {INDEX_POLLS} -->
		<div class="row align-items-center">
			<div class="col-lg-6 text-center">
				<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/credit-card.svg" class="img-fluid" style="max-width:280px" alt="">
			</div>
			<div class="col-lg-6">
				<h4 class="fw-medium mb-3">{PHP.langSkStr.blank_temporary_example_title}</h4>
				<div class="accordion border border-info rounded" id="accPay">
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button bg-info text-white" data-bs-toggle="collapse" data-bs-target="#py1">
								{PHP.L.Polls}
							</button>
						</h2>
						<div id="py1" class="accordion-collapse collapse show" data-bs-parent="#accPay">
							<div class="accordion-body">
								{INDEX_POLLS}
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<!-- ENDIF -->
	</div>
</div>


<!-- IF {INDEX_NEWS} -->
<div class="container py-4">	
	{INDEX_NEWS}
</div>
<!-- ENDIF -->

<!-- IF {PHP|cot_plugin_active('recentitems')} -->
<div class="container py-4">
	<div class="d-flex align-items-center my-4">
		<hr class="flex-grow-1">
		<span class="px-2 small text-uppercase">
			<a href="{PHP|cot_url('plug','e=recentitems')}" class="h3 text-decoration-none">
				{PHP.L.recentitems_new}
			</a>
		</span>
		<hr class="flex-grow-1">
	</div>
	
	<!-- IF {RECENT_PAGES} -->
	<h5 class="mb-4"><i class="fa-regular fa-newspaper fa-2xl mx-3" style="color: var(--bs-purple);"></i> {PHP.L.recentitems_pages}</h5>
	<div class="mb-5">{RECENT_PAGES}</div>
	<!-- ELSE -->
	<div class="alert alert-light mb-3">
		{PHP.L.recentitems_nonewpages}
	</div>
	<!-- ENDIF -->
	
	<!-- IF {RECENT_FORUMS} -->
	<h5 class="mb-4"><i class="fa-solid fa-comments fa-2xl mx-3" style="color: var(--bs-purple);"></i> {PHP.L.recentitems_forums}</h5>
	{RECENT_FORUMS}
	<!-- ELSE -->
	<div class="alert alert-light">
		{PHP.L.recentitems_nonewposts}
	</div>
	<!-- ENDIF -->
	
</div>
<!-- ENDIF -->


<div class="container py-4">
	{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"}
	<!-- IF {PHP.out.whosonline} -->
	<div class="card border-0 shadow-sm mt-4">
		<div class="card-header" style="background-color: var(--bs-header-bg);">
			{PHP.L.Online}
		</div>
		<div class="card-body">
			<a href="{PHP|cot_url('plug','e=whosonline')}" class="text-decoration-none">
				{PHP.out.whosonline}
			</a>
			<!-- IF {PHP.out.whosonline_reg_list} -->
			<div class="small text-muted mt-2">
				{PHP.out.whosonline_reg_list}
			</div>
			<!-- ENDIF -->
		</div>
	</div>
	<!-- ENDIF -->
</div>
<!-- END: MAIN -->
