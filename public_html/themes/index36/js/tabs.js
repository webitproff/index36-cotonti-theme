/**
 * tabs.js
 * Кастомный селектор панелей в сайдбаре.
 * Пользователь открывает дропдаун, выбирает нужную панель —
 * она подтягивается в сайдбар, иконка и название в триггере обновляются.
 * Активная панель сохраняется в localStorage.
 */

document.addEventListener('DOMContentLoaded', () => {
  // Ключ для хранения активной вкладки в localStorage
  const STORAGE_KEY = 'sidebar-active-tab';

  // Обёртка селектора
  const selector = document.getElementById('sidebarSelector');
  // Кнопка-триггер
  const toggle = document.getElementById('sidebarSelectorToggle');
  // Выпадающее меню
  const menu = document.getElementById('sidebarSelectorMenu');
  // Блок с текущей иконкой + названием в триггере
  const currentLabel = document.querySelector('.sidebar-selector-current');
  // Все пункты меню
  const items = document.querySelectorAll('.sidebar-selector-item[data-tab]');
  // Все панели внутри .expanded-panels
  const panels = document.querySelectorAll('.expanded-panels .panel-content');

  // Если чего-то нет — выходим
  if (!selector || !toggle || !menu || !items.length || !panels.length) return;

  // Открыть меню
  function openMenu() {
    selector.classList.add('open');
    toggle.setAttribute('aria-expanded', 'true');
  }

  // Закрыть меню
  function closeMenu() {
    selector.classList.remove('open');
    toggle.setAttribute('aria-expanded', 'false');
  }

  // Переключить меню
  function toggleMenu() {
    if (selector.classList.contains('open')) {
      closeMenu();
    } else {
      openMenu();
    }
  }

  /**
   * Активирует панель по имени вкладки.
   * @param {string} tabName — значение data-tab (например, "pages")
   * @param {boolean} [save=true] — сохранять ли выбор в localStorage
   */
  function activateTab(tabName, save = true) {
    // Ищем панель с соответствующим id
    const targetPanel = document.getElementById('panel-' + tabName);
    if (!targetPanel) return;

    // Иконка и текст для обновления триггера
    let activeIcon = '';
    let activeText = '';

    // Обновляем активный пункт в меню, попутно забираем иконку и название
    items.forEach((item) => {
      const isActive = item.dataset.tab === tabName;
      item.classList.toggle('active', isActive);
      if (isActive) {
        const icon = item.querySelector('i');
        const text = item.querySelector('span');
        activeIcon = icon ? icon.className : '';
        activeText = text ? text.textContent : '';
      }
    });

    // Обновляем триггер: иконка + название текущей панели
    if (currentLabel) {
      currentLabel.innerHTML =
        (activeIcon ? '<i class="' + activeIcon + '"></i>' : '') +
        '<span class="sidebar-selector-label">' + activeText + '</span>';
    }

    // Переключаем класс d-none: скрыты все панели, кроме целевой
    panels.forEach((panel) => {
      panel.classList.toggle('d-none', panel.id !== 'panel-' + tabName);
    });

    // Сохраняем выбор в localStorage (если нужно)
    if (save) {
      localStorage.setItem(STORAGE_KEY, tabName);
    }
  }

  // Клик по триггеру: переключить меню, не всплывать выше
  toggle.addEventListener('click', (event) => {
    event.stopPropagation();
    toggleMenu();
  });

  // Клик по пункту меню: активировать панель и закрыть меню
  items.forEach((item) => {
    item.addEventListener('click', () => {
      activateTab(item.dataset.tab);
      closeMenu();
    });
  });

  // Клик вне селектора — закрыть меню
  document.addEventListener('click', (event) => {
    if (!selector.contains(event.target)) closeMenu();
  });

  // Escape — закрыть меню
  document.addEventListener('keydown', (event) => {
    if (event.key === 'Escape') closeMenu();
  });

  // Соответствие кодов Cotonti-расширений (env.ext) именам вкладок сайдбара.
  // Если пользователь зашёл на страницу товара — открывается вкладка market,
  // на страницу статьи — pages, на форум — forums, на профиль — users.
  const EXT_TO_TAB = {
    'page':    'pages',
    'market':  'market',
    'forums':  'forums',
    'users':   'users'
  };

  // Текущее расширение из <body data-ext="...">
  const currentExt = document.body.dataset.ext || '';

  // Имя вкладки, соответствующее текущей странице (или пусто)
  const tabFromExt = EXT_TO_TAB[currentExt] || '';

  // Есть ли такая вкладка среди пунктов селектора
  const tabFromExtExists = tabFromExt &&
    Array.prototype.some.call(items, (it) => it.dataset.tab === tabFromExt);

  if (tabFromExtExists) {
    // 1) Приоритет — вкладка по текущей локации.
    //    Сохраняем её в localStorage, чтобы при возврате на «нейтральные»
    //    страницы (главная, поиск, контакты) открывался тот же раздел.
    activateTab(tabFromExt, true);
  } else {
    // 2) Локация не распознана — фолбэк на localStorage,
    //    затем на класс active в HTML, затем на первую доступную.
    const savedTab = localStorage.getItem(STORAGE_KEY);
    const savedPanel = savedTab ? document.getElementById('panel-' + savedTab) : null;

    if (savedPanel) {
      activateTab(savedTab, false);
    } else {
      const activeItem = document.querySelector('.sidebar-selector-item[data-tab].active');
      const fallback = activeItem ? activeItem.dataset.tab : items[0].dataset.tab;
      activateTab(fallback, false);
    }
  }
});