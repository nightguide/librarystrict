<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<head>
    <style>
        <%@include file="../../resources/css/active/genres.css"%>
    </style>
</head>

<%
    request.setCharacterEncoding("UTF-8");
%>

<div class="content">

    <%@include file="banner.jsp"%>
    <%@include file="../shared/components/path.jsp"%>

    <div class="layout_genres">
        <%for(int r = 0; r < 2; r++){%>
            <div class="row_genres">
                <%for(int g = 0; g < 2; g++){%>
                    <article class="genre">
                        <a class="title_genre" href="#">Компьютерная литература</a>
                        <div class="books_genre" style="grid-column: 1">
                            <%for(int i = 0; i < 3; i++){%>
                                <div class="book_genre">
                                    <div class="layout_cover">
                                        <a class="link_cover" href="#">
                                            <img class="cover_book"
                                                 src="books_data/473e511b-2e9e-4ec4-b170-d9743e22bab7/cover.jpg"/>
                                        </a>
                                    </div>
                                    <a class="book_title" href="#">Структуры данных и алгоритмы в Java. Классика Computers
                                        Science</a>
                                </div>
                            <%}%>
                        </div>
                    </article>
                <%}%>
            </div>
        <%}%>
    </div>
</div>