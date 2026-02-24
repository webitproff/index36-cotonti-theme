# Index36: Modern Theme for Cotonti CMF

[![Version](https://img.shields.io/badge/version-1.0.2-green.svg)](https://github.com/webitproff/index36-cotonti-theme/releases)
[![Cotonti Compatibility](https://img.shields.io/badge/Cotonti_Siena-0.9.26-orange.svg)](https://github.com/Cotonti/Cotonti)
[![PHP](https://img.shields.io/badge/PHP-8.4-purple.svg)](https://www.php.net/releases/8_4_0.php)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue.svg)](https://www.mysql.com/)
[![Bootstrap v5.3.8](https://img.shields.io/badge/Bootstrap-v5.3.8-blueviolet.svg)](https://getbootstrap.com/)
[![License](https://img.shields.io/badge/license-BSD-blue.svg)](https://github.com/webitproff/index36-cotonti-theme/blob/main/LICENSE)

## [LIVE DEMO](https://freelance-script.abuyfile.com/)


![index-36_pict_3](https://github.com/user-attachments/assets/0bbd7b83-6e90-41ec-8e37-a2d9626b704f)


The theme is perfect for projects ranging from simple business cards to complex portals, including blogs, marketplaces, freelance platforms, forums, and corporate websites. Index36 is a full-featured ecosystem for website users. The main focus is on the sidebar, which serves as the central hub for navigation and administration. 

The website template is simple enough for a quick start and immediate customization. Suitable for beginner to advanced developers. Not for complete novices!

## Index36 – Flexibility, Style, and Convenience

## Introduction to Index36

Index36 is an innovative theme for Cotonti Siena, one of the most flexible and powerful PHP-based CMFs. Designed with modern web design trends in mind, this theme combines an elegant interface, high performance, and extensive customization options. Created by web development enthusiast under the pseudonym **webitproff**, Index36 is aimed at users seeking a professional-looking site without compromising functionality. The theme is ideal for projects from simple business cards to complex portals, including blogs, forums, and corporate websites.

With a focus on both administrators and end-users, Index36 integrates advanced content management tools, providing a seamless experience across all devices. Thanks to its open BSD license, the theme is available for free use and distribution while preserving copyright, making it attractive to the Cotonti developer community.

## Key Design Features

Index36 stands out with a minimalist yet expressive design inspired by modern web standards. The theme uses responsive layouts that automatically adapt to smartphones, tablets, and desktops, ensuring optimal content display under any conditions.

- **Dark and Light Mode Support**: Users can switch between light and dark themes with a single click, considering the browser's system preferences. This not only improves readability at different times of day but also reduces eye strain, making site interaction more comfortable.
- **Integration of Modern Libraries**: Built-in Bootstrap support provides responsive elements such as modals, notifications, and navigation panels. Font Awesome adds a rich set of icons for visual accents, while Perfect Scrollbar ensures smooth scrolling in sidebars, even with large amounts of content.
- **Customizable Header and Footer**: The site header includes a logo, sidebar toggle, language selector, notifications, and user profile. The footer displays technical information such as PHP version, compatibility mode, and page generation statistics, which is useful for administrators.

The design emphasizes clean lines and a focus on content, using color variables for easy CSS customization.

## Functionality and User Interface

Index36 is not just a template – it is a full-featured ecosystem for website management. The main focus is on the sidebar, which serves as the central hub for navigation and administration.

- **Expandable Tabbed Sidebar**: The sidebar is divided into thematic tabs, including pages (articles and news), forums, users, plugins, and additional elements. Each tab opens a panel with quick access to search, categories, and administrative tools. On mobile devices, the sidebar collapses to save space but remains accessible with a click.
- **Localization and Frontpage Content**: The theme includes complete Russian localization with custom interface strings. The homepage features sections for beginners, such as "What is Cotonti?", explaining the advantages of the CMF. Additional blocks cover app downloads, development services (plugins, modules, templates), and migration from other CMSs like WordPress or Bitrix.
- **Administrative Tools**: Administrators have quick links for page moderation, module configuration (Pages, Forums, Users), managing extrafields, and group permissions. This simplifies daily tasks such as editing categories, forum search, or statistics analysis.
- **Module and Plugin Integration**: The theme seamlessly integrates with popular Cotonti modules such as forums, users, and pages. Plugin support, like whosonline, statistics, and contact, adds functionality including online user display, analytics, and feedback forms.

The user experience is enhanced with elements such as new message notifications, profile avatars, and content file insertion tools.

## Compatibility and Installation

Index36 is fully compatible with Cotonti Siena version 0.9.26 and higher, running on PHP 8.4 and MySQL 8.0. The theme uses built-in Cotonti resources for library inclusion, minimizing dependencies and ensuring fast load times.

- **Requirements**: Ensure your Cotonti installation is up to date. The theme supports legacy mode for compatibility with older plugins, but disabling it is recommended for optimal performance.
- **Installation**: Download the theme from the author's GitHub repository and place it in the themes directory. Activate it in the Cotonti admin panel. For customization, edit localization and style files following the documentation.

The developer provides support through the community forum and GitHub, including free consultations and paid enhancements.

## Conclusion

Index36 is not just a theme, but a tool for creating professional Cotonti websites. Combining aesthetics, functionality, and simplicity, it is ideal for developers who want to quickly deploy a project and administrators who value convenience. With open-source code and an active community, Index36 continues to evolve, offering endless personalization possibilities. If you are looking for a balance between style and efficiency, this theme will provide a reliable foundation for your next web project.

[**Permanent link to the latest source code on GitHub.**](https://github.com/webitproff/index36-cotonti-theme)

```
index36/                         # Главная папка темы Index36
├── assets/                      # Статические ресурсы фронтенда (библиотеки, стили, скрипты)
│   ├── fancybox/                # Лайтбокс / модальная галерея изображений
│   │   ├── fancybox.css
│   │   └── fancybox.umd.js
│   ├── jquery/                  # jQuery (базовая библиотека)
│   │   └── jquery.min.js        # (файл НЕ подключен!) подключать в /themes/index36/index36.rc.php
│   ├── perfect-scrollbar/       # Кастомный скроллбар
│   │   ├── js-perfect-scrollbar.js   # кастомные скрипты perfect-scrollbar
│   │   ├── perfect-scrollbar.css     # стили библиотеки
│   │   ├── perfect-scrollbar.min.js  # скрипты библиотеки
│   │   └── styles-perfect-scrollbar.css  # кастомные стили perfect-scrollbar
│   └── select2/                 # Красивый выпадающий список / мультиселект
│       ├── js-select2.js        # кастомные скрипты для select2 (файл используется)
│       ├── select2.min.css      # Стили библиотеки select2 (файл НЕ подключен!)
│       ├── select2.min.js       # Скрипты библиотеки select2 (файл НЕ подключен!)
│       └── style-select2.css    # кастомные стили для select2 (файл используется)
├── css/                         # Основные стили темы
│   ├── default.css              # Главный файл стилей темы (базовый набор)
│   ├── header.last.css          # Стили, подключаемые в самом конце <head> (переопределения)
│   ├── index.html               # Защита от просмотра содержимого папки
│   └── modalbox.css             # Стили для системных модальных окон Cotonti
├── img/                         # Изображения, иконки, флаги, заглушки
│   ├── flags/                   # Флаги языков (webp)
│   │   ├── en.webp
│   │   ├── gb.webp
│   │   ├── ru.webp
│   │   └── ua.webp
│   ├── app-logo.svg
│   ├── auth.svg
│   ├── avatar-demo.jpg
│   ├── cat-icon-default.svg
│   ├── credit-card.svg
│   ├── dashboard-meet.svg
│   ├── help.svg
│   ├── mobile-app.svg
│   ├── online0.png
│   ├── online1.png
│   ├── page-default-image.jpg
│   ├── queue-dark.svg
│   ├── rocket.svg
│   └── userimg_default_background.jpg
├── inc/                         # Дополнительные html-вставки / блоки (не модули/не плагины)
│   └── index.html               # Защита папки от листинга
├── js/                          # Собственные javascript-файлы темы
│   ├── header.first.js          # Скрипты, подключаемые в начале (очень рано)
│   ├── index.html               # Защита
│   └── js.js                    # Основной кастомный JS-файл темы
├── modules/                     # Шаблоны модулей Cotonti
│   ├── forums/                  # Модуль «Форум»
│   │   ├── forums.editpost.tpl          # редактирование сообщения
│   │   ├── forums.newtopic.tpl          # создание новой темы
│   │   ├── forums.posts.tpl             # просмотр темы + посты
│   │   ├── forums.sections.tpl          # список разделов форума
│   │   └── forums.topics.tpl            # список тем в разделе
│   ├── page/                    # Модуль «Страницы / Статьи»
│   │   ├── page.add.tpl                 # добавление страницы
│   │   ├── page.edit.tpl                # редактирование страницы
│   │   ├── page.enum.tpl                # перечисление / вывод по тегам / etc.
│   │   ├── page.list.tpl                # список страниц в категории
│   │   ├── page.list.news.tpl           # расширенный шаблон списка страниц в категории новостей
│   │   ├── page.list.unvalidated.tpl    # список страниц на модерации
│   │   ├── page.news.tpl                # расширенный шаблон новости/статьи
│   │   └── page.tpl                     # основной шаблон полной страницы
│   ├── pfs/                     # Личный менеджер файлов (Personal File Space)
│   │   ├── pfs.edit.tpl                 # редактирование файла
│   │   ├── pfs.editfolder.tpl           # редактирование папки
│   │   ├── pfs.tpl                      # основной интерфейс PFS
│   │   └── pfs.view.tpl                 # просмотр одного файла
│   ├── pm/                      # Личные сообщения
│   │   ├── pm.list.tpl                  # список сообщений
│   │   ├── pm.message.tpl               # просмотр одного сообщения + ответ
│   │   ├── pm.popUpNotification.tpl     # всплывающее уведомление о новом ЛС
│   │   └── pm.send.tpl                  # форма отправки сообщения
│   ├── polls/                   # Опросы / голосования
│   │   ├── polls.index.tpl              # опрос(ы) на главной странице
│   │   └── polls.tpl                    # страница всех опросов / отдельный опрос
│   └── users/                   # Пользователи, профили, регистрация
│       ├── users.details.tpl            # публичная страница пользователя
│       ├── users.edit.tpl               # редактирование профиля админом
│       ├── users.passrecover.tpl        # восстановление пароля
│       ├── users.profile.tpl            # редактирование своего профиля
│       ├── users.register.tpl           # регистрация нового пользователя
│       └── users.tpl                    # список пользователей
├── plugins/                     # Шаблоны популярных плагинов
│   ├── attacher/                # Прикрепление файлов к страницам/постам
│   │   ├── attacher.display.first.tpl      # первый прикреплённый файл картинки для полной статьи/страницы
│   │   └── attacher.display.listfirst.tpl  # первый прикреплённый файл картинки для для статей в списках
│   ├── comments/                # Комментарии
│   │   ├── comments.edit.tpl               # форма редактирования комментария
│   │   ├── comments.recent.widget.tpl      # виджет последних комментариев (админка)
│   │   └── comments.tpl                    # основной блок комментариев
│   ├── contact/                 # Обратная связь
│   │   └── contact.tpl                     # форма обратной связи
│   ├── i18n/                    # Мультиязычность контента (страницы + структура)
│   │   ├── i18n.locales.tpl                # список доступных языков
│   │   ├── i18n.page.tpl                   # локализация страницы
│   │   └── i18n.structure.tpl              # локализация категорий
│   ├── indexnews/               # Новости/статьи на главной
│   │   └── indexnews.tpl                   # блок новостей на главной
│   ├── recentitems/             # Последние обновления (страницы + форум)
│   │   ├── recentitems.forums.index.tpl    # последние темы форума на главной
│   │   ├── recentitems.forums.tpl          # последние темы форума
│   │   ├── recentitems.pages.index.tpl     # последние страницы на главной
│   │   ├── recentitems.pages.tpl           # последние страницы
│   │   └── recentitems.tpl                 # общая страница последних обновлений
│   ├── search/                  # Поиск по сайту
│   │   ├── _search.tpl                     # возможно — внутренний подшаблон поиска
│   │   └── search.tpl                      # основная страница поиска
│   ├── statistics/              # Статистика сайта
│   │   └── statistics.tpl                  # страница статистики
│   ├── tags/                    # Облако/поиск по тегам
│   │   └── tags.tpl                        # страница тегов / облако тегов
│   ├── treecatspage/            # Древовидный вывод категорий страниц
│   │   ├── treecatspage.page.tree.sidebar.tpl   # дерево категорий в сайдбаре
│   │   └── treecatspage.page.tree.tpl           # полное дерево категорий
│   └── whosonline/              # Кто онлайн
│       └── whosonline.tpl                  # список кто онлайн
├── error.403.tpl                # Ошибка 403 — доступ запрещён
├── error.404.tpl                # Ошибка 404 — страница не найдена
├── error.tpl                    # Общий шаблон критических ошибок
├── footer.tpl                   # Нижняя часть страницы (подвал)
├── header.tpl                   # Верхняя часть страницы (шапка)
├── index.tpl                    # Главная страница сайта
├── index36.en.lang.php          # Английская локализация темы
├── index36.functions.php        # Пользовательские функции темы
├── index36.php                  # Главный файл темы (входная точка)
├── index36.rc.php               # Подключение ресурсов (css/js) через систему Resources
├── index36.resources.php        # Переопределение системных строк / блоков Cotonti
├── index36.ru.lang.php          # Русская локализация темы
├── index36.ua.lang.php          # Украинская локализация темы
├── login.tpl                    # Страница входа / авторизации
├── message.tpl                  # Системные сообщения и модальные подтверждения
├── plugin.tpl                   # Универсальный шаблон для страниц плагинов
├── popup.tpl                    # Содержимое всплывающих окон (popup)
└── warnings.tpl                 # Уведомления (ошибки, успех, предупреждения)

```

 - Description: [https://abuyfile.com/ru/market/cotonti/themes/index36](https://abuyfile.com/ru/market/cotonti/themes/index36)
 - Extension: Core System Cotonti
 - Compatibility:[ CMF/CMS Cotonti Siena v0.9.26](https://github.com/Cotonti/Cotonti)
 - Dependencies: 
 		 Bootstrap 5.3.+[](https://getbootstrap.com/); 
		 Font Awesome Free 7.1[](https://fontawesome.com/)
 - Theme: Index36  
 - Version: 1.0.2 
 - Created: 01 Feb 2026 
 - Updated: 24 Feb 2026 
 - Copyright (c) 2026 webitproff | https://github.com/webitproff
 - Source: https://github.com/webitproff/index36-cotonti-theme
 - Demo: [https://freelance-script.abuyfile.com](https://freelance-script.abuyfile.com)
 - [Help and support](https://abuyfile.com/ru/forums/cotonti/original/skins/index36)
 - License: BSD (Free distribution with saving Copyright (c) 2026 webitproff)  

