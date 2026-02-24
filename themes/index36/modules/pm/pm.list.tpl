<!--
	/********************************************************************************
	* File: pm.list.tpl
	* Extension: Module 'pm'
	* Description: HTML template for Private Messages Module. pm.list.tpl
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
<div id="ajaxBlock">
<!-- END: BEFORE_AJAX -->

<div class="container-xl py-4">
  <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center mb-4 gap-3">
    <div>
      <h2 class="h3 mb-1">{PM_PAGETITLE}</h2>
      <div class="text-muted small">{PM_SUBTITLE}</div>
    </div>

    <div class="d-flex flex-wrap gap-2">
      <a href="{PM_INBOX_URL}" class="btn btn-outline-primary {PM_INBOX_ACTIVE}">{PHP.L.pm_inbox}</a>
      <a href="{PM_SENTBOX_URL}" class="btn btn-outline-primary {PM_SENTBOX_ACTIVE}">{PHP.L.pm_sentbox}</a>
      <a href="{PM_SENDNEWPM_URL}" class="btn btn-primary">
        <i class="fa-solid fa-paper-plane me-1"></i> {PHP.L.pm_sendnew}
      </a>
    </div>
  </div>

  <!-- Навигация / фильтры -->
  <div class="d-flex flex-wrap gap-3 mb-4 align-items-center">
    <div class="text-muted me-2">{PHP.L.Filter}:</div>
    <div class="btn-group btn-group-sm" role="group">
      <a href="{PM_FILTER_UNREAD_URL}" class="btn btn-outline-secondary {PM_FILTER_UNREAD_ACTIVE}">
        <i class="fa-solid fa-envelope"></i> {PHP.L.pm_unread}
      </a>
      <a href="{PM_FILTER_STARRED_URL}" class="btn btn-outline-secondary {PM_FILTER_STARRED_ACTIVE}">
        <i class="fa-solid fa-star"></i> {PHP.L.pm_starred}
      </a>
      <a href="{PM_FILTER_ALL_URL}" class="btn btn-outline-secondary {PM_FILTER_ALL_ACTIVE}">
        <i class="fa-solid fa-list"></i> {PHP.L.All}
      </a>
    </div>
  </div>

  <form action="{PM_FORM_UPDATE}" method="post" name="update" id="update" class="ajax">
    <!-- Список сообщений -->
    <!-- BEGIN: PM_ROW -->
    <div class="card mb-3 border {PM_ROW_ODDEVEN} {PM_ROW_UNREAD_CLASS|default:'border-light'} shadow-sm">
      <div class="card-body">
        <div class="d-flex flex-column flex-sm-row gap-3 align-items-sm-center justify-content-between">
          <!-- Чекбокс + статус + звезда -->
          <div class="d-flex align-items-center gap-3">
            <div class="form-check">
              <input class="form-check-input checkbox" type="checkbox" name="msg[{PM_ROW_ID}]" id="msg{PMR_ROW_ID}">
              <label class="form-check-label" for="msg{PMR_ROW_ID}"></label>
            </div>

            <div class="text-center" style="min-width: 2.2rem;">
              {PM_ROW_ICON_STATUS}
            </div>

            <div class="pm-star pm-star-readonly fs-5" title="{PHP.L.pm_starred}">
              {PM_ROW_STAR}
            </div>
          </div>

          <!-- Основная информация -->
          <div class="flex-grow-1">
            <h5 class="card-title mb-1 fs-6 fw-bold">
              <a href="{PM_ROW_URL}" class="text-decoration-none">{PM_ROW_TITLE}</a>
            </h5>
            <div class="text-muted small mb-1">
              {PM_ROW_DESC}
            </div>
          </div>

          <!-- Отправитель / дата / действия -->
          <div class="d-flex flex-column flex-sm-row gap-3 align-items-sm-center text-sm-end ms-sm-auto">
            <div class="text-muted small" style="min-width: 10rem;">
              {PM_ROW_USER_NAME}
            </div>

            <div class="text-muted small" style="min-width: 9rem;">
              {PM_ROW_DATE}
            </div>

            <div class="d-flex gap-2">
              {PM_ROW_ICON_EDIT}
              {PM_ROW_ICON_DELETE_CONFIRM}
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- END: PM_ROW -->

    <!-- BEGIN: PM_ROW_EMPTY -->
    <div class="alert alert-info text-center py-5 my-4">
      <i class="fa-solid fa-inbox fs-1 mb-3 d-block text-muted opacity-75"></i>
      {PHP.L.None}
    </div>
    <!-- END: PM_ROW_EMPTY -->

    <!-- Действия с выбранными + пагинация -->
    <!-- IF {PHP.jj} > 0 -->
    <div class="card mt-4 border-0 shadow-none bg-transparent">
      <div class="card-body p-0">
        <div class="d-flex flex-column flex-md-row justify-content-between align-items-md-center gap-3">
          <div class="d-flex align-items-center gap-3">
            <span class="fw-bold">{PHP.L.pm_selected}:</span>
            <select name="action" class="form-select form-select-sm w-auto">
              <option value="delete">{PHP.L.Delete}</option>
              <option value="star" selected>{PHP.L.pm_putinstarred}</option>
              <!-- можно добавить ещё действия при желании -->
            </select>
            <button type="submit" name="delete" class="btn btn-danger btn-sm">
              <i class="fa-solid fa-check me-1"></i>{PHP.L.Confirm}
            </button>
          </div>

          <!-- IF {PAGINATION} -->
          <nav aria-label="Messages pagination">
            <ul class="pagination pagination-sm mb-0">
              {PREVIOUS_PAGE}
              {PAGINATION}
              {NEXT_PAGE}
            </ul>
          </nav>
          <!-- ENDIF -->
        </div>
      </div>
    </div>
    <!-- ENDIF -->

  </form>
</div>

<!-- BEGIN: AFTER_AJAX -->
</div>
<!-- END: AFTER_AJAX -->

<!-- END: MAIN -->