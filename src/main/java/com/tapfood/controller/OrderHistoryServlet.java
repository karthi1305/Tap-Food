package com.tapfood.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tapfood.dao.OrderTableDAO;
import com.tapfood.daoimpl.OrderTableDAOImpl;
import com.tapfood.model.OrderTable;
import com.tapfood.model.User;

@WebServlet("/orderHistory")
public class OrderHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrderTableDAO orderDAO;

    @Override
    public void init() {
        orderDAO = new OrderTableDAOImpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedInUser");

        if (user != null) {
            List<OrderTable> orderHistory = orderDAO.getAllOrdersByUser(user.getUserId());
            request.setAttribute("orderHistory", orderHistory);
            RequestDispatcher dispatcher = request.getRequestDispatcher("order_history.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("login.jsp"); // Redirect to login if user is not logged in
        }
    }
}