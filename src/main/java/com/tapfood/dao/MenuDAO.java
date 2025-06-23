package com.tapfood.dao;
import com.tapfood.model.Menu;
import java.util.List;

public interface MenuDAO {


	void addMenu(Menu menu);
	
	Menu getMenu(int menuId);
	
	void updateMenu(Menu menu);
	
	void deleteMenu(int menu);
	
	List<Menu> getAllMenu(Menu menu);
	
	List<Menu> getMenuByResId(int restaurantId);
}