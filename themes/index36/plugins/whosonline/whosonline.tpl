<!--
/********************************************************************************
 * File: whosonline.tpl
 * Extension: plugin 'whosonline'
 * Description: HTML template for whosonline plugin.
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
<div class="container my-4">
  <h5 class="mb-3">
    <a href="{PHP|cot_url('plug','e=whosonline')}" class="text-decoration-none">
      <i class="fa-solid fa-users me-2"></i>{PHP.L.WhosOnline}
    </a>
  </h5>

  <div class="card shadow border-0 rounded-3">
    <div class="card-body p-0">
      <div class="list-group list-group-flush">

        <!-- BEGIN: USERS -->
        <div class="list-group-item px-4 py-3" style="background-color: var(--bs-sidebar-bg);" data-bs-theme="inherit">
          <div class="d-flex align-items-center flex-wrap gap-3">
            <div class="flex-shrink-0">
              <i class="fa-solid fa-circle-user fa-2x  opacity-75"></i>
            </div>

            <div class="flex-grow-1 min-width-0">
              <div class="d-flex justify-content-between align-items-center flex-wrap gap-2">
                <div>
                  <div class="fw-bold">{USER_LINK}</div>
                  <div class=" small">{USER_MAIN_GROUP}</div>
                </div>

                <div class="text-end ms-auto">
                  <div class="small">
                    {USER_LASTSEEN} {PHP.L.Ago}
                  </div>
                </div>
              </div>

              <div class="mt-1 small">
                <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' -->
                <a href="{USER_URL}" class="text-decoration-none">
                <!-- ENDIF -->
                  <i class="fa-solid fa-location-dot me-1"></i>{USER_LOCATION}
                <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' -->
                </a>
                <!-- ENDIF -->

                <!-- IF {USER_SUBLOCATION} -->
                <span class="mx-2">•</span>
                <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' -->
                <a href="{USER_URL}" class="text-decoration-none">
                <!-- ENDIF -->
                  <i class="fa-solid fa-map-marker-alt me-1"></i>{USER_SUBLOCATION}
                <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' -->
                </a>
                <!-- ENDIF -->
                <!-- ENDIF -->
              </div>
            </div>

            <!-- IF {PHP.usr.isadmin} -->
            <div class="text-end ms-3">
              <code class="small bg-light px-2 py-1 rounded">{USER_IP}</code>
            </div>
            <!-- ENDIF -->
          </div>
        </div>
        <!-- END: USERS -->

        <!-- BEGIN: GUESTS -->
        <div class="list-group-item px-4 py-3 bg-light-subtle">
          <div class="d-flex align-items-center flex-wrap gap-3">
            <div class="flex-shrink-0">
              <i class="fa-solid fa-user-secret fa-2x opacity-75"></i>
            </div>

            <div class="flex-grow-1 min-width-0">
              <div class="d-flex justify-content-between align-items-center flex-wrap gap-2">
                <div>
                  <div class="fw-bold">{PHP.L.Guest} #{GUEST_NUMBER}</div>
                </div>

                <div class="text-end ms-auto">
                  <div class="small ">
                    {GUEST_LASTSEEN} {PHP.L.Ago}
                  </div>
                </div>
              </div>

              <div class="mt-1 small">
                <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' -->
                <a href="{GUEST_URL}" class="text-decoration-none">
                <!-- ENDIF -->
                  <i class="fa-solid fa-location-dot me-1"></i>{GUEST_LOCATION}
                <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' -->
                </a>
                <!-- ENDIF -->

                <!-- IF {GUEST_SUBLOCATION} -->
                <span class="mx-2">•</span>
                <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' -->
                <a href="{GUEST_URL}" class="text-decoration-none">
                <!-- ENDIF -->
                  <i class="fa-solid fa-map-marker-alt me-1"></i>{GUEST_SUBLOCATION}
                <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' -->
                </a>
                <!-- ENDIF -->
                <!-- ENDIF -->
              </div>
            </div>

            <!-- IF {PHP.usr.isadmin} -->
            <div class="text-end ms-3">
              <code class="small bg-light px-2 py-1 rounded">{GUEST_IP}</code>
            </div>
            <!-- ENDIF -->
          </div>
        </div>
        <!-- END: GUESTS -->

      </div>
    </div>

    <div class="card-footer border-top px-4 py-3">
      <!-- IF {TOTAL_PAGES} > 1 -->
      <div class="d-flex justify-content-between align-items-center mb-3 flex-wrap gap-3">
        <div class="small">
          {PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}
        </div>
        <div class="btn-group btn-group-sm">
          {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
        </div>
      </div>
      <!-- ENDIF -->

      <div class="d-flex flex-wrap gap-4">
        <div>
          <strong>{PHP.L.NowOnline}:</strong><br>
          <span class="fs-5 fw-bold ">
            {STAT_COUNT_USERS}
          </span>
          <span class="ms-1">{USERS}</span>

          <!-- IF !{PHP.cfg.plugin.whosonline.disable_guests} -->
          <span class="mx-2">•</span>
          <span class="fs-5 fw-bold ">
            {STAT_COUNT_GUESTS}
          </span>
          <span class="ms-1">{GUESTS}</span>
          <!-- ENDIF -->
        </div>

        <!-- IF {STAT_MAXUSERS} -->
        <div>
          <strong>{PHP.L.MostOnline}:</strong><br>
          <span class="fs-5 fw-bold">{STAT_MAXUSERS}</span>
        </div>
        <!-- ENDIF -->
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->