package com.hr.beans;

import java.util.HashMap;
import java.util.Map;

/**
 * 购物车
 *@Name : ShoppingCart
 *@Author : LH
 *@Date : 2018-4-23下午05:20:51
 *@Version : V1.0
 * @Description:
 */
public class ShoppingCart {

	//存放 ShoppingCartItem 的Map 键：书名,值：ShoppingCartItem对象
	private Map<String,ShoppingCartItem> items = new HashMap<String,ShoppingCartItem>();
     
	private String bookName;
	
	
	

	/**
	 * 添加购物车
	 * @param bookName
	 * @param price
	 */
    public void addToCart(String bookName,int price){
    	
    	this.bookName = bookName;
    	
    	if(items.containsKey(bookName)){
    		ShoppingCartItem item = items.get(bookName);
    		item.setNumber(item.getNumber()+1);
        }else{
        	ShoppingCartItem item = new ShoppingCartItem();
        	item.setBookName(bookName);
        	item.setPrice(price);
        	item.setNumber(1);
            
        	items.put(bookName, item);
        }
    }

    /**
     * 获取总本数
     * @return
     */
    public int getTotalBookNumber(){
    	int total = 0;
    	
    	for (ShoppingCartItem item : items.values()) {
			total += item.getNumber();
		}
    	
    	return total;
    }
    
    /**
     * 获取总金额
     * @return
     */
    public int getTotalMoney(){
    	int money = 0;
    	
    	for (ShoppingCartItem item : items.values()) {
    		money += item.getNumber()*item.getPrice();
		}
    	
    	return money;
    }
    
    public String getBookName() {
		return bookName;
	}

}
