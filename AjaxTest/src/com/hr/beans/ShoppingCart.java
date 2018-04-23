package com.hr.beans;

import java.util.HashMap;
import java.util.Map;

/**
 * ���ﳵ
 *@Name : ShoppingCart
 *@Author : LH
 *@Date : 2018-4-23����05:20:51
 *@Version : V1.0
 * @Description:
 */
public class ShoppingCart {

	//��� ShoppingCartItem ��Map ��������,ֵ��ShoppingCartItem����
	private Map<String,ShoppingCartItem> items = new HashMap<String,ShoppingCartItem>();
     
	private String bookName;
	
	
	

	/**
	 * ��ӹ��ﳵ
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
     * ��ȡ�ܱ���
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
     * ��ȡ�ܽ��
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
