<!--
	/********************************************************************************
	* File: pfs.editfolder.tpl
	* Extension: Module 'pfs'
	* Description: HTML template for Personal File Space Module.
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
<!-- BEGIN: STANDALONE_HEADER -->
<!DOCTYPE html>
<html lang="{PHP.usr.lang}">
	<head>
		<title>{PHP.L.pfs_myFiles} - {PHP.cfg.maintitle}</title>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<base href="{PHP.cfg.mainurl}/" />
		{PFS_HEAD}
		<link href="{PHP.cfg.themes_dir}/{PHP.theme}/css/{PHP.scheme}.css" type="text/css" rel="stylesheet" />
	</head>
	<body class="bg-light">
		<!-- END: STANDALONE_HEADER -->
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb bg-transparent px-0 mb-4">
					{PFS_BREADCRUMBS}
				</ol>
			</nav>		
		<div class="container-xl my-5">

			<!-- IF {PFS_SUBTITLE} -->
			<p class="text-muted mb-4 small">{PFS_SUBTITLE}</p>
			<!-- ENDIF -->
			
			{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
			
			<div class="card border shadow-sm">
				<div class="card-header bg-light fw-bold">
					<i class="fa-solid fa-folder-pen me-2 text-primary"></i>
					{PHP.L.pfs_myFiles}
				</div>
				
				<form id="editfolder" action="{PFS_ACTION}" method="post" class="needs-validation" novalidate>
					<div class="card-body">
						
						<div class="row g-4">
							
							<div class="col-12 col-sm-4">
								<label class="form-label fw-bold text-muted small">{PHP.L.Folder}</label>
							</div>
							<div class="col-12 col-sm-8">
								<div class="form-control-plaintext fw-medium">
									{PFF_TITLE}
								</div>
							</div>
							
							<div class="col-12">
								<label for="pff_desc" class="form-label fw-bold">{PHP.L.Description}</label>
								{PFF_DESC}
							</div>
							
							<div class="col-12 col-sm-4">
								<label class="form-label fw-bold text-muted small">{PHP.L.Date}</label>
							</div>
							<div class="col-12 col-sm-8">
								<div class="form-control-plaintext">
									{PFF_DATE}
								</div>
							</div>
							
							<div class="col-12 col-sm-4">
								<label class="form-label fw-bold text-muted small">{PHP.L.Updated}</label>
							</div>
							<div class="col-12 col-sm-8">
								<div class="form-control-plaintext">
									{PFF_UPDATED}
								</div>
							</div>
							
							<div class="col-12 col-sm-4">
								<label class="form-label fw-bold text-muted small">{PHP.L.pfs_ispublic}</label>
							</div>
							<div class="col-12 col-sm-8">
								<div class="form-check mt-1">
									{PFF_ISPUBLIC}
								</div>
							</div>
							
							<div class="col-12 col-sm-4">
								<label class="form-label fw-bold text-muted small">{PHP.L.pfs_isgallery}</label>
							</div>
							<div class="col-12 col-sm-8">
								<div class="form-check mt-1">
									{PFF_ISGALLERY}
								</div>
							</div>
							
						</div>
						
					</div>
					
					<div class="card-footer bg-light text-end">
						<button type="submit" class="btn btn-primary px-5 py-2">
							<i class="fa-solid fa-floppy-disk me-2"></i>{PHP.L.Update}
						</button>
					</div>
				</form>
			</div>
		</div>
		
		<!-- BEGIN: STANDALONE_FOOTER -->
	</body>
</html>
<!-- END: STANDALONE_FOOTER -->
<!-- END: MAIN -->