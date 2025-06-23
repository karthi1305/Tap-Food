package com.tapfood.main;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import com.tapfood.dao.UserDAO;
import com.tapfood.daoimpl.MenuDAOImpl;
import com.tapfood.daoimpl.OrderTableDAOImpl;
import com.tapfood.daoimpl.OrderHistoryDAOImpl;
import com.tapfood.daoimpl.OrderItemDAOImpl;
import com.tapfood.daoimpl.RestaurantDAOImpl;
import com.tapfood.daoimpl.UserDAOImpl;
import com.tapfood.model.Menu;
import com.tapfood.model.OrderTable;
import com.tapfood.model.OrderHistory;
import com.tapfood.model.OrderItem;
import com.tapfood.model.Restaurant;
import com.tapfood.model.User;
//@SuppressWarnings("unused")
public class Main {

	public static void main(String[] args) throws ParseException {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

		// USER DESIGN OBJECT Implementation------------------------------------------------------------------------------------------

		UserDAOImpl ud = new UserDAOImpl();

		User u = new User("raju" , "raju@123","abc@.com","BTM");
		ud.addUser(u);

		User user = ud.getUser(1);
		System.out.println(user);

		User ud1 = new User("raju" , "raju@123","abc@.gmailcom","hsr");
		((UserDAO) ud1).updateUser(u);

		((UserDAO) ud1).deleteUser(1);

		List<User> li = ((UserDAO) ud1).getAllUser(); // Calling getAllEmployee() method.
		for (User userDetails : li) {
			System.out.println(userDetails);
		}


		// RESTAURANT DESIGN OBJECT Implementation-------------------------------------------------------------------------------------		

		RestaurantDAOImpl rd = new RestaurantDAOImpl();

		Restaurant res = new Restaurant(1, "Ghar ka Khaana", "Veg", 30, "Bihar", 3.2, true);
		rd.addRestaurant(res);

		Restaurant r = rd.getRestaurant(1);
		System.out.println(r);


		Restaurant restaurant = new Restaurant(1, "Ghar ka Khaana", "Veg", 30, "Patna", 3.2, true);
		rd.updateRestaurant(restaurant);


		rd.deleteRestaurant(2);


		List<Restaurant> li1 = rd.getAllRestaurant(); 
		for (Restaurant details : li1) {
			System.out.println(details);
		}


		// MENU DESIGN OBJECT Implementation-------------------------------------------------------------------------------------------	

		MenuDAOImpl md = new MenuDAOImpl();

		Menu menu = new Menu(2, 2, "paneer", "panner tikka masala",299, true);
		md.addMenu(menu);

		Menu menu1 = md.getMenu(1);
		System.out.println(menu1);

		Menu menu11 = new Menu(3, 0, "Pizza", "Pepparoni", 199, true);
		md.updateMenu(menu11);

		md.deleteMenu(2);

		Menu r1 = new Menu();
		List<Menu> list = md.getAllMenu(r1); 
		for (Menu details : list) {
			System.out.println(details);
		}

		// ORDER DESIGN OBJECT Implementation-------------------------------------------------------------------------------------------

		OrderTableDAOImpl od = new OrderTableDAOImpl();

		OrderTable order = new OrderTable(1, 0 , 0,format.parse("2024-06-01"), 189.9, "Delivered","UPI");
		od.addOrder(order);

		OrderTable order1 = od.getOrder(1);
		System.out.println(order1);

		OrderTable order11 = new OrderTable(1, 0 , 0,format.parse("2025-06-01"), 189.9, "Pending","Debit Card");
		od.updateOrder(order11);

		od.deleteOrder(2);

		OrderTable o = new OrderTable();
		List<OrderTable> list1 = od.getAllOrder(o); 
		for (OrderTable details : list1) {
			System.out.println(details);
		}


		// ORDER ITEM DESIGN OBJECT Implementation-------------------------------------------------------------------------------------

		OrderItemDAOImpl odi = new OrderItemDAOImpl();

		OrderItem items = new OrderItem(1, 1, 1, 5, 2);
		odi.addOrderItem(items);

		OrderItem orderItem = odi.getOrderItem(1);
		System.out.println(orderItem);

		OrderItem items1 = new OrderItem(1, 1, 1, 3, 2);
		odi.updateOrderItem(items1);

		odi.deleteOrderItem(1);
		OrderItem items11 = new OrderItem();
		List<OrderItem> list11 = odi.getAllOrderItem(items11); 
		for (OrderItem details : list11) {
			System.out.println(details);
		}

		// ORDER HISTORY DESIGN OBJECT Implementation-------------------------------------------------------------------------------------

		OrderHistoryDAOImpl odh = new OrderHistoryDAOImpl();

		OrderHistory orderHistory = new OrderHistory();
		odh.addOrderHistry(orderHistory);

		OrderHistory orderHistry = odh.getOrderHistry(1);
		System.out.println(orderHistry);

		OrderHistory orderHistory1 = new OrderHistory();
		odh.updateOrderHistry(orderHistory1);

		odh.deleteOrderHistry(2);

		OrderHistory orderHistory11 = new OrderHistory();
		List<OrderHistory> list111 = odh.getAllOrderHistory(orderHistory11);
		for (OrderHistory oh : list111) {
			System.out.println(oh);
		}

	}


}





