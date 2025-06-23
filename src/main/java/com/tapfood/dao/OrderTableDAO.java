package com.tapfood.dao;


import java.util.List;
import com.tapfood.model.OrderTable;


public interface OrderTableDAO {


	void addOrder(OrderTable order);
	
	OrderTable getOrder(int orderID);
	
	void updateOrder(OrderTable order);
	
	void deleteOrder(int orderId);
	
	List<OrderTable> getAllOrder(OrderTable order);

	List<OrderTable> getAllOrdersByUser(int userId);   
}