package com.project.mango.cart;

import com.project.mango.menu.MenuVO;
import com.project.mango.restaurant.RestaurantVO;

import lombok.Data;

@Data
public class CartVO {

	private Long cartNum;
	private String id;
	private Long menuNum;
	private Long menuCount;
	
	private MenuVO menuVOs;
	
}
