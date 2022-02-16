package com.gms.playstation.model;

import com.gms.playstation.util.ConnectionMySQL;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DaoCards {

    public List<BeanCards> findAll(){
        BeanCards beanCards = new BeanCards();
        //String nombre = beanProducto.getNombre();
        List<BeanCards> cardsList = new ArrayList<>();
        try(

                Connection con = ConnectionMySQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("select * from videogame where state = 'Disponible'");

        ){
            while (rs.next()){
                BeanCards unCard = new BeanCards();
                unCard.setId_videojuego(rs.getInt("id_videogame"));
                unCard.setNombre(rs.getString("name"));
                unCard.setDescripcion(rs.getString("description"));
                unCard.setPrecio(rs.getString("price"));
                //unCard.setImagen((InputStream) rs.getBlob("image"));
                cardsList.add(unCard);
            }

        } catch (SQLException ex){
            ex.printStackTrace();
        }
        return cardsList;
    }

    public boolean saveBanner(BeanCards unCard) {
        try(Connection con = new ConnectionMySQL().getConnection()){
            try(PreparedStatement pstm = con.prepareStatement("INSERT INTO videogame (name, description, price, state, image) VALUES (?, ?, ?, ?, ?)")){
                pstm.setString(1, unCard.getNombre());
                pstm.setString(2, unCard.getDescripcion());
                pstm.setString(3, unCard.getPrecio());
                pstm.setString(4, unCard.getEstado());
                pstm.setBlob(5, unCard.getImagen());
                return pstm.executeUpdate() == 1;
            }catch (SQLException ex){
                ex.printStackTrace();
            }
        } catch (SQLException ex){
            ex.printStackTrace();
        }
        return false;
    }


    public List<BeanCards> findAllProx(){
        BeanCards beanCards = new BeanCards();
        List<BeanCards> cardsList = new ArrayList<>();
        try(

                Connection con = ConnectionMySQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("select * from videogame where state = 'Próximamente'");

        ){
            while (rs.next()){
                BeanCards unCard = new BeanCards();
                unCard.setId_videojuego(rs.getInt("id_videogame"));
                unCard.setNombre(rs.getString("name"));
                unCard.setDescripcion(rs.getString("description"));
                unCard.setPrecio(rs.getString("price"));
                //unCard.setImagen((InputStream) rs.getBlob("image"));
                cardsList.add(unCard);
            }

        } catch (SQLException ex){
            ex.printStackTrace();
        }
        return cardsList;
    }

    public Blob getBannerByCourse(int id) {
        Blob imagen = null;
        try(Connection con = new ConnectionMySQL().getConnection();){
            try(PreparedStatement pstm = con.prepareStatement("select image from videogame where id_videogame = ?;")){
                pstm.setInt(1, id);
                ResultSet rs = pstm.executeQuery();
                while (rs.next()){
                    imagen = rs.getBlob("image");
                }

            }catch (SQLException ex){
                ex.printStackTrace();
            }
        } catch (SQLException ex){
            ex.printStackTrace();
        }
        return imagen;
    }
}
