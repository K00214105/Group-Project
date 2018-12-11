/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author K00214105
 */
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
public class Course implements Serializable {

    private int courseid;
    private String courseName;
    private String description;
    private String url;

    public Course() {
    }

    public Course(int courseid, String courseName, String description, String url) {
        this.courseid = courseid;
        this.courseName = courseName;
        this.description = description;
        this.url = url;
    }

    /**
     * @return the courseid
     */
    public int getCourseid() {
        return courseid;
    }

    /**
     * @param courseid the courseid to set
     */
    public void setCourseid(int courseid) {
        this.courseid = courseid;
    }

    /**
     * @return the courseName
     */
    public String getCourseName() {
        return courseName;
    }

    /**
     * @param courseName the courseName to set
     */
    public void setCourseName(String courseName) {
        this.courseName = courseName;
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
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    public ArrayList<Course> getCourses() {

        ArrayList listCourse = new ArrayList<>();

        Connection connection = DatabaseUtilityClass.getConnection();
        PreparedStatement ps = null;
        ResultSet resultSet = null;

        String query = "Select * from courses ORDER BY course_name";
        System.out.println(query.toString());

        try {
            ps = connection.prepareStatement(query);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                Course c = new Course();
                c.setCourseName(resultSet.getString("course_name"));
                c.setDescription(resultSet.getString("description"));
                c.setUrl(resultSet.getString("url"));
                listCourse.add(c);

            }

            connection.close();

        } catch (SQLException ex) {
            System.out.println(ex);
            return null;
        }

        return listCourse;

    }
}
