package com.tapfood.daoimpl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.tapfood.dao.UserDAO;
import com.tapfood.dbutil.DBUtil;
import com.tapfood.model.User;


public class UserDAOImpl implements UserDAO {

	
	Connection connection = null;
	String insertQuery = "INSERT INTO `user` (`username`,`password`,`email`,`address`) VALUES (?,?,?,?)";
	String retreiveQuery = "SELECT * FROM `user` WHERE `email` = ?";
	String updateQuery = "UPDATE `user` SET `user_name` = ? , `password` = ? , `email` = ? , `address` = ? WHERE `user_id` = ?";
	String deleteQuery = "DELETE FROM `user` WHERE `user_id` = ?";
	String selectQuery = "Select * FROM `user`";
	PreparedStatement statement = null;
	Statement statement2 = null;
    ResultSet res = null;

	public UserDAOImpl() {
		try {
			connection = DBUtil.myConnect();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		try {
			statement = connection.prepareStatement(insertQuery);
			statement.setString(1, user.getUsername());
			statement.setString(2, user.getPassword());
			statement.setString(3, user.getEmail());
			statement.setString(4, user.getAddress());
			
			return statement.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public User getUser(String email) {
		// TODO Auto-generated method stub
User user = null;
		
		
		try {
			statement = connection.prepareStatement(retreiveQuery);
			statement.setString(1, email);
			ResultSet res = statement.executeQuery();
			
			if(res.next()) {
				
				user = extractUserFromResultSet(res);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return user;
	}
	private User extractUserFromResultSet(ResultSet res) throws SQLException{
		 User user = new User();
		 user.setUserId(res.getInt("userid"));
		 user.setUsername(res.getString("username"));
		 user.setPassword(res.getString("password"));
		 user.setEmail(res.getString("email"));
		 user.setAddress(res.getString("address"));
		 return user;
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		try {
			statement = connection.prepareStatement(updateQuery);
			statement.setString(1, user.getUsername());
			statement.setString(2, user.getPassword());
			statement.setString(3, user.getEmail());
			statement.setString(4, user.getAddress());
			statement.setInt(6, user.getUserId());
			System.out.println("row affected: " + statement.executeUpdate());
			
			statement.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteUser(int user) {
		// TODO Auto-generated method stub
		try {
			statement = connection.prepareStatement(deleteQuery);
			statement.setInt(1,user);
			System.out.println("row affected: " + statement.executeUpdate());
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		 List<User> list = new ArrayList<>();
	        
	        try {
	            statement2 = connection.createStatement();
	            res = statement2.executeQuery(selectQuery);
	            while (res.next()) {
	                User u = extractUserFromResultSet(res);
	                list.add(u);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } 
			return list;
		}
	public void close() {

        try {
            if (connection != null) {
                connection.close(); // Close the connection
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Print stack trace if there is an SQL exception
        }
        try {
            if (statement != null) {
                statement.close(); // Close the statement
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Print stack trace if there is an SQL exception
        }
        try {
            if (statement2 != null) {
                statement2.close(); // Close the prepared statement
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Print stack trace if there is an SQL exception
        }
        try {
            if (res != null) {
                res.close(); // Close the result set
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Print stack trace if there is an SQL exception
        }
    }
	public User getUser(int i) {
		// TODO Auto-generated method stub
		return null;
	}
	
	}
	
	