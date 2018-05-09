<%@ page contentType="text/html; charset=utf-8" language="java" %>
<head></head>
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
            <q class="quote"> Сон - это хорошо, а книги еще лучше </q>
            <div class="banner_image banner_image_genre"></div>
            <div class="info info_layout_genre">
                <p class="info_genre"> Выбери свой жанр</p>
                <img class="info_img_genre" src="resources/images/all/like.png"/>
            </div>
        </div>
        <div class="layout_path" style="margin: 0">
            <a class="path" href="#">Главная</a>
            <a class="path" href="#">->Жанры</a>
        </div>
        <div class="layout_genres">
            <div class="row_genres">
                <article class="genre">
                    <a class="title_genre" href="#">Компьютерная литература</a>
                    <div class="books_genre" style="grid-column: 1">
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers
                                Science</a>
                        </div>
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Учимся создавать сайты, приложения и игры. Программирование
                                для детей</a>
                        </div>
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers
                                Science</a>
                        </div>
                    </div>
                </article>
                <article class="genre">
                    <a class="title_genre" href="#">Компьютерная литература</a>
                    <div class="books_genre" style="grid-column: 1">
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers
                                Science</a>
                        </div>
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Учимся создавать сайты, приложения и игры. Программирование
                                для детей</a>
                        </div>
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers
                                Science</a>
                        </div>
                    </div>
                </article>
            </div>
            <div class="row_genres">
                <article class="genre">
                    <a class="title_genre" href="#">Компьютерная литература</a>
                    <div class="books_genre" style="grid-column: 1">
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers
                                Science</a>
                        </div>
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Учимся создавать сайты, приложения и игры. Программирование
                                для детей</a>
                        </div>
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers
                                Science</a>
                        </div>
                    </div>
                </article>
                <article class="genre">
                    <a class="title_genre" href="#">Компьютерная литература</a>
                    <div class="books_genre" style="grid-column: 1">
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers
                                Science</a>
                        </div>
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Дэвид Уитни. Учимся создавать сайты, приложения и игры. Программирование для детей/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Учимся создавать сайты, приложения и игры. Программирование
                                для детей</a>
                        </div>
                        <div class="book_genre">
                            <div class="layout_cover">
                                <a class="link_cover" href="#">
                                    <img class="cover_book"
                                         src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                                </a>
                            </div>
                            <a class="book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers
                                Science</a>
                        </div>
                    </div>
                </article>
            </div>
        </div>
    </div>
</main>