<%@page contentType="text/html; charset=utf-8" language="java"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../resources/css/core.css"%>
        <%@include file="../resources/css/popmenu.css"%>
        <%@include file="../resources/css/active/common_active.css"%>
        <%@include file="../resources/css/active/authors.css"%>
        <%@include file="../resources/css/active/banner.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="../resources/libs/jquery-3.3.1.js"%>
        <%@include file="../resources/scripts/common_active.js"%>
        <%@include file="../resources/scripts/authors.js"%>
    </script>
    <title>Авторы</title>
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
