package com.tapfood.dao;

import java.util.List;

import com.tapfood.model.OrderTable;
import com.tapfood.model.OrderHistory;

public interface OrderHistoryDAO {

void addOrderHistry(OrderHistory orderHistory);
	
	OrderHistory getOrderHistry(int orderHistoryId);
	
	void updateOrderHistry(OrderHistory orderHistory);
	
	void deleteOrderHistry(int orderHistoryId);
	
	List<OrderHistory> getAllOrderHistory(OrderHistory orderHistory);

	void addOrder(OrderTable order);

	OrderTable getOrder(int orderID);

	void updateOrder(OrderTable order);

	void deleteOrder(int orderId);

	List<OrderTable> getAllOrdersByUser(int userId);

	List<OrderTable> getAllOrder(OrderTable order);
}