<!--
	/********************************************************************************
	* File: pm.message.tpl
	* Extension: Module 'pm'
	* Description: HTML template for Private Messages Module.
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

<!-- BEGIN: BEFORE_AJAX -->
<div id="ajaxBlock" class="pm-view-page">
<!-- END: BEFORE_AJAX -->

  <div class="container-fluid py-3 py-md-4">
    <div class="row justify-content-center">
      <div class="col-12 col-lg-10 col-xl-9">

        <nav aria-label="breadcrumb" class="mb-4">
          {PM_PAGETITLE}
        </nav>

        <!-- Основное сообщение -->
        <div class="card mb-4 shadow border-0">
          <div class="card-header bg-primary text-white d-flex align-items-center justify-content-between">
            <div class="d-flex align-items-center gap-3">
              <i class="fa-solid fa-envelope fa-lg"></i>
              <h2 class="h5 mb-0 flex-grow-1">{PM_TITLE}</h2>
            </div>
            <div class="d-flex gap-2 align-items-center">
              {PM_STAR}
              {PM_EDIT}
              {PM_DELETE}
            </div>
          </div>

          <div class="card-body">
            <div class="d-flex flex-column flex-sm-row gap-4 mb-4 pb-3 border-bottom">
              <div class="d-flex align-items-center gap-2">
                <i class="fa-solid fa-user fa-fw text-muted"></i>
                <strong>{PM_SENT_TYPE}:</strong> {PM_USER_NAME}
              </div>
              <div class="d-flex align-items-center gap-2">
                <i class="fa-regular fa-clock fa-fw text-muted"></i>
                <strong>{PHP.L.Date}:</strong>
                <time datetime="{PM_DATE_STAMP}">{PM_DATE}</time>
              </div>
            </div>

            <div class="message-content mb-5">
              {PM_TEXT}
            </div>

            <div class="d-flex flex-wrap gap-3">
              {PM_QUOTE}
              {PM_HISTORY}
            </div>
          </div>
        </div>

        <!-- Форма ответа -->
        <!-- BEGIN: REPLY -->
        <div class="card mb-5 shadow border-0">
          <div class="card-header bg-light">
            <h3 class="h5 mb-0"><i class="fa-solid fa-reply me-2"></i>{PHP.L.pm_replyto}</h3>
          </div>
          <div class="card-body">
            <form action="{PM_FORM_SEND}" method="post" name="newpmform" class="needs-validation" novalidate>
              <div class="mb-3">
                <label for="newpmtitle" class="form-label fw-bold">{PHP.L.Subject}</label>
                {PM_FORM_TITLE}
              </div>

              <div class="mb-4">
                <label for="newpmtext" class="form-label fw-bold">{PHP.L.Message}</label>
                {PM_FORM_TEXT}
              </div>

              <div class="form-check mb-4">
                {PM_FORM_NOT_TO_SENTBOX}
              </div>

              <button type="submit" class="btn btn-primary btn-lg px-5">
                <i class="fa-solid fa-paper-plane me-2"></i>{PHP.L.Reply}
              </button>
            </form>
          </div>
        </div>
        <!-- END: REPLY -->

        <!-- История переписки – теперь всегда видна, если включена -->
        <div id="ajaxHistory">
          <!-- BEGIN: HISTORY -->
          <div class="card shadow border-0">
            <div class="card-header bg-light d-flex justify-content-between align-items-center">
              <h3 class="h5 mb-0">
                <i class="fa-solid fa-clock-rotate-left me-2"></i>
                {PHP.L.pm_messagehistory}
              </h3>
              <small class="text-muted">Всего сообщений: {TOTALLINES}</small>
            </div>

            <div class="list-group list-group-flush">
              <!-- BEGIN: PM_ROW -->
              <div class="list-group-item px-3 py-4 {PM_ROW_ODDEVEN}">
                <div class="d-flex flex-column flex-md-row gap-3">
                  <div class="d-flex align-items-start gap-3 flex-grow-1">
                    <div class="flex-shrink-0 pt-1">
                      {PM_ROW_ICON_STATUS}
                    </div>
                    <div class="flex-grow-1">
                      <div class="d-flex justify-content-between align-items-baseline mb-1">
                        <strong>{PM_ROW_USER_NAME}</strong>
                        <small class="text-muted">
                          <time datetime="{PM_ROW_DATE_STAMP}">{PM_ROW_DATE}</time>
                        </small>
                      </div>
                      <div class="message-content">
                        {PM_ROW_TEXT}
                      </div>
                    </div>
                  </div>

                  <div class="d-flex gap-2 mt-3 mt-md-0 flex-shrink-0">
                    {PM_ROW_ICON_EDIT}
                    {PM_ROW_ICON_DELETE}
                  </div>
                </div>
              </div>
              <!-- END: PM_ROW -->

              <!-- BEGIN: PM_ROW_EMPTY -->
              <div class="list-group-item text-center py-5 text-muted fs-5">
                <i class="fa-solid fa-comment-slash fa-2x mb-3 d-block text-black-50"></i>
                {PHP.L.None}
              </div>
              <!-- END: PM_ROW_EMPTY -->
            </div>

            <!-- BEGIN: PAGINATION -->
            <div class="card-footer bg-transparent border-top-0">
              <nav aria-label="История сообщений">
                <ul class="pagination pagination-sm justify-content-center mb-0">
                  {PM_PAGEPREV}
                  {PM_PAGES}
                  {PM_PAGENEXT}
                </ul>
              </nav>
            </div>
            <!-- END: PAGINATION -->

          </div>
          <!-- END: HISTORY -->
        </div>

        <!-- Навигация внизу -->
        <div class="mt-5 d-flex flex-wrap gap-3">
          <a href="{PM_INBOX_URL}" class="btn btn-outline-primary">
            <i class="fa-solid fa-inbox me-2"></i>{PM_INBOX} ({PM_INBOX_COUNT})
          </a>
          <a href="{PM_SENTBOX_URL}" class="btn btn-outline-primary">
            <i class="fa-solid fa-paper-plane me-2"></i>{PM_SENTBOX} ({PM_SENTBOX_COUNT})
          </a>
          {PM_SENDNEWPM}
        </div>

      </div>
    </div>
  </div>

<!-- BEGIN: AFTER_AJAX -->
</div>
<!-- END: AFTER_AJAX -->

<!-- END: MAIN -->