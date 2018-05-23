<%@page contentType="text/html; charset=UTF-8" language="java"%>

<%
    request.setCharacterEncoding("UTF-8");
%>

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