package com.example.demo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String userId = request.getParameter("userid");
        String password = request.getParameter("password");
        System.out.println(userId);
        System.out.println(password);
        if ("001".equals(userId) && "000".equals(password)){
            request.setAttribute("userName", "呉");
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }else {
            request.setAttribute("messages", "ユーザーIDまたはパスワード間違え");
            request.setAttribute("userid", userId);
            request.getRequestDispatcher("/").forward(request,response);
        }
    }
}
