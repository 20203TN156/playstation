package com.im.bienes.model;

import com.im.bienes.util.ConnectionMySQL;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DaoCards {

    public List<BeanCards> findAll(){
        //Esto es una simulación como si construyeramos una base de datos
        /*BeanCourse unCurso = new BeanCourse(1, "Aplicaciones Web", "Desarrollo de aplicaciones");
        BeanCourse otroCurso = new BeanCourse(2, "Base de Datos para Aplicaciones", "Diseño y creación de bases de datos");
        BeanCourse integradora = new BeanCourse(3, "Integradora", "Materia que integra habilidades adquiridas en el cuatri");
        List<BeanCourse> courseList = new ArrayList<>();
        courseList.add(unCurso);
        courseList.add(otroCurso);
        courseList.add(integradora);*/
        BeanCards beanCards = new BeanCards();
        //String nombre = beanProducto.getNombre();
        List<BeanCards> cardsList = new ArrayList<>();
        try(

                Connection con = ConnectionMySQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("select * from videojuego");

        ){
            while (rs.next()){
                BeanCards unCard = new BeanCards();
                unCard.setId_videojuego(rs.getInt("id_videojuego"));
                unCard.setNombre(rs.getString("nombre"));
                unCard.setDescripcion(rs.getString("descripcion"));
                unCard.setPrecio(rs.getDouble("precio"));
                unCard.setImagen((InputStream) rs.getBlob("imagen"));
                cardsList.add(unCard);
            }

        } catch (SQLException ex){
            ex.printStackTrace();
        }
        return cardsList;
    }
}
