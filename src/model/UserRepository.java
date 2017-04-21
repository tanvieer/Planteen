package model;

import java.sql.*;

import org.apache.jasper.tagplugins.jstl.core.If;

import com.sun.crypto.provider.RSACipher;
import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;
import com.sun.corba.se.pept.transport.Connection;

import DataAccessLayer.MySqlDataAccess;
import entity.UserInfo;
public class UserRepository {


    public UserRepository() {
    }

    public boolean addUser(UserInfo userinfo) {
        try {
        	
        	MySqlDataAccess da = new MySqlDataAccess ();
         
            String query = "INSERT INTO userinfo(name,username,email,password,type) VALUES('"+userinfo.getName()+"','"+userinfo.getUsername()+"','"+userinfo.getEmail()+"','"+userinfo.getPassword()+"','"+userinfo.getUserType()+"')";
            
            System.out.println(query);
            int result = da.executeQuery(query);
            

            if (result != 0) {
                return true;
            }
            return false;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        
        
        
    }


}