$(document).ready(function() {

});
// запускаем "tooltip"
document.addEventListener('DOMContentLoaded', function () {
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl);
    });
  });

// для закладок, если в статье есть оглавление со ссылками на разделы
document.addEventListener('DOMContentLoaded', function() {
	const path = window.location.pathname.replace(/^\//, ''); // текущий путь без начального слеша
	document.querySelectorAll('a[href^="#"]').forEach(link => {
		link.href = path + link.getAttribute('href');
	});
});
