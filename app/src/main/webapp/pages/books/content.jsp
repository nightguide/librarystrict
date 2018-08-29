<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("UTF-8");
%>

<div class="content">
    <%@include file="banner.jsp"%>
    <%@include file="../shared/components/path.jsp"%>

    <div class="layout_books">
        <%for(int r = 0; r < 2; r++){%>
        <div class="row_books">
            <%for(int i = 0; i < 5; i++){%>
            <article class="book" style="grid-column: <%=i+1%>">
                <a class="layout_cover" style="grid-row: 1" href="\book">
                                <span class="wrapper_download">
                                    <img class="cover"
                                         src="books_data/473e511b-2e9e-4ec4-b170-d9743e22bab7/cover.jpg"/>
                                    <div class="layout_download">
                                        <span class="layout_btn_download"><input type="button" class="download"
                                                                                 onclick="window.location.href='#'"
                                                                                 value="скачать"/></span>
                                        <img class="download" src="resources/images/png/download.png"/>
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
            <%}%>
        </div>
        <%}%>
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