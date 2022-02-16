package com.gms.playstation.controller;

import com.gms.playstation.model.DaoCards;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;

@WebServlet(name = "ServletGetFile", value = "/ServletGetFile")
public class ServletGetFile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            ServletOutputStream out = response.getOutputStream();
            String idString = request.getParameter("id") != null ? request.getParameter("id"): "0";
            DaoCards daoProducto = new DaoCards();
            Blob imagen = daoProducto.getBannerByCourse(Integer.parseInt(idString));

            response.setContentType("imagen/png");
            InputStream in = null;
            in = imagen.getBinaryStream();
            int lenght = (int) imagen.length();

            int bufferSize = 1024;
            byte[] buffer = new byte[bufferSize];

            while((lenght = in.read(buffer))!= -1){
                out.write(buffer, 0, lenght);
            }

            in.close();
            out.flush();

        }catch (IOException | SQLException ex){
            ex.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
