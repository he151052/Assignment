/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Product;

/**
 *
 * @author oki
 */
public class ProductDAO extends BaseDAO<Product> {

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * from product";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getDouble("price"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> getNewProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select top 3 * from product order by id desc";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getDouble("price"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> getProductToPagination(int index) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT  * FROM product\n"
                + "ORDER BY (SELECT NULL)\n"
                + "OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, (index - 1) * 6);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getDouble("price"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> getProductByCategory(int cid) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT  * FROM product\n"
                + " where cateid = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, cid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getDouble("price"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> lc = new ArrayList<>();
        String sql = "SELECT * from category";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setCid(rs.getInt("cid"));
                c.setCname(rs.getString("cname"));

                lc.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lc;
    }

    public int countProduct() {
        String sql = "select COUNT(*) from product";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public List<Product> searchProductByName(String value) {
        List<Product> list = new ArrayList<>();
        String sql = "Select * from product\n"
                + "where name like ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + value + "%");
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getDouble("price"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public Product getProductById(int id){
        String sql = "Select * from product\n"
                + "where id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getDouble("price"));
                p.setTitle(rs.getString("title"));
                p.setDescription(rs.getString("description"));
                return p;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
//        List<Category> lc = dao.getAllCategory();
//        for (Category p : lc) {
//            System.out.println(p);
//        }
//        List<Product> lp = dao.searchProductByName("jersey");
//        for (Product p : lp) {
//            System.out.println(p);
//        }
        Product p = dao.getProductById(1);
        Product p2 = dao.getProductById(2);
        List<Product> l = new ArrayList<>();
        l.add(p);
        l.add(p2);
        System.out.println(l);
//        int count = dao.countProduct();
//        System.out.println(count);
    }
}
