package com.tapfood.daoimpl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.tapfood.dao.OrderHistoryDAO;
import com.tapfood.dbutil.DBUtil;
import com.tapfood.model.OrderHistory;
import com.tapfood.model.OrderTable;

public class OrderHistoryDAOImpl implements OrderHistoryDAO{

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
	//private OrderHistory order;
	 public OrderHistoryDAOImpl() {
	    	try {
	    		connection = DBUtil.myConnect();
			}catch(Exception e) {
				e.printStackTrace();
			}	}
	@Override
	public void addOrderHistry(OrderHistory orderHistory) {
		// TODO Auto-generated method stub
		try {
			statement = connection.prepareStatement(insertQuery);
			
			statement.setDate(1, new Date(orderHistory.getOrderDate().getTime()));
			statement.setDouble(2, orderHistory.getTotalAmount());
			statement.setString(3, orderHistory.getStatus());
			System.out.println("row affected: " + statement.executeUpdate());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	@Override
	public OrderHistory getOrderHistry(int orderHistoryId) {
		// TODO Auto-generated method stub
		OrderHistory order = null;
		try {
			statement = connection.prepareStatement(retreiveQuery);
			statement.setInt(1,orderHistoryId);
			ResultSet res = statement.executeQuery();
			
			if(res.next()) {
				
				order = extractUserFromResultSet(res);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return order;
	}
	private OrderHistory extractUserFromResultSet(ResultSet res) throws SQLException{
		OrderHistory order = new OrderHistory();
		 order.setOrderHistoryId(res.getInt("order_history_id"));
		 order.setUserId(res.getInt("order_id"));
		 order.setOrderId(res.getInt("user_id"));
		 order.setOrderDate(res.getDate("order_date"));
		 order.setTotalAmount(res.getDouble("total_amount"));
		 order.setStatus(res.getString("status"));
		 return order;
	}
	@Override
	public void updateOrderHistry(OrderHistory orderHistory) {
		// TODO Auto-generated method stub
		try {
			statement = connection.prepareStatement(updateQuery);
			
			statement.setDate(1, new Date(orderHistory.getOrderDate().getTime()));
			statement.setDouble(2, orderHistory.getTotalAmount());
			statement.setString(3, orderHistory.getStatus());
			statement.setInt(4, orderHistory.getOrderHistoryId());
			System.out.println("row affected: " + statement.executeUpdate());
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
	}
	@Override
	public void deleteOrderHistry(int orderHistoryId) {
		// TODO Auto-generated method stub
		try {
			statement = connection.prepareStatement(deleteQuery);
			statement.setInt(1,orderHistoryId);
			System.out.println("row affected: " + statement.executeUpdate());
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	@Override
	public List<OrderHistory> getAllOrderHistory(OrderHistory orderHistory) {
		// TODO Auto-generated method stub
		List<OrderHistory> list = new ArrayList<>();
        try {
            statement2 = connection.createStatement();
            res = statement2.executeQuery(selectQuery);
            while (res.next()) {
            	OrderHistory o = extractUserFromResultSet(res);
                list.add(o);
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
	@Override
	public void addOrder(OrderTable order) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public OrderTable getOrder(int orderID) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void updateOrder(OrderTable order) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void deleteOrder(int orderId) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<OrderTable> getAllOrdersByUser(int userId) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<OrderTable> getAllOrder(OrderTable order) {
		// TODO Auto-generated method stub
		return null;
	}
    
   


	
}