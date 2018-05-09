<%@page contentType="text/html; charset=utf-8" language="java"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../resources/css/core.css"%>
        <%@include file="../resources/css/popmenu.css"%>
        <%@include file="../resources/css/active/common_active.css"%>
        <%@include file="../resources/css/active/book.css"%>
        <%@include file="../resources/css/active/banner.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="../resources/libs/jquery-3.3.1.js"%>
        <%@include file="../resources/scripts/common_active.js"%>
        <%@include file="../resources/scripts/book.js"%>
    </script>
    <title>Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science</title>
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
            <div class="layout_path">
                <a class="path" href="#">Главная</a>
                <a class="path" href="#">->Книги</a>
                <a class="path" href="#">->Компьютерная литература</a>
                <a class="path" href="#">->Программирование</a>
            </div>
            <div class="layout_main">
                <div class="layout_book">
                    <div class="layout_cover">
                        <img class="cover"
                             src="books/Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science/cover.jpg"/>
                    </div>
                    <div class="layout_book_info">
                        <p class="title">Структуры данных и алгоритмы в Java. Классика Computers Science</p>
                        <p class="info_item">Автор : <a class="info_content" href="#">Роберт Лафоре</a></p>
                        <p class="info_item">Издательство : <a class="info_content" href="#">Питер</a></p>
                        <p class="info_item">Страниц : <span class="info_content" href="#">1168</span></p>
                        <p class="info_item">Год издания : <a class="info_content" href="#">2015</a></p>
                        <p class="info_item">ISBN : <span class="info_content" href="#">978-5-496-01127-3</span></p>
                        <div class="layout_rating"><p class="info_item">Рейтинг : </p>
                            <div class="rating-count">
                                <input id="c0" type="radio" name="rating" value="0" checked>
                                <input id="c1" type="radio" name="rating" value="1">
                                <label for="c1">1</label>
                                <input id="c2" type="radio" name="rating" value="2">
                                <label for="c2">2</label>
                                <input id="c3" type="radio" name="rating" value="3">
                                <label for="c3">3</label>
                                <input id="c4" type="radio" name="rating" value="4">
                                <label for="c4">4</label>
                                <input id="c5" type="radio" name="rating" value="5">
                                <label for="c5">5</label>
                            </div>
                            <div class="separator_rating"></div>
                            <p class="count_rating">135 голосов</p>
                        </div>
                        <div class="layout_age"><span class="age">12+</span></div>
                        <span class="layout_download">
                                <div class="layout_inner_download">
                                    <p class="download_title">Скачать: </p>
                                    <a class="link_download" href="#"><img class="img_download"
                                                                           src="resources/images/all/pdf.png"/></a>
                                    <a class="link_download" href="#"><img class="img_download"
                                                                           src="resources/images/all/mp3.png"/></a>
                                    <a class="link_download" href="#"><img class="img_download"
                                                                           src="resources/images/all/fb2.png"/></a>
                                </div>
                            </span>
                    </div>
                </div>
                <div class="layout_book_description">
                    <p class="discription_title">Описание</p>
                    <p class="discription_content">Второе издание одной из самых авторитетных книг по программированию
                        посвящено использованию структур данных и алгоритмов. Алгоритмы — это основа программирования,
                        определяющая, каким образом разрабатываемое программное обеспечение будет использовать структуры
                        данных. На четких и простых программных примерах автор объясняет эту сложную тему, предлагая
                        читателям написать собственные программы и на практике освоить полученные знания. Рассматриваемые
                        примеры написаны на языке Java, хотя для усвоения материала читателю не обязательно хорошо знать его
                        — достаточно владеть любым языком программирования, например C++. Первая часть книги представляет
                        собой введение в алгоритмизацию и структуры данных, а также содержит изложение основ
                        объектно-ориентированного программирования. Следующие части посвящены различным алгоритмам и
                        структурам данных, рассматриваемым от простого к сложному: сортировка, абстрактные типы данных,
                        связанные списки, рекурсия, древовидные структуры данных, хеширование, пирамиды, графы. Приводятся
                        рекомендации по использованию алгоритмов и выбору той или иной структуры данных в зависимости от
                        поставленной задачи.</p>
                </div>
                <div class="layout_comment">
                    <form class="layout_comment_write">
                        <input class="comment_write input_text" type="text" name="tfSearch"
                               placeholder="Введите комментарий"/>
                        <input class="action_comment_write" type="submit" value=""/>
                    </form>
                    <div class="comments">
                        <article class="comment">
                            <div class="comment_title">
                                <p class="comment_username">vasya</p>
                                <div class="user_rating">
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_empty"></span>
                                    <span class="star star_empty"></span>
                                </div>
                            </div>
                            <p class="comment_yeartime">20.01.2018<span class="comment_time">11:30</span></p>
                            <div class="layout_comment_content">
                                <p class="comment_content">Я, конечно, все понимаю...но эта книга уже сильно устарела.
                                    Качество ее на высоте, отпучатано прекрасно, но...</p>
                                <span><input class="comment_show_more" type="button" value="Читать полностью"/></span>
                            </div>
                        </article>

                        <article class="comment">
                            <div class="comment_title">
                                <p class="comment_username">petya</p>
                                <div class="user_rating">
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_empty"></span>
                                    <span class="star star_empty"></span>
                                </div>
                            </div>
                            <p class="comment_yeartime">28.02.2018<span class="comment_time">15:21</span></p>
                            <div class="layout_comment_content">
                                <p class="comment_content">О чем можно говорить? Издательство известное, на руский язык
                                    переводит книгу давно. Много изданий и переизданий этого труда было. Открываем первые
                                    страницы после оглавления. В оригинале автор некторые понятие объясняет иначе, еже ли мы
                                    читаем в переводе</p>
                                <span><input class="comment_show_more" type="button" value="Читать полностью"/></span>
                            </div>
                        </article>

                        <article class="comment">
                            <div class="comment_title">
                                <p class="comment_username">georg2001</p>
                                <div class="user_rating">
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                </div>
                            </div>
                            <p class="comment_yeartime">08.03.2018<span class="comment_time">15:21</span></p>
                            <div class="layout_comment_content">
                                <p class="comment_content"></p>
                                <span><input class="comment_show_more" type="button" value="Читать полностью"/></span>
                            </div>
                        </article>

                        <article class="comment">
                            <div class="comment_title">
                                <p class="comment_username">vasya</p>
                                <div class="user_rating">
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_empty"></span>
                                    <span class="star star_empty"></span>
                                </div>
                            </div>
                            <p class="comment_yeartime">20.01.2018<span class="comment_time">11:30</span></p>
                            <div class="layout_comment_content">
                                <p class="comment_content">Я, конечно, все понимаю...но эта книга уже сильно устарела.
                                    Качество ее на высоте, отпучатано прекрасно, но...</p>
                                <span><input class="comment_show_more" type="button" value="Читать полностью"/></span>
                            </div>
                        </article>

                        <article class="comment">
                            <div class="comment_title">
                                <p class="comment_username">petya</p>
                                <div class="user_rating">
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_empty"></span>
                                    <span class="star star_empty"></span>
                                </div>
                            </div>
                            <p class="comment_yeartime">28.02.2018<span class="comment_time">15:21</span></p>
                            <div class="layout_comment_content">
                                <p class="comment_content">О чем можно говорить? Издательство известное, на руский язык
                                    переводит книгу давно. Много изданий и переизданий этого труда было. Открываем первые
                                    страницы после оглавления. В оригинале автор некторые понятие объясняет иначе, еже ли мы
                                    читаем в переводе</p>
                                <span><input class="comment_show_more" type="button" value="Читать полностью"/></span>
                            </div>
                        </article>

                        <article class="comment">
                            <div class="comment_title">
                                <p class="comment_username">georg2001</p>
                                <div class="user_rating">
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                </div>
                            </div>
                            <p class="comment_yeartime">08.03.2018<span class="comment_time">15:21</span></p>
                            <div class="layout_comment_content">
                                <p class="comment_content"></p>
                                <span><input class="comment_show_more" type="button" value="Читать полностью"/></span>
                            </div>
                        </article>
                        <article class="comment">
                            <div class="comment_title">
                                <p class="comment_username">vasya</p>
                                <div class="user_rating">
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_empty"></span>
                                    <span class="star star_empty"></span>
                                </div>
                            </div>
                            <p class="comment_yeartime">20.01.2018<span class="comment_time">11:30</span></p>
                            <div class="layout_comment_content">
                                <p class="comment_content">Я, конечно, все понимаю...но эта книга уже сильно устарела.
                                    Качество ее на высоте, отпучатано прекрасно, но...</p>
                                <span><input class="comment_show_more" type="button" value="Читать полностью"/></span>
                            </div>
                        </article>

                        <article class="comment">
                            <div class="comment_title">
                                <p class="comment_username">petya</p>
                                <div class="user_rating">
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_empty"></span>
                                    <span class="star star_empty"></span>
                                </div>
                            </div>
                            <p class="comment_yeartime">28.02.2018<span class="comment_time">15:21</span></p>
                            <div class="layout_comment_content">
                                <p class="comment_content">О чем можно говорить? Издательство известное, на руский язык
                                    переводит книгу давно. Много изданий и переизданий этого труда было. Открываем первые
                                    страницы после оглавления. В оригинале автор некторые понятие объясняет иначе, еже ли мы
                                    читаем в переводе</p>
                                <span><input class="comment_show_more" type="button" value="Читать полностью"/></span>
                            </div>
                        </article>

                        <article class="comment">
                            <div class="comment_title">
                                <p class="comment_username">georg2001</p>
                                <div class="user_rating">
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                    <span class="star star_fill"></span>
                                </div>
                            </div>
                            <p class="comment_yeartime">08.03.2018<span class="comment_time">15:21</span></p>
                            <div class="layout_comment_content">
                                <p class="comment_content"></p>
                                <span><input class="comment_show_more" type="button" value="Читать полностью"/></span>
                            </div>
                        </article>
                    </div>
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
