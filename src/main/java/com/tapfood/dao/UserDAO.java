package com.tapfood.dao;
import java.util.List;
import com.tapfood.model.User;
public interface UserDAO {

	int addUser(User user);

	User getUser(String email);

	void updateUser(User user);

	void deleteUser(int user);

	List<User> getAllUser();
}