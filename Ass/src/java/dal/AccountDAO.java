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
                return new Account(rs.getInt(1),
                         rs.getString(2),
                         rs.getString(3),
                         rs.getInt(4),
                         rs.getInt(4));
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
                return new Account(rs.getInt(1),
                         rs.getString(2),
                         rs.getString(3),
                         rs.getInt(4),
                         rs.getInt(5),
                         rs.getString(6));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void signin(String user, String pass) {
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

    public void editAccount(String username, String pass, String mail,int aid) {
        String sql = "UPDATE [dbo].[account]\n"
                + "SET [user] = ?\n"
                + ",[pass] = ?\n"
                + ",[email] = ?\n"
                + " WHERE uID = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, pass);
            statement.setString(3, mail);
            statement.setInt(4, aid);
            statement.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        dao.editAccount("min", "min12345", "min@gmail.com", 2);
        Account a = dao.checkAccExist("min");
        
        if (a == null) {
            System.out.println("null");
        } else {
            System.out.println(a);
        }
    }
}
