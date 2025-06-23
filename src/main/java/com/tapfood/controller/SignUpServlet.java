package com.tapfood.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tapfood.dao.UserDAO;
import com.tapfood.daoimpl.UserDAOImpl;
import com.tapfood.model.User;


@WebServlet("/signup")
public class SignUpServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	UserDAO userDAOImpl;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		userDAOImpl = new UserDAOImpl();
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String confirmPassword = req.getParameter("confirmPassword");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		
		if(password.equals(confirmPassword)) {
			
			int x = userDAOImpl.addUser(new User(username, password, email, address));
			System.out.println(x);
			
			if(x != 0) {
				resp.sendRedirect("login.jsp");
			}else {
				resp.sendRedirect("signupUnsucessful.jsp");
			}
		}else {
			resp.sendRedirect("passwordError.jsp");
		}
		
	}
}