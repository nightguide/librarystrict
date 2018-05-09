<%@page contentType="text/html; charset=utf-8" language="java"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../resources/css/core.css"%>
        <%@include file="../resources/css/popmenu.css"%>
        <%@include file="../resources/css/active/common_active.css"%>
        <%@include file="../resources/css/active/genres.css"%>
        <%@include file="../resources/css/active/banner.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="../resources/libs/jquery-3.3.1.js"%>
        <%@include file="../resources/scripts/common_active.js"%>
    </script>
    <title>Жанры</title>
</head>

<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <header class="header container">
        <a href="#">
            <img class="logo" src="resources/images/all/Logo_LibraryStrict.png" alt="logo"/>
        </a>
        <div class="layout_profile" style="position: relative">
            <div class="profile">
                <div class="layout_profile_image">
                    <img class="profile_image" src="profiles/konstantin/face.jpg"/>
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
    <footer class="footer">
        <div class="container">
            <p class="label_security">Все права защищены © 2018 JStrict</p>
            <div class="layout_contact">
                <p class="label_contact">Контакты со мной</p>
                <a href="#">
                    <img class="contact_item" src="resources/images/all/mail.png"/>
                </a>
                <a href="#">
                    <img class="contact_item" src="resources/images/all/vk.png"/>
                </a>
                <a href="#">
                    <img class="contact_item" src="resources/images/all/github.png"/>
                </a>
            </div>
        </div>
    </footer>
</body>

</html>
