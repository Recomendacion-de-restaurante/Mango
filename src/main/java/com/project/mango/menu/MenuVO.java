package com.project.mango.menu;

import lombok.Data;

@Data
public class MenuVO {
	
	private Long menuNum;
	private Long restaurantNum;
	private String name;
	private Long price;
	private String detail;

}