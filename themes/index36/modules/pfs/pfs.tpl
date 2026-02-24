<!--
	/********************************************************************************
	* File: pfs.tpl
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
<html lang="{PHP.cfg.defaultlang}">
<head>
    <title>{PHP.L.pfs_myFiles} - {PHP.cfg.maintitle}</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="{PHP.cfg.mainurl}/" />
    {PFS_HEAD}
    <script type="text/javascript">
    //<![CDATA[
    {PFS_HEADER_JAVASCRIPT}
    //]]>
    </script>
    <link href="{PHP.cfg.themes_dir}/{PHP.theme}/css/{PHP.scheme}.css" type="text/css" rel="stylesheet" />
</head>
<body class="bg-light pb-5">
<!-- END: STANDALONE_HEADER -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-transparent px-0 mb-4">
            {PFS_TITLE} {PFS_PATH}
        </ol>
    </nav>
<div class="container-xl my-4 my-md-5">



    <!-- IF {PFS_SUBTITLE} -->
    <p class="text-muted mb-4 small">{PFS_SUBTITLE}</p>
    <!-- ENDIF -->

    <!-- BEGIN: PFS_ERRORS -->
    <div class="alert alert-danger mb-4">
        <ul class="mb-0">
            <!-- BEGIN: PFS_ERRORS_ROW -->
            <li>{PFS_ERRORS_ROW_MSG}</li>
            <!-- END: PFS_ERRORS_ROW -->
        </ul>
    </div>
    <!-- END: PFS_ERRORS -->

    <!-- ================== Папки ================== -->
    <!-- IF {PFS_FOLDER_ID} == 0 AND {PFF_FOLDERCOUNT} > 0 -->
    <div class="mb-5">
        <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center gap-3 mb-3">
            <h3 class="h5 mb-0 fw-bold">
                {PFF_FOLDERCOUNT_TITLE} / {PFF_FILESCOUNT_TITLE}
                <small class="text-muted ms-2">
                    ({PHP.L.pfs_onpage}: {PFF_ONPAGE_FOLDERS_TITLE} / {PFF_ONPAGE_FILES_TITLE})
                </small>
            </h3>
        </div>

        <div class="row row-cols-1 row-cols-sm-2 row-cols-lg-3 g-3 g-md-4">
            <!-- BEGIN: PFF_ROW -->
            <div class="col">
                <div class="card h-100 border shadow-sm hover-shadow">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex align-items-start gap-3 mb-3">
                            <a href="{PFF_ROW_URL}" class="fs-1 text-primary flex-shrink-0">
                                {PFF_ROW_ICON}
                            </a>
                            <div class="flex-grow-1">
                                <h5 class="card-title fs-6 mb-1">
                                    <a href="{PFF_ROW_URL}" class="text-decoration-none">
                                        {PFF_ROW_TITLE}
                                    </a>
                                </h5>
                                <!-- IF {PFF_ROW_DESC} -->
                                <p class="small text-muted mb-2">{PFF_ROW_DESC}</p>
                                <!-- ENDIF -->
                            </div>
                        </div>

                        <div class="mt-auto small text-muted">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <strong>{PFF_ROW_FCOUNT}</strong> файлов
                                </div>
                                <div>
                                    <strong>{PFF_ROW_FSIZE}</strong>
                                </div>
                            </div>
                            <div class="mt-1">
                                Обновлено: {PFF_ROW_UPDATED}
                            </div>
                            <div class="mt-1">
                                {PFF_ROW_ISPUBLIC}
                            </div>
                        </div>

                        <div class="mt-3 d-flex gap-2">
                            <a href="{PFF_ROW_EDIT_URL}" class="btn btn-sm btn-outline-primary flex-grow-1">
                                <i class="fa-solid fa-pen-to-square"></i> {PHP.L.Edit}
                            </a>
                            <a href="{PFF_ROW_DELETE_URL}" class="btn btn-sm btn-outline-danger confirmLink">
                                <i class="fa-solid fa-trash-can"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: PFF_ROW -->
        </div>

        <!-- IF {PFF_PAGINATION} -->
        <nav aria-label="Папки пагинация" class="mt-4">
            <ul class="pagination justify-content-center">
                {PFF_PREVIOUS_PAGE}{PFF_PAGINATION}{PFF_NEXT_PAGE}
            </ul>
        </nav>
        <!-- ENDIF -->
    </div>
    <!-- ENDIF -->

    <!-- ================== Файлы ================== -->
    <!-- IF {PFS_FILESCOUNT} > 0 -->
    <div class="mb-5">
        <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center gap-3 mb-3">
            <h3 class="h5 mb-0 fw-bold">
                {PFS_INTHISFOLDER}: {PFS_FILESCOUNT_TITLE}
                <small class="text-muted ms-2">
                    ({PHP.L.pfs_onpage}: {PFS_ONPAGE_FILES_TITLE})
                </small>
            </h3>
            <div class="text-nowrap">
                {PFS_SHOWTHUMBS}
            </div>
        </div>

        <div class="list-group">
            <!-- BEGIN: PFS_ROW -->
            <div class="list-group-item px-3 py-3">
                <div class="row align-items-center g-3">
                    <div class="col-auto fs-3 text-muted">
                        {PFS_ROW_ICON}
                    </div>

                    <div class="col">
                        <h5 class="mb-1 fs-6">
                            <a href="{PFS_ROW_FILE_URL}" class="text-decoration-none">
                                {PFS_ROW_FILE}
                            </a>
                        </h5>
                        <div class="small text-muted">
                            {PFS_ROW_TYPE}
                            <!-- IF {PFS_ROW_DESC} --> • {PFS_ROW_DESC}<!-- ENDIF -->
                        </div>
                    </div>

                    <div class="col-12 col-md-auto text-center text-md-end small">
                        <div class="mb-1">
                            <strong>{PFS_ROW_COUNT}</strong> просмотров
                        </div>
                        <div class="mb-1">
                            {PFS_ROW_SIZE}
                        </div>
                        <div class="text-muted">
                            {PFS_ROW_DATE}
                        </div>
                    </div>

                    <div class="col-12 col-md-auto text-end">
                        <div class="d-flex gap-2 justify-content-end flex-wrap">
                            <a href="{PFS_ROW_EDIT_URL}" class="btn btn-sm btn-outline-secondary">
                                <i class="fa-solid fa-pen"></i> {PHP.L.Edit}
                            </a>
                            <a href="{PFS_ROW_DELETE_URL}" class="btn btn-sm btn-outline-danger confirmLink">
                                <i class="fa-solid fa-trash-can"></i>
                            </a>
                            {PFS_ROW_INSERT}
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: PFS_ROW -->
        </div>

        <!-- IF {PAGINATION} -->
        <nav aria-label="Файлы пагинация" class="mt-4">
            <ul class="pagination justify-content-center">
                {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
            </ul>
        </nav>
        <!-- ENDIF -->
    </div>
    <!-- ENDIF -->

    <!-- ================== Статистика использования ================== -->
    <div class="card border-danger mb-5">
        <div class="card-header bg-danger-subtle text-danger fw-bold">
            <i class="fa-solid fa-hard-drive me-2"></i> Использование места
        </div>
        <div class="card-body">
            <p class="mb-2">
                {PHP.L.pfs_totalsize}: <strong>{PFS_TOTALSIZE}</strong> из <strong>{PFS_MAXTOTAL}</strong> ({PFS_PERCENTAGE}%)
            </p>
            <div class="progress" role="progressbar" aria-valuenow="{PFS_PERCENTAGE}" aria-valuemin="0" aria-valuemax="100" style="height: 1.2rem;">
                <div class="progress-bar bg-danger" style="width: {PFS_PERCENTAGE}%"></div>
            </div>
            <p class="mt-3 mb-0 small text-muted">
                Максимальный размер одного файла: <strong>{PFS_MAXFILESIZE}</strong>
            </p>
        </div>
    </div>

    <!-- ================== Загрузка файлов ================== -->
    <!-- BEGIN: PFS_UPLOAD_FORM -->
    <div class="card mb-5">
        <div class="card-header bg-primary text-white fw-bold">
            <i class="fa-solid fa-cloud-arrow-up me-2"></i>{PHP.L.pfs_newfile}
        </div>
        <form enctype="multipart/form-data" action="{PFS_UPLOAD_FORM_ACTION}" method="post" class="needs-validation" novalidate>
            <input type="hidden" name="MAX_FILE_SIZE" value="{PFS_UPLOAD_FORM_MAX_SIZE}" />
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-borderless mb-0">
                        <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th>{PHP.L.Description}</th>
                                <th>{PHP.L.File}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- BEGIN: PFS_UPLOAD_FORM_ROW -->
                            <tr>
                                <td class="text-center align-middle">#{PFS_UPLOAD_FORM_ROW_NUM}</td>
                                <td>
                                    <input type="text" class="form-control" name="ndesc[{PFS_UPLOAD_FORM_ROW_ID}]" maxlength="255" />
                                </td>
                                <td>
                                    <input name="userfile[{PFS_UPLOAD_FORM_ROW_ID}]" type="file" class="form-control" />
                                </td>
                            </tr>
                            <!-- END: PFS_UPLOAD_FORM_ROW -->
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer bg-light text-end">
                <button type="submit" class="btn btn-primary px-5">
                    <i class="fa-solid fa-upload me-2"></i>{PHP.L.Upload}
                </button>
            </div>
        </form>
    </div>
    <!-- END: PFS_UPLOAD_FORM -->

    <!-- ================== Создание папки ================== -->
    <!-- BEGIN: PFS_NEWFOLDER_FORM -->
    <div class="card mb-5">
        <div class="card-header bg-success text-white fw-bold">
            <i class="fa-solid fa-folder-plus me-2"></i>{PHP.L.pfs_newfolder}
        </div>
        <form id="newfolder" action="{NEWFOLDER_FORM_ACTION}" method="post" class="needs-validation" novalidate>
            <div class="card-body">
                <div class="mb-3">
                    <label class="form-label fw-bold">{PHP.L.Title}</label>
                    <input type="text" class="form-control" name="ntitle" maxlength="64" required />
                </div>

                <div class="mb-3">
                    <label class="form-label fw-bold">{PHP.L.Description}</label>
                    <input type="text" class="form-control" name="ndesc" maxlength="255" />
                </div>

                <div class="mb-3">
                    <label class="form-label fw-bold d-block">{PHP.L.pfs_ispublic}</label>
                    <div class="d-flex gap-4">
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="nispublic" value="1" id="public_yes">
                            <label class="form-check-label" for="public_yes">{PHP.L.Yes}</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="nispublic" value="0" id="public_no" checked>
                            <label class="form-check-label" for="public_no">{PHP.L.No}</label>
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label fw-bold d-block">{PHP.L.pfs_isgallery}</label>
                    <div class="d-flex gap-4">
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="nisgallery" value="1" id="gallery_yes">
                            <label class="form-check-label" for="gallery_yes">{PHP.L.Yes}</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" class="form-check-input" name="nisgallery" value="0" id="gallery_no" checked>
                            <label class="form-check-label" for="gallery_no">{PHP.L.No}</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer bg-light text-end">
                <button type="submit" class="btn btn-success px-5">
                    <i class="fa-solid fa-folder-plus me-2"></i>{PHP.L.Create}
                </button>
            </div>
        </form>
    </div>
    <!-- END: PFS_NEWFOLDER_FORM -->

    <!-- ================== Разрешённые расширения ================== -->
    <div class="card mb-5">
        <div class="card-header bg-info text-white fw-bold">
            <i class="fa-solid fa-file-circle-check me-2"></i>{PHP.L.pfs_extallowed}
        </div>
        <div class="card-body">
            <div class="row g-3">
                <!-- BEGIN: ALLOWED_ROW -->
                <div class="col-6 col-sm-4 col-md-3 col-lg-2">
                    <div class="d-flex align-items-center gap-2 small">
                        <span class="fs-4 text-muted">{ALLOWED_ROW_ICON}</span>
                        <div>
                            <strong>{ALLOWED_ROW_EXT}</strong><br>
                            <span class="text-muted">{ALLOWED_ROW_DESC}</span>
                        </div>
                    </div>
                </div>
                <!-- END: ALLOWED_ROW -->
            </div>
        </div>
    </div>

</div>

<!-- BEGIN: STANDALONE_FOOTER -->
<div class="bg-dark text-white py-4 mt-5">
    <div class="container-xl text-center small">
        {PHP.R.pfs_icon_pastethumb} {PHP.L.pfs_pastethumb} &nbsp; • &nbsp;
        {PHP.R.pfs_icon_pasteimage} {PHP.L.pfs_pasteimage} &nbsp; • &nbsp;
        {PHP.R.pfs_icon_pastefile} {PHP.L.pfs_pastefile}
    </div>
</div>
</body>
</html>
<!-- END: STANDALONE_FOOTER -->
<!-- END: MAIN -->