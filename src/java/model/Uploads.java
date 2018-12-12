/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author K00214105
 */
public class Uploads implements Serializable {

    private int uploadID;
    private String image;
    private String title;
    private String description;
    private int userId;

    public Uploads() {
    }

    public Uploads(int uploadID, String image, String title, String description, int userId) {
        this.uploadID = uploadID;
        this.image = image;
        this.title = title;
        this.description = description;
        this.userId = userId;
    }
    
    public Uploads(String image, String title, String description) {
        this.image = image;
        this.title = title;
        this.description = description;
    }

    public Uploads(String image, String title, String description, int userid) {
         this.image = image;
        this.title = title;
        this.description = description;
        this.userId = userId;
    }

    /**
     * @return the uploadID
     */
    public int getUploadID() {
        return uploadID;
    }

    /**
     * @param uploadID the uploadID to set
     */
    public void setUploadID(int uploadID) {
        this.uploadID = uploadID;
    }

    /**
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the userId
     */
    public int getUserId() {
        return userId;
    }

    /**
     * @param userId the userId to set
     */
    public void setUserId(int userId) {
        this.userId = userId;
    }
    
     public ArrayList<Uploads> getAllUploads() {

        ArrayList allUploads = new ArrayList<>();

        Connection connection = DatabaseUtilityClass.getConnection();
        PreparedStatement ps = null;
        ResultSet resultSet = null;

        String query = "Select * from uploads";
        
        try {

            ps = connection.prepareStatement(query);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                Uploads u = new Uploads();
                u.setUploadID(resultSet.getInt("uploadId"));
                u.setImage(resultSet.getString("image"));
                u.setTitle(resultSet.getString("title"));
                u.setDescription(resultSet.getString("description"));
                u.setUserId(resultSet.getInt("userId"));
                allUploads.add(u);
            }

            connection.close();
            

        } catch (SQLException ex) {
            System.out.println(ex);
            return null;
        }
        

        return allUploads;
    }
    
public Uploads saveToDatabase() {
         System.out.println("In upload save to db");
        Connection connection = DatabaseUtilityClass.getConnection();
         
        String sql = "INSERT INTO uploads (image,title,description, user_Id) VALUES (?,?,?,?);";
        String query = "SELECT LAST_INSERT_ID()";
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            PreparedStatement ps2 = connection.prepareStatement(query);
            
            ps.setString(1, this.getImage());
            ps.setString(2, this.getTitle());
            ps.setString(3, this.getDescription());
            ps.setInt(4, this.getUserId());
System.out.println("save to db id: " +this.getUserId());
            ps.executeUpdate();  
            ResultSet rs = ps2.executeQuery();
            while(rs.next()){
                this.uploadID = rs.getInt(1);
            }
               
            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return this;
    }


public Uploads getUploadDetails(int id) {
        
        Uploads u = null;
        Connection connection = DatabaseUtilityClass.getConnection();
        PreparedStatement ps = null;
        ResultSet resultSet = null;

        String query = "Select * from uploads where uploadId = ?";

        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                u = new Uploads();
                u.setUploadID(resultSet.getInt("uploadId"));
                u.setImage(resultSet.getString("image"));
                u.setTitle(resultSet.getString("title"));
                u.setDescription(resultSet.getString("description"));
                u.setUserId(resultSet.getInt("user_Id"));
                return u;
            }

            connection.close();
            

        } catch (SQLException ex) {
            System.out.println(ex);
            return null;
        }
        

        return u;
    }

    public boolean deleteUpload(int id) {
        
        Uploads u = null;
        Connection connection = DatabaseUtilityClass.getConnection();
        PreparedStatement ps = null;
        ResultSet resultSet = null;

        String query = "DELETE FROM uploads WHERE uploadId = ?";

        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            
            int i = ps.executeUpdate();
            if (i == 0) return false;
            connection.close();
            
        } catch (SQLException ex) {
            System.out.println(ex);
            return false;
        }
        return true;
    }

    
    public Uploads updateDateabase(int uploadId, String image, String title, String description) {
        Connection connection = DatabaseUtilityClass.getConnection();
         
        this.image = image;
        this.title = title;
        this.description = description;
       
       
         
        String sql = "UPDATE uploads SET image = ?, title = ?, description = ? WHERE uploadId = ? " ;
        
         try {
            PreparedStatement ps = connection.prepareStatement(sql);
            
            
            ps.setString(1, this.image);
            ps.setString(2, this.title);
            ps.setString(3, this.description);
           
         
            System.out.println("ps" + ps.toString());
            ps.executeUpdate();
            
                           
            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return this;
    }
}
