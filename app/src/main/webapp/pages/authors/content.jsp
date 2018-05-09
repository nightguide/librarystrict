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
            <q class="quote"> Я ни во что не ставлю чтение без всякого удовольствия </q>
            <div class="banner_image banner_image_author"></div>
            <div class="info info_author">
                <div class="info_authors">
                    <p class="info_authors_count">1572</p>
                    <p class="info_author_title1">автора</p>
                </div>
                <div class="separator_banner"></div>
                <div class="info_authors">
                    <p class="info_author_title2">стран</p>
                    <p class="info_authors_country">75</p>
                </div>
            </div>
        </div>
        <div class="layout_path">
            <a class="path" href="#">Главная</a>
            <a class="path" href="#">->Авторы</a>
        </div>
        <div class="layout_authors">
            <div class="row_authors">
                <article class="authors" style="grid-column: 1">
                    <p class="big_letter">A</p>
                    <a class="author" href="#">Абрамов Ф.</a>
                    <a class="author" href="#">Авдеев Д.</a>
                    <a class="author" href="#">Аллен Э.</a>
                    <a class="author" href="#">Андресон П.</a>
                    <a class="author" href="#">Асадов Э.</a>
                    <a class="author all_letter_authors" href="#">все на "А"</a>
                    <div class="author_gradient"></div>
                </article>
                <article class="authors" style="grid-column: 2">
                    <p class="big_letter">Б</p>
                    <a class="author" href="#">Березовский М.</a>
                    <a class="author" href="#">Билл-БелоцерковскийБелоцерковский</a>
                    <a class="author" href="#">Биой К.</a>
                    <a class="author" href="#">Бодлер Ш.</a>
                    <a class="author" href="#">Быков Д.</a>
                    <a class="author all_letter_authors" href="#">все на "Б"</a>
                    <div class="author_gradient"></div>
                </article>
                <article class="authors" style="grid-column: 3">
                    <p class="big_letter">В</p>
                    <a class="author" href="#">Абрамов Ф.</a>
                    <a class="author" href="#">Авдеев Д.</a>
                    <a class="author" href="#">Аллен Э.</a>
                    <a class="author" href="#">Андресон П.</a>
                    <a class="author" href="#">Асадов Э.</a>
                    <a class="author all_letter_authors" href="#">все на "В"</a>
                    <div class="author_gradient"></div>
                </article>
                <article class="authors" style="grid-column: 4">
                    <p class="big_letter">Г</p>
                    <a class="author" href="#">Абрамов Ф.</a>
                    <a class="author" href="#">Авдеев Д.</a>
                    <a class="author" href="#">Аллен Э.</a>
                    <a class="author" href="#">Андресон П.</a>
                    <a class="author" href="#">Асадов Э.</a>
                    <a class="author all_letter_authors" href="#">все на "Г"</a>
                    <div class="author_gradient"></div>
                </article>
                <article class="authors" style="grid-column: 5">
                    <p class="big_letter">Д</p>
                    <a class="author" href="#">Абрамов Ф.</a>
                    <a class="author" href="#">Авдеев Д.</a>
                    <a class="author" href="#">Аллен Э.</a>
                    <a class="author" href="#">Андресон П.</a>
                    <a class="author" href="#">Асадов Э.</a>
                    <a class="author all_letter_authors" href="#">все на "Д"</a>
                    <div class="author_gradient"></div>
                </article>
                <article class="authors" style="grid-column: 6">
                    <p class="big_letter">Е</p>
                    <a class="author" href="#">Абрамов Ф.</a>
                    <a class="author" href="#">Авдеев Д.</a>
                    <a class="author" href="#">Аллен Э.</a>
                    <a class="author" href="#">Андресон П.</a>
                    <a class="author" href="#">Асадов Э.</a>
                    <a class="author all_letter_authors" href="#">все на "Е"</a>
                    <div class="author_gradient"></div>
                </article>
            </div>
            <div class="row_authors">
                <article class="authors" style="grid-column: 1">
                    <p class="big_letter">A</p>
                    <a class="author" href="#">Абрамов Ф.</a>
                    <a class="author" href="#">Авдеев Д.</a>
                    <a class="author" href="#">Аллен Э.</a>
                    <a class="author" href="#">Андресон П.</a>
                    <a class="author" href="#">Асадов Э.</a>
                    <a class="author all_letter_authors" href="#">все на "А"</a>
                    <div class="author_gradient"></div>
                </article>
                <article class="authors" style="grid-column: 2">
                    <p class="big_letter">Б</p>
                    <a class="author" href="#">Березовский М.</a>
                    <a class="author" href="#">Билл-Белоцерковский</a>
                    <a class="author" href="#">Биой К.</a>
                    <a class="author" href="#">Бодлер Ш.</a>
                    <a class="author" href="#">Быков Д.</a>
                    <a class="author all_letter_authors" href="#">все на "Б"</a>
                    <div class="author_gradient"></div>
                </article>
                <article class="authors" style="grid-column: 3">
                    <p class="big_letter">В</p>
                    <a class="author" href="#">Абрамов Ф.</a>
                    <a class="author" href="#">Авдеев Д.</a>
                    <a class="author" href="#">Аллен Э.</a>
                    <a class="author" href="#">Андресон П.</a>
                    <a class="author" href="#">Асадов Э.</a>
                    <a class="author all_letter_authors" href="#">все на "В"</a>
                    <div class="author_gradient"></div>
                </article>
                <article class="authors" style="grid-column: 4">
                    <p class="big_letter">Г</p>
                    <a class="author" href="#">Абрамов Ф.</a>
                    <a class="author" href="#">Авдеев Д.</a>
                    <a class="author" href="#">Аллен Э.</a>
                    <a class="author" href="#">Андресон П.</a>
                    <a class="author" href="#">Асадов Э.</a>
                    <a class="author all_letter_authors" href="#">все на "Г"</a>
                    <div class="author_gradient"></div>
                </article>
                <article class="authors" style="grid-column: 5">
                    <p class="big_letter">Д</p>
                    <a class="author" href="#">Абрамов Ф.</a>
                    <a class="author" href="#">Авдеев Д.</a>
                    <a class="author" href="#">Аллен Э.</a>
                    <a class="author" href="#">Андресон П.</a>
                    <a class="author" href="#">Асадов Э.</a>
                    <a class="author all_letter_authors" href="#">все на "Д"</a>
                    <div class="author_gradient"></div>
                </article>
                <article class="authors" style="grid-column: 6">
                    <p class="big_letter">Е</p>
                    <a class="author" href="#">Абрамов Ф.</a>
                    <a class="author" href="#">Авдеев Д.</a>
                    <a class="author" href="#">Аллен Э.</a>
                    <a class="author" href="#">Андресон П.</a>
                    <a class="author" href="#">Асадов Э.</a>
                    <a class="author all_letter_authors" href="#">все на "Е"</a>
                    <div class="author_gradient"></div>
                </article>
            </div>
        </div>
    </div>
</main>