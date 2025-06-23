package com.tapfood.daoimpl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.tapfood.dao.OrderTableDAO;
import com.tapfood.dbutil.DBUtil;
import com.tapfood.model.OrderTable;


public class OrderTableDAOImpl implements OrderTableDAO {

	Connection connection = null;
	String insertQuery = "INSERT INTO `order` (`order_date`,`total_amount`,`status`,`payment_method`) VALUES (?,?,?,?)";
	String retreiveQuery = "SELECT * FROM `order` WHERE `order_id` = ?";
	String updateQuery = "UPDATE `order` SET `order_date` = ? , `total_amount` = ? , `status` = ? , `payment_method` = ? WHERE `order_id` = ?";
	String deleteQuery = "DELETE FROM `order` WHERE `order_id` = ?";
	String selectQuery = "Select * FROM `order`";
	String getUser = "SELECT * FROM `menu` WHERE `user_id` = ?";
	PreparedStatement statement = null;
	Statement statement2 = null;
    ResultSet res = null;
    
    public OrderTableDAOImpl() {
    	try {
    		connection = DBUtil.myConnect();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
    
    
	@Override
	public void addOrder(OrderTable order) {
		try {
			statement = connection.prepareStatement(insertQuery);
			
			statement.setDate(1, new Date(order.getOrderDate().getTime()));
			statement.setDouble(2, order.getTotalAmount());
			statement.setString(3, order.getStatus());
			statement.setString(4, order.getPaymentMethod());
			System.out.println("row affected: " + statement.executeUpdate());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	private OrderTable extractUserFromResultSet(ResultSet res) throws SQLException{
		OrderTable order = new OrderTable();
		 order.setOrderId(res.getInt("order_id"));
		 order.setUserId(res.getInt("user_id"));
		 order.setResturantId(res.getInt("restaurant_id"));
		 order.setOrderDate(res.getDate("order_date"));
		 order.setTotalAmount(res.getDouble("total_amount"));
		 order.setStatus(res.getString("status"));
		 order.setPaymentMethod(res.getString("payment_method"));
		 return order;
	}
	
	
	@Override
	public OrderTable getOrder(int orderID) {
		OrderTable order = null;
		try {
			statement = connection.prepareStatement(retreiveQuery);
			statement.setInt(1,orderID);
			ResultSet res = statement.executeQuery();
			
			if(res.next()) {
				
				order = extractUserFromResultSet(res);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return order;
	}
	@Override
	public void updateOrder(OrderTable order) {
		try {
			statement = connection.prepareStatement(updateQuery);
			statement.setDate(1, new Date(order.getOrderDate().getTime()));
			statement.setDouble(2, order.getTotalAmount());
			statement.setString(3, order.getStatus());
			statement.setString(4, order.getPaymentMethod());
			statement.setInt(5, order.getOrderId());
			System.out.println("row affected: " + statement.executeUpdate());
			
			statement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	@Override
	public void deleteOrder(int orderId) {
		try {
			statement = connection.prepareStatement(deleteQuery);
			statement.setInt(1,orderId);
			System.out.println("row affected: " + statement.executeUpdate());
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	@Override
	public List<OrderTable> getAllOrder(OrderTable order) {
		List<OrderTable> list = new ArrayList<>();
        try {
            statement2 = connection.createStatement();
            res = statement2.executeQuery(selectQuery);
            while (res.next()) {
            	OrderTable o = extractUserFromResultSet(res);
                list.add(o);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } 
		return list;
	}
	
	
	@Override
	public List<OrderTable> getAllOrdersByUser(int userId) {
		List<OrderTable> list = new ArrayList<>();
		
		try {
			statement = connection.prepareStatement(getUser);
			statement.setInt(1,userId);
			res = statement.executeQuery();
			
			while(res.next()) {
				OrderTable o = extractUserFromResultSet(res);
                list.add(o);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}
		
		return list;
	}
	
	
	
	 // Method to close all database resources
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
}