package com.hr.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hr.beans.ShoppingCart;

/**
 * 
 *@Name : AddToCartServlet
 *@Author : LH
 *@Date : 2018-4-23下午05:46:24
 *@Version : V1.0
 * @Description:
 */
public class AddToCartServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//1.获取请求参数：id，price
		String bookName = request.getParameter("id");
		int price = Integer.parseInt(request.getParameter("price"));
		
		//2.获取购物车对象
        HttpSession session = request.getSession();
        ShoppingCart sc = (ShoppingCart) session.getAttribute("sc");
		
        if(sc == null){
        	sc = new ShoppingCart();
        	session.setAttribute("sc", sc);
        }
		
		//3.把点击的选项添加到购物车中
		sc.addToCart(bookName, price);
	
		//4.准备响应的json对象
		//如从服务器端返回json字符串，则属性名必须使用双引号
		StringBuilder sb = new StringBuilder();
		sb.append("{").append("\"bookName\":\"" + bookName + "\"")
		  .append(",")
		  .append("\"totalBookNumber\":" + sc.getTotalBookNumber())
		  .append(",")
		  .append("\"totalMoney\":" + sc.getTotalMoney())
		  .append("}");
		
		//5.响应json对象
		response.setContentType("text/javascript");
		response.getWriter().print(sb.toString());
		
		
		
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
          
		 doPost(req, resp);
	
	}
}
