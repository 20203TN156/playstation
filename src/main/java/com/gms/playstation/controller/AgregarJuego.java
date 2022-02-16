package com.gms.playstation.controller;

import com.gms.playstation.model.BeanCards;
import com.gms.playstation.model.DaoCards;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AgregarJuego", value = "/agregar_juego")
@MultipartConfig
public class AgregarJuego extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        request.getRequestDispatcher("agregar_juego.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String nombre = request.getParameter("name");
        String description = request.getParameter("description");
        String precio = request.getParameter("price");
        String estado = request.getParameter("state");
        Part banner = request.getPart("image");

        BeanCards unCard = new BeanCards();
        unCard.setNombre(nombre);
        unCard.setDescripcion(description);
        unCard.setPrecio(precio);
        unCard.setEstado(estado);
        unCard.setImagen(banner.getInputStream());


        DaoCards daoCards = new DaoCards();
        boolean result = daoCards.saveBanner(unCard);
        if (result){
            request.setAttribute("mensaje", "Registro correcto");
        } else{
            request.setAttribute("mensaje", "Registro incorrecto");
        }
        request.getRequestDispatcher("agregar_juego.jsp").forward(request, response);
    }
}
