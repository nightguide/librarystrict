<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="resources/css/common.css" media="all"/>
    <link rel="stylesheet" type="text/css" href="resources/css/popmenu.css" media="all"/>
    <link rel="stylesheet" type="text/css" href="resources/css/active/common_active.css" media="all"/>
    <link rel="stylesheet" type="text/css" href="resources/css/active/books.css" media="all"/>
    <link rel="stylesheet" type="text/css" href="resources/css/active/banner.css" media="all"/>
    <script src="resources/libs/jquery-3.3.1.js"></script>
    <script src="resources/scripts/common_active.js"></script>
    <script src="resources/scripts/books.js"></script>
    <title>Книги</title>
</head>

<body>
    <header class="header container">
        <a href="#">
            <img class="logo" src="resources/images/all/Logo_LibraryStrict.png" alt="logo" />
        </a>
        <div class="layout_profile" style="position: relative">
            <div class="profile">
                <div class="layout_profile_image">
                    <img class="profile_image" src="profiles/konstantin/face.jpg" />
                </div>
                <div class="layout_profile_name">
                    <a class="profile_name">Константин К.</a>
                    <a class="arrow"></a>
                </div>
                <ul class="submenu_profile">
                    <li><a class="submenu_item" href="#">Профиль</a></li>
                    <li><a class="submenu_item" href="#">Безопасность</a></li>
                    <li><a class="submenu_item" href="#">Уведомления</a></li>
                    <li><a class="submenu_item" href="#">Выход</a></li>
                </ul>
            </div>
        </div>
    </header>
    <main class="main container">
        <form class="layout_search">
            <input class="search input_text" type="text" name="tfSearch" placeholder="Введите название книги, автора или жанра" />
            <input class="action_search" type="submit" value="" />
        </form>
        <nav class="layout_menu">
            <ul>
                <li><a class="menu_item">книги</a></li>
                <li><a class="menu_item">жанры</a>
                    <ul class="submenu">
                        <li><a class="submenu_item" href="#">Детективы</a></li>
                        <li><a class="submenu_item" href="#">Романы</a>
                            <ul class="submenu">
                                <li><a class="submenu_item" href="#">Второй уровен 1</a></li>
                                <li><a class="submenu_item" href="#">Второй уровен 2</a>
                                    <ul class="submenu">
                                        <li><a class="submenu_item" href="#">Второй уровен 1</a></li>
                                        <li><a class="submenu_item" href="#">Второй уровен 2</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a class="submenu_item" href="#">Ужасы</a></li>
                    </ul>
                </li>
                <li><a class="menu_item">авторы</a></li>
                <li><a class="menu_item">контакты</a></li>
            </ul>
        </nav>
        <div class="content">
            <div class="layout_banner">
                <q class="quote"> Книга - великая вещь, пока человек умеет ею пользоваться </q>
                <div class="banner_image banner_image_book"></div>
                <p class="info">
                    +
                    <span class="info_books1">9999</span>
                    <span class="info_books2">книг</span>
                </p>
            </div>
            <div class="layout_path">
                <a class="path" href="#">Главная</a>
                <a class="path" href="#">->Книги</a>
                <a class="path" href="#">->Компьютерная литература</a>
                <a class="path" href="#">->Программирование</a>
            </div>
            <div class="layout_books">
                <div class="row_books">
                    <article class="book" style="grid-column: 1">
                        <a class="layout_cover" style="grid-row: 1" href="#">
                            <span class="wrapper_download">
                                <img class="cover" src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg" />
                                <div class="layout_download">
                                    <span class="layout_btn_download"><input type="button" class="download" onclick="window.location.href='#'" value="скачать"/></span>
                                    <img class="download" src="resources/images/all/download.png"/>
                                </div>
                            </span>
                        </a>
                        <div class="layout_book_presentation" style="grid-row: 2">
                            <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers Science/conver</a>
                            <p class="book_presentation">Автор: Роберт Лафоре</p>
                            <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                            <p class="book_presentation">Страниц: 704</p>
                        </div>
                    </article>
                    <article class="book" style="grid-column: 2">
                        <a class="layout_cover" style="grid-row: 1" href="#">
                            <span class="wrapper_download">
                                <img class="cover" src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                <div class="layout_download">
                                    <span class="layout_btn_download"><input type="button" class="download" onclick="window.location.href='#'" value="скачать"/></span>
                                    <img class="download" src="resources/images/all/download.png"/>
                                </div>
                            </span>
                        </a>
                        <div class="layout_book_presentation" style="grid-row: 2">
                            <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java</a>
                            <p class="book_presentation">Автор: Роберт Лафоре</p>
                            <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                            <p class="book_presentation">Страниц: 704</p>
                        </div>
                    </article>
                    <article class="book" style="grid-column: 3">
                        <a class="layout_cover" style="grid-row: 1" href="#">
                            <span class="wrapper_download">
                                <img class="cover" src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                <div class="layout_download">
                                    <span class="layout_btn_download"><input type="button" class="download" onclick="window.location.href='#'" value="скачать"/></span>
                                    <img class="download" src="resources/images/all/download.png"/>
                                </div>
                            </span>
                        </a>
                        <div class="layout_book_presentation" style="grid-row: 2">
                            <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers Science/conver</a>
                            <p class="book_presentation">Автор: Роберт Лафоре</p>
                            <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                            <p class="book_presentation">Страниц: 704</p>
                        </div>
                    </article>
                    <article class="book" style="grid-column: 4">
                        <a class="layout_cover" style="grid-row: 1" href="#">
                            <span class="wrapper_download">
                                <img class="cover" src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                <div class="layout_download">
                                    <span class="layout_btn_download"><input type="button" class="download" onclick="window.location.href='#'" value="скачать"/></span>
                                    <img class="download" src="resources/images/all/download.png"/>
                                </div>
                            </span>
                        </a>
                        <div class="layout_book_presentation" style="grid-row: 2">
                            <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers Science/conver</a>
                            <p class="book_presentation">Автор: Роберт Лафоре</p>
                            <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                            <p class="book_presentation">Страниц: 704</p>
                        </div>
                    </article>
                    <article class="book" style="grid-column: 5">
                        <a class="layout_cover" style="grid-row: 1" href="#">
                            <span class="wrapper_download">
                                <img class="cover" src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                <div class="layout_download">
                                    <span class="layout_btn_download"><input type="button" class="download" onclick="window.location.href='#'" value="скачать"/></span>
                                    <img class="download" src="resources/images/all/download.png"/>
                                </div>
                            </span>
                        </a>
                        <div class="layout_book_presentation" style="grid-row: 2">
                            <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers Science/conver</a>
                            <p class="book_presentation">Автор: Роберт Лафоре</p>
                            <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                            <p class="book_presentation">Страниц: 704</p>
                        </div>
                    </article>
                </div>
                <div class="row_books">
                    <article class="book" style="grid-column: 1">
                        <a class="layout_cover" style="grid-row: 1" href="#">
                            <span class="wrapper_download">
                                <img class="cover" src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                <div class="layout_download">
                                    <span class="layout_btn_download"><input type="button" class="download" onclick="window.location.href='#'" value="скачать"/></span>
                                    <img class="download" src="resources/images/all/download.png"/>
                                </div>
                            </span>
                        </a>
                        <div class="layout_book_presentation" style="grid-row: 2">
                            <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers Science/conver</a>
                            <p class="book_presentation">Автор: Роберт Лафоре</p>
                            <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                            <p class="book_presentation">Страниц: 704</p>
                        </div>
                    </article>
                    <article class="book" style="grid-column: 2">
                        <a class="layout_cover" style="grid-row: 1" href="#">
                            <span class="wrapper_download">
                                <img class="cover" src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                <div class="layout_download">
                                    <span class="layout_btn_download"><input type="button" class="download" onclick="window.location.href='#'" value="скачать"/></span>
                                    <img class="download" src="resources/images/all/download.png"/>
                                </div>
                            </span>
                        </a>
                        <div class="layout_book_presentation" style="grid-row: 2">
                            <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers Science/conver</a>
                            <p class="book_presentation">Автор: Роберт Лафоре</p>
                            <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                            <p class="book_presentation">Страниц: 704</p>
                        </div>
                    </article>
                    <article class="book" style="grid-column: 3">
                        <a class="layout_cover" style="grid-row: 1" href="#">
                            <span class="wrapper_download">
                                <img class="cover" src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                <div class="layout_download">
                                    <span class="layout_btn_download"><input type="button" class="download" onclick="window.location.href='#'" value="скачать"/></span>
                                    <img class="download" src="resources/images/all/download.png"/>
                                </div>
                            </span>
                        </a>
                        <div class="layout_book_presentation" style="grid-row: 2">
                            <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers Science/conver</a>
                            <p class="book_presentation">Автор: Роберт Лафоре</p>
                            <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                            <p class="book_presentation">Страниц: 704</p>
                        </div>
                    </article>
                    <article class="book" style="grid-column: 4">
                        <a class="layout_cover" style="grid-row: 1" href="#">
                            <span class="wrapper_download">
                                <img class="cover" src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                <div class="layout_download">
                                    <span class="layout_btn_download"><input type="button" class="download" onclick="window.location.href='#'" value="скачать"/></span>
                                    <img class="download" src="resources/images/all/download.png"/>
                                </div>
                            </span>
                        </a>
                        <div class="layout_book_presentation" style="grid-row: 2">
                            <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers Science/conver</a>
                            <p class="book_presentation">Автор: Роберт Лафоре</p>
                            <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                            <p class="book_presentation">Страниц: 704</p>
                        </div>
                    </article>
                    <article class="book" style="grid-column: 5">
                        <a class="layout_cover" style="grid-row: 1" href="#">
                            <span class="wrapper_download">
                                <img class="cover" src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                <div class="layout_download">
                                    <span class="layout_btn_download"><input type="button" class="download" onclick="window.location.href='#'" value="скачать"/></span>
                                    <img class="download" src="resources/images/all/download.png"/>
                                </div>
                            </span>
                        </a>
                        <div class="layout_book_presentation" style="grid-row: 2">
                            <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers Science/conver</a>
                            <p class="book_presentation">Автор: Роберт Лафоре</p>
                            <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                            <p class="book_presentation">Страниц: 704</p>
                        </div>
                    </article>
                </div>
            </div>
            <div class="layout_pages">
                <div class="layout_next_page">
                    <a class="next_page" href="#">1</a>
                </div>
                <div class="layout_next_page">
                    <a class="next_page" href="#">2</a>
                </div>
                <div class="layout_next_page">
                    <a class="next_page" href="#">3</a>
                </div>
                <div class="layout_next_page">
                    <a class="next_page" href="#">4</a>
                </div>
                <div class="layout_multipoints">
                    <a class="next_page">...</a>
                </div>
                <div class="layout_next_page">
                    <a class="next_page" href="#">12</a>
                </div>
            </div>
        </div>
    </main>
    <footer class="footer">
        <div class="container">
            <p class="label_security">Все права защищены © 2018 JStrict</p>
            <div class="layout_contact">
                <p class="label_contact">Контакты со мной</p>
                <a href="#">
                    <img class="contact_item" src="resources/images/all/mail.png" />
                </a>
                <a href="#">
                    <img class="contact_item" src="resources/images/all/vk.png" />
                </a>
                <a href="#">
                    <img class="contact_item" src="resources/images/all/github.png" />
                </a>
            </div>
        </div>
    </footer>
</body>

</html>
