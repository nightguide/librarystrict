<%@ page contentType="text/html; charset=utf-8" language="java" %>
<head>
</head>
<%
    request.setCharacterEncoding("UTF-8");
%>

<main class="main container">
    <form class="layout_search">
        <input class="search input_text" type="text" name="tfSearch"
               placeholder="Введите название книги, автора или жанра"/>
        <input class="action_search" type="submit" value=""/>
    </form>
    <nav class="layout_menu">
        <ul>
            <li><a class="menu_item" href="\books">книги</a></li>
            <li><a class="menu_item" href="\genres">жанры</a>
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
            <li><a class="menu_item" href="\authors">авторы</a></li>
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
                    <a class="layout_cover" style="grid-row: 1" href="\book">
                                <span class="wrapper_download">
                                    <img class="cover"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                    <div class="layout_download">
                                        <span class="layout_btn_download"><input type="button" class="download"
                                                                                 onclick="window.location.href='#'"
                                                                                 value="скачать"/></span>
                                        <img class="download" src="resources/images/all/download.png"/>
                                    </div>
                                </span>
                    </a>
                    <div class="layout_book_presentation" style="grid-row: 2">
                        <a class="book_presentation book_title" href="\book">Структуры данных и алгоритмы в Java. Классика
                            Computers Science/conver</a>
                        <p class="book_presentation">Автор: Роберт Лафоре</p>
                        <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                        <p class="book_presentation">Страниц: 704</p>
                    </div>
                </article>
                <article class="book" style="grid-column: 2">
                    <a class="layout_cover" style="grid-row: 1" href="#">
                                <span class="wrapper_download">
                                    <img class="cover"
                                         src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                    <div class="layout_download">
                                        <span class="layout_btn_download"><input type="button" class="download"
                                                                                 onclick="window.location.href='#'"
                                                                                 value="скачать"/></span>
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
                                    <img class="cover"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                    <div class="layout_download">
                                        <span class="layout_btn_download"><input type="button" class="download"
                                                                                 onclick="window.location.href='#'"
                                                                                 value="скачать"/></span>
                                        <img class="download" src="resources/images/all/download.png"/>
                                    </div>
                                </span>
                    </a>
                    <div class="layout_book_presentation" style="grid-row: 2">
                        <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика
                            Computers Science/conver</a>
                        <p class="book_presentation">Автор: Роберт Лафоре</p>
                        <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                        <p class="book_presentation">Страниц: 704</p>
                    </div>
                </article>
                <article class="book" style="grid-column: 4">
                    <a class="layout_cover" style="grid-row: 1" href="#">
                                <span class="wrapper_download">
                                    <img class="cover"
                                         src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                    <div class="layout_download">
                                        <span class="layout_btn_download"><input type="button" class="download"
                                                                                 onclick="window.location.href='#'"
                                                                                 value="скачать"/></span>
                                        <img class="download" src="resources/images/all/download.png"/>
                                    </div>
                                </span>
                    </a>
                    <div class="layout_book_presentation" style="grid-row: 2">
                        <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика
                            Computers Science/conver</a>
                        <p class="book_presentation">Автор: Роберт Лафоре</p>
                        <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                        <p class="book_presentation">Страниц: 704</p>
                    </div>
                </article>
                <article class="book" style="grid-column: 5">
                    <a class="layout_cover" style="grid-row: 1" href="#">
                                <span class="wrapper_download">
                                    <img class="cover"
                                         src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                    <div class="layout_download">
                                        <span class="layout_btn_download"><input type="button" class="download"
                                                                                 onclick="window.location.href='#'"
                                                                                 value="скачать"/></span>
                                        <img class="download" src="resources/images/all/download.png"/>
                                    </div>
                                </span>
                    </a>
                    <div class="layout_book_presentation" style="grid-row: 2">
                        <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика
                            Computers Science/conver</a>
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
                                    <img class="cover"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                    <div class="layout_download">
                                        <span class="layout_btn_download"><input type="button" class="download"
                                                                                 onclick="window.location.href='#'"
                                                                                 value="скачать"/></span>
                                        <img class="download" src="resources/images/all/download.png"/>
                                    </div>
                                </span>
                    </a>
                    <div class="layout_book_presentation" style="grid-row: 2">
                        <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика
                            Computers Science/conver</a>
                        <p class="book_presentation">Автор: Роберт Лафоре</p>
                        <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                        <p class="book_presentation">Страниц: 704</p>
                    </div>
                </article>
                <article class="book" style="grid-column: 2">
                    <a class="layout_cover" style="grid-row: 1" href="#">
                                <span class="wrapper_download">
                                    <img class="cover"
                                         src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                    <div class="layout_download">
                                        <span class="layout_btn_download"><input type="button" class="download"
                                                                                 onclick="window.location.href='#'"
                                                                                 value="скачать"/></span>
                                        <img class="download" src="resources/images/all/download.png"/>
                                    </div>
                                </span>
                    </a>
                    <div class="layout_book_presentation" style="grid-row: 2">
                        <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика
                            Computers Science/conver</a>
                        <p class="book_presentation">Автор: Роберт Лафоре</p>
                        <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                        <p class="book_presentation">Страниц: 704</p>
                    </div>
                </article>
                <article class="book" style="grid-column: 3">
                    <a class="layout_cover" style="grid-row: 1" href="#">
                                <span class="wrapper_download">
                                    <img class="cover"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                    <div class="layout_download">
                                        <span class="layout_btn_download"><input type="button" class="download"
                                                                                 onclick="window.location.href='#'"
                                                                                 value="скачать"/></span>
                                        <img class="download" src="resources/images/all/download.png"/>
                                    </div>
                                </span>
                    </a>
                    <div class="layout_book_presentation" style="grid-row: 2">
                        <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика
                            Computers Science/conver</a>
                        <p class="book_presentation">Автор: Роберт Лафоре</p>
                        <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                        <p class="book_presentation">Страниц: 704</p>
                    </div>
                </article>
                <article class="book" style="grid-column: 4">
                    <a class="layout_cover" style="grid-row: 1" href="#">
                                <span class="wrapper_download">
                                    <img class="cover"
                                         src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                    <div class="layout_download">
                                        <span class="layout_btn_download"><input type="button" class="download"
                                                                                 onclick="window.location.href='#'"
                                                                                 value="скачать"/></span>
                                        <img class="download" src="resources/images/all/download.png"/>
                                    </div>
                                </span>
                    </a>
                    <div class="layout_book_presentation" style="grid-row: 2">
                        <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика
                            Computers Science/conver</a>
                        <p class="book_presentation">Автор: Роберт Лафоре</p>
                        <p class="book_presentation">Изд-во: Питер, 2013 г.</p>
                        <p class="book_presentation">Страниц: 704</p>
                    </div>
                </article>
                <article class="book" style="grid-column: 5">
                    <a class="layout_cover" style="grid-row: 1" href="#">
                                <span class="wrapper_download">
                                    <img class="cover"
                                         src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                    <div class="layout_download">
                                        <span class="layout_btn_download"><input type="button" class="download"
                                                                                 onclick="window.location.href='#'"
                                                                                 value="скачать"/></span>
                                        <img class="download" src="resources/images/all/download.png"/>
                                    </div>
                                </span>
                    </a>
                    <div class="layout_book_presentation" style="grid-row: 2">
                        <a class="book_presentation book_title" href="#">Структуры данных и алгоритмы в Java. Классика
                            Computers Science/conver</a>
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