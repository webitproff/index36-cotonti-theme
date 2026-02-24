<!--
	/********************************************************************************
	* File: forums.topics.tpl
	* Extension: Module 'forums'
	* Description: HTML template for Forums Module - topics.
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

<div class="border-bottom py-3 px-3 mb-4">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-transparent mb-0 p-0">
            {FORUMS_TOPICS_PAGETITLE}
        </ol>
    </nav>
</div>

<div class="container-xl py-4 py-md-5">

    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}

    <!-- Подфорумы (если есть) -->
    <!-- BEGIN: FORUMS_SECTIONS -->
    <div class="mb-5">
        <h3 class="h5 mb-3 fw-bold border-bottom pb-2">{PHP.L.Subforums}</h3>

        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-3 g-md-4">
            <!-- BEGIN: FORUMS_SECTIONS_ROW_SECTION -->
            <div class="col">
                <div class="card h-100 border shadow-sm {FORUMS_SECTIONS_ROW_ODDEVEN}">
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex align-items-start gap-3">
                            <div class="fs-3 text-muted flex-shrink-0">
                                {PHP.R.icon_subfolder}
                            </div>
                            <div class="flex-grow-1">
                                <h4 class="card-title fs-5 mb-2">
                                    <a href="{FORUMS_SECTIONS_ROW_URL}" class="text-decoration-none">
                                        {FORUMS_SECTIONS_ROW_TITLE}
                                    </a>
                                </h4>
                                <!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
                                <p class="card-text small text-muted mb-3">
                                    {FORUMS_SECTIONS_ROW_DESC}
                                </p>
                                <!-- ENDIF -->
                            </div>
                        </div>

                        <div class="mt-auto pt-3 small text-muted">
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <strong>{FORUMS_SECTIONS_ROW_POSTCOUNT}</strong> {PHP.L.forums_posts}
                                </div>
                                <div>
                                    <strong>{FORUMS_SECTIONS_ROW_TOPICCOUNT}</strong> {PHP.L.forums_topics}
                                </div>
                            </div>
                            <div class="mt-2">
                                {FORUMS_SECTIONS_ROW_LASTPOST}<br>
                                <span class="text-muted">
                                    {FORUMS_SECTIONS_ROW_LASTPOSTER} • {FORUMS_SECTIONS_ROW_TIMEAGO}
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: FORUMS_SECTIONS_ROW_SECTION -->
        </div>
    </div>
    <!-- END: FORUMS_SECTIONS -->

    <!-- IF {PHP.usr.auth_write} -->
    <div class="mb-4 text-end">
        <a href="{FORUMS_TOPICS_NEWTOPICURL}" rel="nofollow" class="btn btn-primary btn-lg px-4">
            <i class="fa-solid fa-plus me-2"></i>{PHP.L.forums_newtopic}
        </a>
    </div>
	<!-- ENDIF -->
    <!-- IF {PHP.usr.id} == 0 -->
    <div class="mb-4 text-end">
        <a class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#authModal">
		<i class="fa-solid fa-plus me-2"></i>{PHP.L.forums_newtopic}
		</a>
    </div>
	<!-- ENDIF -->
    <!-- Список тем -->
    <div class="card border-0 shadow-sm mb-5">
        <div class="card-header fw-bold d-flex justify-content-between align-items-center" style="background-color: var(--bs-header-bg);">
            <div>{FORUMS_TOPICS_TITLE_TOPICS} / {FORUMS_TOPICS_TITLE_STARTED}</div>
            <div class="small text-muted d-none d-md-block">{FORUMS_TOPICS_TITLE_LASTPOST}</div>
        </div>

        <div class="list-group list-group-flush">
            <!-- BEGIN: FORUMS_TOPICS_ROW -->
            <div class="list-group-item list-group-item-action px-3 py-4 {FORUMS_TOPICS_ROW_ODDEVEN}">
                <div class="row align-items-center g-3">
                    <div class="col-auto text-center fs-4 text-muted">
                        {FORUMS_TOPICS_ROW_ICON}
                    </div>

                    <div class="col">
                        <h5 class="mb-1 fs-5">
                            <a href="{FORUMS_TOPICS_ROW_URL}" title="{FORUMS_TOPICS_ROW_PREVIEW}" class="text-decoration-none">
                                {FORUMS_TOPICS_ROW_TITLE}
                            </a>
                        </h5>

                        <!-- IF {FORUMS_TOPICS_ROW_DESC} -->
                        <p class="small text-muted mb-2">{FORUMS_TOPICS_ROW_DESC}</p>
                        <!-- ENDIF -->

                        <div class="small text-muted">
                            <span>{FORUMS_TOPICS_ROW_CREATIONDATE}: {FORUMS_TOPICS_ROW_FIRSTPOSTER}</span>
                            <span class="mx-2">•</span>
                            <span>{FORUMS_TOPICS_ROW_PAGES}</span>
                            <!-- IF {FORUMS_TOPICS_ROW_TAGS} -->
                            <span class="mx-2">•</span>
                            <span>{FORUMS_TOPICS_ROW_TAGS}</span>
                            <!-- ENDIF -->
                        </div>
                    </div>

                    <div class="col-12 col-md-auto text-center text-md-end small mt-3 mt-md-0">
                        <div class="mb-1">
                            <strong class="d-block d-md-inline">{FORUMS_TOPICS_ROW_POSTCOUNT}</strong>
                            <span class="d-md-none mx-2">•</span>
                            <strong class="d-block d-md-inline">{FORUMS_TOPICS_ROW_VIEWCOUNT}</strong>
                        </div>
                        <div class="text-muted">
                            {FORUMS_TOPICS_ROW_UPDATED}<br>
                            {FORUMS_TOPICS_ROW_LASTPOSTER} • {FORUMS_TOPICS_ROW_TIMEAGO}
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: FORUMS_TOPICS_ROW -->
        </div>
    </div>

    <!-- Пагинация + кто смотрит -->
    <div class="d-flex flex-column flex-md-row justify-content-between align-items-center gap-3 mb-5 small">
        <div>
            <!-- BEGIN: FORUMS_SECTIONS_VIEWERS -->
            {PHP.L.forums_viewers}: {FORUMS_TOPICS_VIEWERS} {FORUMS_TOPICS_VIEWER_NAMES}
            <!-- END: FORUMS_SECTIONS_VIEWERS -->
        </div>
        <nav aria-label="Pagination">
            <ul class="pagination pagination-sm mb-0">
                {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
            </ul>
        </nav>
    </div>

    <!-- Модальное окно со справкой по иконкам -->
    <button type="button" class="btn btn-outline-info btn-sm" data-bs-toggle="modal" data-bs-target="#forumIconsHelp">
        <i class="fa-solid fa-circle-info me-2"></i>{PHP.L.Help}
    </button>

    <div class="modal fade" id="forumIconsHelp" tabindex="-1" aria-labelledby="forumIconsHelpLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="forumIconsHelpLabel">{PHP.L.Help}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row g-4 small text-center">
                        <div class="col-6 col-md-3">
                            {PHP.R.forums_icon_posts}
                            <div class="mt-2">{PHP.L.forums_nonewposts}</div>
                        </div>
                        <div class="col-6 col-md-3">
                            {PHP.R.forums_icon_posts_new}
                            <div class="mt-2">{PHP.L.forums_newposts}</div>
                        </div>
                        <div class="col-6 col-md-3">
                            {PHP.R.forums_icon_posts_hot}
                            <div class="mt-2">{PHP.L.forums_nonewpostspopular}</div>
                        </div>
                        <div class="col-6 col-md-3">
                            {PHP.R.forums_icon_posts_new_hot}
                            <div class="mt-2">{PHP.L.forums_newpostspopular}</div>
                        </div>

                        <div class="col-6 col-md-3">
                            {PHP.R.forums_icon_posts_sticky}
                            <div class="mt-2">{PHP.L.forums_sticky}</div>
                        </div>
                        <div class="col-6 col-md-3">
                            {PHP.R.forums_icon_posts_new_sticky}
                            <div class="mt-2">{PHP.L.forums_newpostssticky}</div>
                        </div>
                        <div class="col-6 col-md-3">
                            {PHP.R.forums_icon_posts_locked}
                            <div class="mt-2">{PHP.L.forums_locked}</div>
                        </div>
                        <div class="col-6 col-md-3">
                            {PHP.R.forums_icon_posts_new_locked}
                            <div class="mt-2">{PHP.L.forums_newpostslocked}</div>
                        </div>

                        <div class="col-6 col-md-3">
                            {PHP.R.forums_icon_posts_sticky_locked}
                            <div class="mt-2">{PHP.L.forums_announcment}</div>
                        </div>
                        <div class="col-6 col-md-3">
                            {PHP.R.forums_icon_posts_new_sticky_locked}
                            <div class="mt-2">{PHP.L.forums_newannouncment}</div>
                        </div>
                        <div class="col-12 col-md-6">
                            {PHP.R.forums_icon_posts_moved}
                            <div class="mt-2">{PHP.L.forums_movedoutofthissection}</div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{PHP.L.Close}</button>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- END: MAIN -->
