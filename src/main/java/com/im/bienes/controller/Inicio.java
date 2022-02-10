package com.im.bienes.controller;

import com.im.bienes.model.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Inicio", value = "/inicio")
public class Inicio extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        DaoCards daoCardsBuscar = new DaoCards();
        List<BeanCards> listJuegos = daoCardsBuscar.findAll();
        request.setAttribute("listaJuegos", listJuegos);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
