/**
 * Index36 - Theme for Cotonti CMF
 * Vertical pagination fallback for templates that render plain Bootstrap
 * <ul class="pagination"> without a dedicated vertical markup.
 *
 * Compatibility: [CMF/CMS Cotonti V.1](https://github.com/Cotonti/Cotonti); PHP-8.5 & MySQL-8.4
 * File: pagination-vertical.js
 * Placement: /themes/index36/js/pagination-vertical.js
 * Description: Finds every <ul class="pagination"> on the page and rewrites
 *              it into a vertical block: [prev] [<select>] [next].
 *              Any <ul> that carries the class .no-vertical-pagination is
 *              skipped, so a template can opt out by adding that class.
 * Created: 05 Oct 2026
 * Source code: https://github.com/webitproff/index36-cotonti-theme
 * Support & Help: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
 * Page in Marketplace: https://abuyfile.com/ru/market/cotonti/themes/index36
 *
 * @package index36
 * @version 2.1.1
 * @author webitproff
 * @copyright (c) 2026 webitproff | https://github.com/webitproff
 * @license BSD (Free using and distribution with saving copyrights)
 */

(function () {
  'use strict';

  /**
   * Возвращает текст ссылки внутри пункта пагинации.
   * @param {HTMLLIElement} li
   * @returns {string}
   */
  function getLabel(li) {
    var a = li.querySelector('a.page-link');
    return a ? (a.textContent || '').trim() : '';
  }

  /**
   * Возвращает URL ссылки внутри пункта пагинации.
   * @param {HTMLLIElement} li
   * @returns {string}
   */
  function getHref(li) {
    var a = li.querySelector('a.page-link');
    return a ? a.href : '';
  }

  /**
   * Проверяет, является ли текст номером страницы.
   * @param {string} label
   * @returns {boolean}
   */
  function isNumeric(label) {
    return /^\d+$/.test(label);
  }

  /**
   * Перестраивает <ul class="pagination"> в блок: prev + select + next.
   *
   * Cotonti не проставляет rel="prev"/rel="next" на ссылках (placeholder
   * {$rel} пуст при выключенном AJAX), поэтому prev/next определяем
   * по позиции относительно числовых страниц:
   *   [first] [prev] [числа…] [next] [last]
   *   prev — последний НЕчисловой элемент перед первым числовым;
   *   next — первый НЕчисловой элемент после последнего числового.
   *
   * @param {HTMLUListElement} ul — исходный список пагинации Bootstrap 5.
   */
  function buildPagination(ul) {
    // Шаблон может отказаться от вертикального варианта, навесив на <ul>
    // класс .no-vertical-pagination.
    if (ul.classList.contains('no-vertical-pagination')) return;

    var items = Array.prototype.slice.call(ul.querySelectorAll('li.page-item'));
    if (!items.length) return;

    // Границы числового диапазона.
    var firstNumericIdx = -1;
    var lastNumericIdx = -1;
    items.forEach(function (li, i) {
      if (isNumeric(getLabel(li))) {
        if (firstNumericIdx === -1) firstNumericIdx = i;
        lastNumericIdx = i;
      }
    });

    // Числовых ссылок нет — строить нечего.
    if (firstNumericIdx === -1) return;

    // Prev: ищем нечисловой элемент ПЕРЕД первым числовым (идём с конца).
    var prevUrl = '';
    for (var p = firstNumericIdx - 1; p >= 0; p--) {
      if (!isNumeric(getLabel(items[p]))) {
        prevUrl = getHref(items[p]);
        if (prevUrl) break;
      }
    }

    // Next: ищем нечисловой элемент ПОСЛЕ последнего числового.
    var nextUrl = '';
    for (var n = lastNumericIdx + 1; n < items.length; n++) {
      if (!isNumeric(getLabel(items[n]))) {
        nextUrl = getHref(items[n]);
        if (nextUrl) break;
      }
    }

    // Опции для select — только числовые страницы.
    var options = [];
    for (var i = firstNumericIdx; i <= lastNumericIdx; i++) {
      var label = getLabel(items[i]);
      if (isNumeric(label)) {
        options.push({
          url: getHref(items[i]),
          num: label,
          // Активный пункт — тот, чей <li> несёт класс .active.
          active: items[i].classList.contains('active')
        });
      }
    }
    if (!options.length) return;

    // Контейнер: строка Bootstrap, без переноса, центрирование.
    var wrap = document.createElement('div');
    wrap.className = 'row g-2 justify-content-center align-items-center my-4 flex-nowrap';

    // 1. Prev.
    if (prevUrl) {
      var pc = document.createElement('div');
      pc.className = 'col-auto';
      var pa = document.createElement('a');
      pa.className = 'btn btn-outline-secondary';
      pa.href = prevUrl;
      pa.rel = 'prev';
      pa.textContent = '←';
      pc.appendChild(pa);
      wrap.appendChild(pc);
    }

    // 2. Select.
    var sc = document.createElement('div');
    sc.className = 'col col-sm-auto';
    var sel = document.createElement('select');
    sel.className = 'form-select';
    // Уникальный id, чтобы label не конфликтовал, если блоков несколько.
    sel.id = 'pageNavSelect-' + Math.random().toString(36).slice(2, 8);

    options.forEach(function (o) {
      var opt = document.createElement('option');
      opt.value = o.url;
      opt.textContent = o.num;
      if (o.active) opt.selected = true;
      sel.appendChild(opt);
    });
    sel.addEventListener('change', function () {
      if (this.value) window.location.href = this.value;
    });
    sc.appendChild(sel);
    wrap.appendChild(sc);

    // 3. Next.
    if (nextUrl) {
      var nc = document.createElement('div');
      nc.className = 'col-auto';
      var na = document.createElement('a');
      na.className = 'btn btn-outline-secondary';
      na.href = nextUrl;
      na.rel = 'next';
      na.textContent = '→';
      nc.appendChild(na);
      wrap.appendChild(nc);
    }

    // Подмена в DOM.
    ul.parentNode.replaceChild(wrap, ul);
  }

  /**
   * Инициализация: находим все пагинации на странице и перестраиваем.
   */
  function init() {
    document.querySelectorAll('ul.pagination').forEach(buildPagination);
  }

  // Если DOM ещё грузится — ждём; иначе запускаем сразу.
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();