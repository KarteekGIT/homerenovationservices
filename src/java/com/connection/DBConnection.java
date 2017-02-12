package com.connection;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import java.util.*;
/**
 *
 * @author praveen
 */
public class DBConnection {
    static Connection connect;

    static{
        try{
            Driver d = (Driver)(Class.forName("com.mysql.jdbc.Driver").newInstance());
            Properties p = new Properties();
            p.put("user", "root");
            p.put("password", "root123");
            
            connect = d.connect("jdbc:mysql://localhost:3306/praveen", p);
        }catch(ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e){
            System.out.println("Exception occured in DBConnection : " +e);
        }
    }

    /**
     *
     * @return
     */
    public static Connection getConnection(){
        return connect;
    }
}