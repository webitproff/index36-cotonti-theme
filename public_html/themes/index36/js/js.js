$(document).ready(function() {

});
// запускаем "tooltip"
document.addEventListener('DOMContentLoaded', function () {
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl);
    });
  });
  
document.addEventListener('DOMContentLoaded', function() {
	const path = window.location.pathname.replace(/^\//, ''); // текущий путь без начального слеша
	document.querySelectorAll('a[href^="#"]').forEach(link => {
		link.href = path + link.getAttribute('href');
	});
});
/**
 * Универсальный скрипт «Читать далее».
 * Работает для всех блоков .readmore-block на странице одновременно.
 * Внутри каждого блока ищет .readmore-body и .readmore-btn.
 * Плавное раскрытие через анимацию height: collapsed → полная высота.
 */
document.addEventListener('DOMContentLoaded', function () {

    // Лимит символов, после которого включаем «Читать далее»
    var LIMIT = 750;

    // Максимальная высота свёрнутого блока (px)
    var COLLAPSED_HEIGHT = 680;

    // Длительность анимации (должна совпадать с CSS transition)
    var DURATION = 450;

    // Обходим все блоки на странице
    document.querySelectorAll('.readmore-block').forEach(function (block) {

        var body = block.querySelector('.readmore-body');
        var btn  = block.querySelector('.readmore-btn');

        if (!body || !btn) return;

        // Считаем длину чистого текста
        var plainText = body.textContent || body.innerText || '';

        // Если текста меньше лимита — кнопку не показываем
        if (plainText.length <= LIMIT) return;

        // Реальная высота контента (без ограничений)
        // Замеряем один раз при инициализации
        body.style.height = 'auto';
        var fullHeight = body.scrollHeight;

        // Ставим начальное свёрнутое состояние (конкретное число)
        body.style.height = COLLAPSED_HEIGHT + 'px';
        body.classList.add('collapsed');

        // Создаём градиент «затухания» внизу блока
        var fade = document.createElement('div');
        fade.className = 'readmore-fade';
        body.appendChild(fade);

        // Показываем кнопку
        btn.classList.remove('d-none');

        // Флаг: идёт ли сейчас анимация (защита от двойного клика)
        var animating = false;

        // Обработчик клика — раскрыть/свернуть
        btn.addEventListener('click', function () {
            if (animating) return;
            animating = true;

            var isExpanded = body.classList.contains('expanded');

            if (isExpanded) {
                // ─── Сворачиваем ───
                // От текущей высоты (авто) явно задаём её числом,
                // иначе transition не сработает
                body.style.height = fullHeight + 'px';

                // Через кадр — на следующее значение, чтобы браузер увидел разницу
                requestAnimationFrame(function () {
                    body.style.height = COLLAPSED_HEIGHT + 'px';
                });

                body.classList.remove('expanded');
                body.classList.add('collapsed');
                btn.textContent = btn.dataset.readMore;
                fade.style.opacity = '1';
            } else {
                // ─── Раскрываем ───
                body.style.height = COLLAPSED_HEIGHT + 'px';
                requestAnimationFrame(function () {
                    body.style.height = fullHeight + 'px';
                });

                body.classList.remove('collapsed');
                body.classList.add('expanded');
                btn.textContent = btn.dataset.collapse;
                fade.style.opacity = '0';
            }

            // По окончании анимации — снимаем ограничение по высоте,
            // чтобы блок мог свободно менять размер (например, картинки)
            setTimeout(function () {
                if (body.classList.contains('expanded')) {
                    body.style.height = 'auto';
                }
                animating = false;
            }, DURATION);
        });
    });
});
