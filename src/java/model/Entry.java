/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

/**
 *
 * @author Daniel
 */
public class Entry {

    private Date dateUploaded;
    private double price;

    public Entry() {
    }

    public Entry(Date dateUploaded, double price) {
        this.dateUploaded = dateUploaded;
        this.price = price;
    }
    
    
    
    /**
     * @return the dateUploaded
     */
    public Date getDateUploaded() {
        return dateUploaded;
    }

    /**
     * @param dateUploaded the dateUploaded to set
     */
    public void setDateUploaded(Date dateUploaded) {
        this.dateUploaded = dateUploaded;
    }

    /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }
    
    

    public void saveToDatabase(int uploadId, int i, LocalDate today, double parseDouble) {
             Connection connection = DatabaseUtilityClass.getConnection();

        String sql = "INSERT INTO `enteries`(`upload_id`, `showID`, `date_uploaded`, `price`) VALUES (?,?,?,?)";
        

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
           

            ps.setInt(1, uploadId);
            ps.setInt(2, i);
            ps.setString(3, today.toString());
            ps.setDouble(4, parseDouble);
          
            ps.executeUpdate();
            
           
            connection.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
       
    }
    
}
