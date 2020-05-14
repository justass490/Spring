package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@Controller
public class controller {

    @RequestMapping("addnew")
    public String addNewLocation(HttpServletRequest request){
        String name = request.getParameter("coordname");
        String xcoord = request.getParameter("xcoord");
        String ycoord = request.getParameter("ycoord");
            try {
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/locations", "root", "");
                PreparedStatement addrow = connection.prepareStatement("insert into `coords`(name, N, E)" + "values (?,?,?)");
                PreparedStatement deleterow =connection.prepareStatement("DELETE FROM `coords` WHERE `name` = ''");
                addrow.setString(1, name);
                addrow.setString(2, xcoord);
                addrow.setString(3, ycoord);
                if (name != null && xcoord != null && ycoord != null){
                    addrow.executeUpdate();
                    deleterow.executeUpdate();
                }else {
                    System.out.println("cant be null");
                }

                connection.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        return "addnew.jsp";
    }
    @RequestMapping("viewall")
    public String viewAllLocations(){
        return "viewall.jsp";
    }
    @RequestMapping("register")
    public String registerUser(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/locations", "root", "");
            PreparedStatement register = connection.prepareStatement("insert into `credentials`(username, password, email)" + "values (?,?,?)");
            PreparedStatement deleterow =connection.prepareStatement("DELETE FROM `credentials` WHERE `username` = ''");
            register.setString(1, username);
            register.setString(2, password);
            register.setString(3, email);
            if (username != null && password != null && email != null){
                register.executeUpdate();
                deleterow.executeUpdate();
            }else {
                System.out.println("cant be null");
            }
            connection.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return "register.jsp";
    }
    @RequestMapping("login")
    public String loginUser(HttpServletRequest request){
        String usernameDB = null;
        String passwordDB = null;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/locations", "root", "");
            PreparedStatement login = connection.prepareStatement("select * from `credentials` where username = '" + username + "' and password = '" + password + "'");
            ResultSet result = login.executeQuery();
            while (result.next()){
                usernameDB = result.getString("username");
                passwordDB = result.getString("password");
            }
            if (username.equals(usernameDB) && password.equals(passwordDB)) {
                return "addnew.jsp";
            }else {
                System.out.println("user does not exist");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return "login.jsp";
    }
    @RequestMapping("delete")
    public String deleteEntry(HttpServletRequest request){
        String id = request.getParameter("id");
        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/locations", "root", "");
            PreparedStatement delete = connection.prepareStatement("delete from `coords` where id like " + id);
            delete.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
        return "delete.jsp";
    }
}
