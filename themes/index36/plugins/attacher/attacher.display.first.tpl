<!--
	/********************************************************************************
	* File: attacher.display.first.tpl
	* Extension: plugin 'attacher' [Download](https://github.com/webitproff/cot-Attacher-Roffun)
	* Description: HTML template for attacher plugin - display first attached image in page.tpl.
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
<style>
	a[data-fancybox="gallery"] {
    display: block;
    text-decoration: none;
	}
	a[data-fancybox="gallery"]:hover {
    cursor: zoom-in; /* Курсор "лупа с плюсом" */
	}
	a[data-fancybox="gallery"]:hover img {
    transform: scale(1.05);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    filter: brightness(1.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease, filter 0.3s ease;
	}
	a[data-fancybox="gallery"] img {
    transition: transform 0.3s ease, box-shadow 0.3s ease, filter 0.3s ease;
	}
	#container-carousel .carousel-item {
	height: 420px;
	position: relative;
	overflow: hidden;
	}
	#container-carousel .carousel-item img {
	width: 100%;
	height: 420px;
	object-fit: contain;
	object-position: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	}
	.fancybox-image {
    border-radius: 15px;
	}
</style>

<div id="container-carousel" class="carousel slide " data-bs-ride="true">
	<div class="carousel-inner rounded-5 shadow-bottom">
		
		<!-- BEGIN: ATTACHER_ROW -->
		<!-- IF {ATTACHER_ROW_NUM} == '1' -->
		<div class="carousel-item <!-- IF {ATTACHER_ROW_NUM} == '1' --> active<!-- ENDIF -->">
			<a data-fancybox="gallery" data-src="{ATTACHER_ROW_URL}" data-caption="{ATTACHER_ROW_TITLE}">
				<img src="{ATTACHER_ROW_URL}" alt="{ATTACHER_ROW_TITLE} - {ATTACHER_ROW_FILENAME}" title="{ATTACHER_ROW_TITLE} - {ATTACHER_ROW_FILENAME}"  class="img-fluid rounded" style="aspect-ratio: 1/1; object-fit: cover;">
			</a>
		</div>
		<!-- ENDIF -->
		<!-- END: ATTACHER_ROW -->
		
	</div>
</div>


<script>
	Fancybox.bind('[data-fancybox="gallery"]', {
        Toolbar: {
			display: {
				left: ["infobar"],
				middle: [
				"zoomIn",
				"zoomOut",
				"toggle1to1",
				"rotateCCW",
				"rotateCW",
				"flipX",
				"flipY",
				],
				right: ["slideshow", "thumbs", "close"],
			},
		},
	});    
</script>

<!-- END: MAIN -->
