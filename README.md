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



**Installation instructions for the "Index36" theme on Cotonti Siena CMF**

A theme in Cotonti is a set of files (`.tpl` templates, css, js, images and php files) that is responsible for the appearance and functionality of the site.

> **Warnings:** make full backups of the site and store them on your local computer.  
> The theme was created and tested on local and shared servers with PHP 8.4, MySQL 8.0, as well as on the latest current version of Cotonti Siena CMF from the repository as of 24.02.2026.  
> **"Index36" is not a theme for beginners.** If you are just getting familiar with Cotonti, you should first study XTemplate (CoTemplate), especially the template code syntax in .tpl files.  
> For educational purposes, beginners are recommended to start with the **CleanCot** theme [**repository link**](https://github.com/webitproff/cot-CleanCot).  
> It contains detailed explanations of the purpose of templates, and the code is commented, which helps in understanding how Cotonti works with Bootstrap.

### Step #1.

Download the archive of the current version of the "Index36" theme from the repository [**GitHub - archive link**](https://github.com/webitproff/index36-cotonti-theme/archive/refs/heads/main.zip).  
The archive file is less than 1 MB in size.

### Step #2.

Unpack the archive and open the `themes` folder, which contains the `index36` folder.  
Copy the `index36` folder to the `themes/` directory of your Cotonti site. The path should look like, for example:

```
public_html/themes/index36/
```

### Step #3.

Make sure all files and subfolders have been transferred without loss. It is best to use "FileZilla Client" or another file manager for remote access.  
If you find any missing files, upload them again.

### Step #4. Configuration file setup

Open the `datas/config.php` file in the root of your Cotonti site (e.g. `public_html/datas/config.php`).  
Find the line with the theme setting:

```
$cfg['defaulttheme'] = 'nemesis'; // or any other value you have instead of 'nemesis'
```

Replace it with:

```
$cfg['defaulttheme'] = 'index36';
```

Save the changes and upload the file back to the server.

### Step #5. Activating the template

Go to the admin panel:  
**Site management** → **Configuration** → **Themes**

1. In the first line "Force default theme for all users" select **Yes**.
2. In the second line "Link to homepage in breadcrumb" select **Yes**.
3. In the third line "Separator" leave the field empty.  
   Configure the remaining options at your discretion.  
   Don't forget to save the changes.

### Step #6. Extrafields (optional)

**6.1. User first and last name**  
Go to **Site management** → **Miscellaneous** → **Extrafields** → **Table cot_users** (Users module).  
At the bottom of the page in the new field form add:

- Field name: `firstname`
- Field description (_TITLE): "First name"
- Field type: "input"  
  Then click **Add**.

Then add the next field:

- Field name: `lastname`
- Field description (_TITLE): "Last name"
- Field type: "input"  
  Do not change other parameters, click **Add**.

### Step #7. Background image on user profile page

Go to **Site management** → **Extensions** → **User Images** → **Administration**.  
In the code field enter `background`, and in the "Width" and "Height" fields set:

- Width: 1400
- Height: 300  
  Ratio: "Fit" (target dimensions: width:height).  
  Click **Add/Update**.  

Note: it is recommended to use images no larger than 1 MB (JPG/PNG).

### Step #8. Connecting Font Awesome 7.2 icons

Detailed instructions for connecting are available in the topic [**forum link**](https://abuyfile.com/ru/forums/cotonti/original/skins/index36/topic185).

### Step #9. Post-installation extensions

Optionally install plugins, for example "Category Tree", or other extensions available in the [**Cotonti marketplace**](https://abuyfile.com/ru/market/cotonti).

---

The "Index36" theme is fully compatible with the out-of-the-box engine.  
Happy installation and beautiful site on Cotonti!  
If you encounter problems with specific errors, feel free to [**ask on the forum**](https://abuyfile.com/ru/forums/cotonti/original/skins/index36) and describe the issue — I will help you figure it out.

File map of the Index36 theme and main template for Cotonti Siena.  
*(it's more correct to say “site theme”)*

```
index36/                         # Main folder of the Index36 theme
├── assets/                      # Frontend static resources (libraries, styles, scripts)
│   ├── fancybox/                # Lightbox / modal image gallery
│   │   ├── fancybox.css
│   │   └── fancybox.umd.js
│   ├── jquery/                  # jQuery (base library)
│   │   └── jquery.min.js        # (this file is NOT connected!) — connect it in /themes/index36/index36.rc.php
│   ├── perfect-scrollbar/       # Custom scrollbar
│   │   ├── js-perfect-scrollbar.js   # custom perfect-scrollbar scripts
│   │   ├── perfect-scrollbar.css     # library styles
│   │   ├── perfect-scrollbar.min.js  # library scripts
│   │   └── styles-perfect-scrollbar.css  # custom perfect-scrollbar styles
│   └── select2/                 # Beautiful dropdown list / multiselect
│       ├── js-select2.js        # custom scripts for select2 (this file is used)
│       ├── select2.min.css      # select2 library styles (this file is NOT connected!)
│       ├── select2.min.js       # select2 library scripts (this file is NOT connected!)
│       └── style-select2.css    # custom styles for select2 (this file is used)
├── css/                         # Main theme styles
│   ├── default.css              # Main stylesheet of the theme (basic set)
│   ├── header.last.css          # Styles connected at the very end of <head> (overrides / last priority)
│   ├── index.html               # Protection against directory listing
│   └── modalbox.css             # Styles for Cotonti system modal windows
├── img/                         # Images, icons, flags, placeholders
│   ├── flags/                   # Language flags (webp format)
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
├── inc/                         # Additional HTML inserts / blocks (not modules, not plugins)
│   └── index.html               # Directory protection
├── js/                          # Theme's own JavaScript files
│   ├── header.first.js          # Scripts connected very early (in the beginning of <head>)
│   ├── index.html               # Protection
│   └── js.js                    # Main custom JS file of the theme
├── modules/                     # Cotonti module templates
│   ├── forums/                  # «Forums» module
│   │   ├── forums.editpost.tpl          # editing a forum post
│   │   ├── forums.newtopic.tpl          # creating a new forum topic
│   │   ├── forums.posts.tpl             # viewing a topic + posts
│   │   ├── forums.sections.tpl          # list of forum sections/categories
│   │   └── forums.topics.tpl            # list of topics in a section
│   ├── page/                    # «Pages / Articles» module
│   │   ├── page.add.tpl                 # adding a new page/article
│   │   ├── page.edit.tpl                # editing a page
│   │   ├── page.enum.tpl                # enumeration / output by tags / etc.
│   │   ├── page.list.tpl                # list of pages in a category
│   │   ├── page.list.news.tpl           # extended template for news/articles list in category
│   │   ├── page.list.unvalidated.tpl    # list of pages awaiting moderation
│   │   ├── page.news.tpl                # extended single news/article template
│   │   └── page.tpl                     # main full page template
│   ├── pfs/                     # Personal File Space (user file manager)
│   │   ├── pfs.edit.tpl                 # editing a file
│   │   ├── pfs.editfolder.tpl           # editing a folder
│   │   ├── pfs.tpl                      # main PFS interface
│   │   └── pfs.view.tpl                 # viewing a single file
│   ├── pm/                      # Private messages
│   │   ├── pm.list.tpl                  # list of messages
│   │   ├── pm.message.tpl               # viewing one message + reply form
│   │   ├── pm.popUpNotification.tpl     # popup notification about new PM
│   │   └── pm.send.tpl                  # message sending form
│   ├── polls/                   # Polls / voting
│   │   ├── polls.index.tpl              # poll(s) on the homepage
│   │   └── polls.tpl                    # page with all polls / single poll view
│   └── users/                   # Users, profiles, registration
│       ├── users.details.tpl            # public user profile page
│       ├── users.edit.tpl               # editing user profile by admin
│       ├── users.passrecover.tpl        # password recovery
│       ├── users.profile.tpl            # editing own profile
│       ├── users.register.tpl           # new user registration
│       └── users.tpl                    # list of users
├── plugins/                     # Templates for popular plugins
│   ├── attacher/                # File attachments to pages/posts
│   │   ├── attacher.display.first.tpl      # first attached image for full article/page view
│   │   └── attacher.display.listfirst.tpl  # first attached image for articles in lists
│   ├── comments/                # Comments
│   │   ├── comments.edit.tpl               # comment editing form
│   │   ├── comments.recent.widget.tpl      # recent comments widget (admin area)
│   │   └── comments.tpl                    # main comments block
│   ├── contact/                 # Contact form / feedback
│   │   └── contact.tpl                     # contact/feedback form
│   ├── i18n/                    # Content multilanguage (pages + structure)
│   │   ├── i18n.locales.tpl                # list of available languages
│   │   ├── i18n.page.tpl                   # page localization
│   │   └── i18n.structure.tpl              # categories/structure localization
│   ├── indexnews/               # News/articles on homepage
│   │   └── indexnews.tpl                   # news block on the main page
│   ├── recentitems/             # Recent updates (pages + forum)
│   │   ├── recentitems.forums.index.tpl    # latest forum topics on homepage
│   │   ├── recentitems.forums.tpl          # latest forum topics
│   │   ├── recentitems.pages.index.tpl     # latest pages on homepage
│   │   ├── recentitems.pages.tpl           # latest pages
│   │   └── recentitems.tpl                 # general recent items page
│   ├── search/                  # Site search
│   │   ├── _search.tpl                     # possible internal search sub-template
│   │   └── search.tpl                      # main search page
│   ├── statistics/              # Site statistics
│   │   └── statistics.tpl                  # statistics page
│   ├── tags/                    # Tags cloud / tag search
│   │   └── tags.tpl                        # tags page / tag cloud
│   ├── treecatspage/            # Tree view of page categories
│   │   ├── treecatspage.page.tree.sidebar.tpl   # category tree in sidebar
│   │   └── treecatspage.page.tree.tpl           # full category tree
│   └── whosonline/              # Who is online
│       └── whosonline.tpl                  # who is online list
├── error.403.tpl                # 403 — Access denied error
├── error.404.tpl                # 404 — Page not found error
├── error.tpl                    # General critical error template
├── footer.tpl                   # Page footer (bottom part)
├── header.tpl                   # Page header (top part)
├── index.tpl                    # Homepage of the site
├── index36.en.lang.php          # English localization of the theme
├── index36.functions.php        # Custom functions of the theme
├── index36.php                  # Main theme file (entry point)
├── index36.rc.php               # Connecting resources (css/js) via Cotonti Resources system
├── index36.resources.php        # Overriding system strings / blocks of Cotonti
├── index36.ru.lang.php          # Russian localization of the theme
├── index36.ua.lang.php          # Ukrainian localization of the theme
├── login.tpl                    # Login / authorization page
├── message.tpl                  # System messages and modal confirmations
├── plugin.tpl                   # Universal template for plugin pages
├── popup.tpl                    # Content of popup windows
└── warnings.tpl                 # Notices (errors, success, warnings)
```


___

**Инструкция по установке темы "Index36" на Cotonti Siena CMF**

Тема в Cotonti — это набор файлов (шаблоны `.tpl`, css, js, изображения и php-файлы), который отвечает за внешний вид и работу сайта.

> **Предупреждения:** сделайте полные резервные копии сайта и сохраните их на локальном компьютере.  
> Тема была создана и тестировалась на локальных и шеред-серверах с PHP 8.4, MySQL 8.0, а также на последней актуальной версии Cotonti Siena CMF из репозитория по состоянию на 24.02.2026.  
> **"Index36" — это тема не для новичков.** Если вы только знакомитесь с Cotonti, вам следует сначала изучить XTemplate (CoTemplate), особенно синтаксис кода в .tpl-шаблонах.  
> Для образовательных целей новичкам рекомендуется начать с темы **CleanCot** [**ссылка на репозиторий**](https://github.com/webitproff/cot-CleanCot).  
> В ней подробно объясняется назначение шаблонов, а код прокомментирован, что помогает понять, как Cotonti работает с Bootstrap.

### Шаг №1.

Скачайте архив актуальной версии темы "Index36" из репозитория [**GitHub — ссылка на архив**](https://github.com/webitproff/index36-cotonti-theme/archive/refs/heads/main.zip).  
Файл архива весит менее 1 МБ.

### Шаг №2.

Распакуйте архив и откройте папку `themes`, в которой будет папка `index36`.  
Скопируйте папку `index36` в директорию `themes/` вашего сайта Cotonti. Путь должен выглядеть, например, так:

```
public_html/themes/index36/
```

### Шаг №3.

Убедитесь, что все файлы и подпапки переданы без потерь. Лучше использовать "FileZilla Client" или другой FTP-менеджер для удалённого доступа.  
Если обнаружите пропущенные файлы — закачайте их повторно.

### Шаг №4. Настройка файла конфигурации

Откройте файл `datas/config.php` в корне вашего сайта Cotonti (например, `public_html/datas/config.php`).  
Найдите строку с настройкой темы:

```php
$cfg['defaulttheme'] = 'nemesis'; // или любое ваше значение вместо 'nemesis'
```

Замените на:

```php
$cfg['defaulttheme'] = 'index36';
```

Сохраните изменения и загрузите файл обратно на сервер.

### Шаг №5. Активация шаблона

Перейдите в админ-панель:  
**Управление сайтом** → **Конфигурация** → **Темы**

1. В первой строке «Принудительная установка темы по умолчанию для всех пользователей» выберите **Да**.
2. Во второй строке «Ссылка на главную страницу в навигационной цепочке» выберите **Да**.
3. В третьей строке «Разделитель» оставьте поле пустым.  
   Остальные опции настройте по своему усмотрению.  
   Не забудьте сохранить изменения.

### Шаг №6. Экстраполя (опционально)

**6.1. Имя и фамилия пользователя**  
Перейдите в **Управление сайтом** → **Прочее** → **Экстраполя** → **Таблица cot_users** (модуль Users).  
Внизу страницы в форме добавления нового поля добавьте:

- Название поля: `firstname`
- Описание поля (_TITLE): "Имя"
- Тип поля: "input"  
  Затем нажмите **Добавить**.

Затем добавьте следующее поле:

- Название поля: `lastname`
- Описание поля (_TITLE): "Фамилия"
- Тип поля: "input"  
  Остальные параметры не трогайте, нажмите **Добавить**.

### Шаг №7. Фоновый бэкграунд на странице пользователя

Перейдите в **Управление сайтом** → **Расширения** → **User Images** → **Администрирование**.  
В поле кода введите `background`, а в поля "Ширина" и "Высота" установите:

- Ширина: 1400
- Высота: 300  
  Соотношение: "Подогнать" (целевые размеры: ширина:высота).  
  Нажмите **Добавить/Обновить**.

Примечание: рекомендуется использовать изображения размером не более 1 МБ (JPG/PNG).

### Шаг №8. Подключение иконок Font Awesome 7.2

Подробная инструкция по подключению доступна в теме [**ссылка на форум**](https://abuyfile.com/ru/forums/cotonti/original/skins/index36/topic185).

### Шаг №9. Постустановочные расширения

По желанию установите плагины, например «Дерево категорий», или другие расширения, доступные в [**маркетплейсе Cotonti**](https://abuyfile.com/ru/market/cotonti).

---

Тема "Index36" полностью совместима с движком из коробки.  
Удачной установки и красивого сайта на Cotonti!  
Если возникнут проблемы с конкретными ошибками — не стесняйтесь [**обращаться на форум**](https://abuyfile.com/ru/forums/cotonti/original/skins/index36) и описывать проблему — помогу разобраться.

Карта файлов темы сайта и основного шаблона "Index36" для Cotonti Siena.  
*(правильно говорить всё-таки именно “тема сайта”)*

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
│   │   └── attacher.display.listfirst.tpl  # первый прикреплённый файл картинки для статей в списках
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

___

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

