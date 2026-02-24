/** 
 * Index36 - Theme for Cotonti
 * Compatibility: [CMF/CMS Cotonti Siena v0.9.26+](https://github.com/Cotonti/Cotonti); PHP-8.4 & MySQL-8.0 
 * Created: 01 Feb 2026  
 * Updated: 22 Feb 2026  
 * Support: https://abuyfile.com/ru/forums/cotonti/original/skins/index36
 * @package index36 
 * @version 1.0.2  
 * @author webitproff 
 * @copyright (c) 2026 webitproff | https://github.com/webitproff/index36-cotonti-theme
 * @license BSD (Free using and distribution with saving copyrights)   
 */ 

Карта файлов темы сайта и основного шаблона "Index36" для Cotonti Siena

примечание, если стоит пометка `файл НЕ используется!` - вопросы задавать на форуме https://abuyfile.com/ru/forums/cotonti/original/skins/index36
```
index36/                         # Главная папка темы Index36
├── assets/                      # Статические ресурсы фронтенда (библиотеки, стили, скрипты)
│   ├── fancybox/                # Лайтбокс / модальная галерея изображений
│   │   ├── fancybox.css
│   │   └── fancybox.umd.js
│   ├── jquery/                  # jQuery (базовая библиотека)
│   │   └── jquery.min.js        # (файл НЕ используется!) подключать в /themes/index36/index36.rc.php
│   ├── perfect-scrollbar/       # Кастомный скроллбар
│   │   ├── js-perfect-scrollbar.js   # кастомные скрипты perfect-scrollbar
│   │   ├── perfect-scrollbar.css     # стили библиотеки
│   │   ├── perfect-scrollbar.min.js  # скрипты библиотеки
│   │   └── styles-perfect-scrollbar.css  # кастомные стили perfect-scrollbar
│   └── select2/                 # Красивый выпадающий список / мультиселект
│       ├── js-select2.js        # кастомные скрипты для select2 (файл используется)
│       ├── select2.min.css      # Стили библиотеки select2 (файл НЕ используется!)
│       ├── select2.min.js       # Скрипты библиотеки select2 (файл НЕ используется!)
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
