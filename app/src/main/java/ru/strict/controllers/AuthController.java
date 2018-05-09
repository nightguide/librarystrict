package ru.strict.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/auth")
public class AuthController extends HttpServlet{

    @Override
    public void doGet(HttpServletRequest request
            , HttpServletResponse response) throws ServletException, IOException{
        request.getRequestDispatcher("pages/auth.jsp").forward(request, response);
    }
}
