/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author oki
 */
public class AccountDAO extends BaseDAO<Account> {

    public Account login(String user, String password) {
        String sql = "Select * from account where [user] = ? and [pass] = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1)
                        , rs.getString(2)
                        , rs.getString(3)
                        , rs.getInt(4)
                        , rs.getInt(4));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     public Account checkAccExist(String user) {
        String sql = "Select * from account where [user] = ? ";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user);           
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1)
                        , rs.getString(2)
                        , rs.getString(3)
                        , rs.getInt(4)
                        , rs.getInt(4));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void signin(String user,String pass){
        String sql = "Insert into account values (?,?,0,0,null)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user); 
            statement.setString(2, pass);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        Account a = dao.checkAccExist("admin123");
        if(a == null){
             System.out.println("null");
        }
        else{
            System.out.println(a);
        }
    }
}
