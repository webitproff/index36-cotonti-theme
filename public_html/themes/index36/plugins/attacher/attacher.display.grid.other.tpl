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
 <div class="row row-cols-auto g-3 mb-3">
<!-- BEGIN: ATTACHER_ROW -->
<!-- IF {ATTACHER_ROW_NUM} > '1' -->
 <div class="col">
	<a data-fancybox="gallery" data-src="{ATTACHER_ROW_URL}" data-caption="{ATTACHER_ROW_TITLE}">
	  <img src="{ATTACHER_ROW_ID|att_thumb($this,72,72,'crop')}" alt="{ATTACHER_ROW_TITLE} - {ATTACHER_ROW_FILENAME}" title="{ATTACHER_ROW_TITLE} - {ATTACHER_ROW_FILENAME}"  class="img-fluid rounded shadow-bottom" style="aspect-ratio: 1/1; object-fit: cover;">
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
	// Закрытие по клику на фон — основной способ
    closeClickOutside: true,

    // Дополнительно (на всякий случай, если первый не сработал)
    backdropClick: true,
    </script>

<!-- END: MAIN -->
