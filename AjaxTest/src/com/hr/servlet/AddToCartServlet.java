package com.hr.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hr.beans.ShoppingCart;

/**
 * 
 *@Name : AddToCartServlet
 *@Author : LH
 *@Date : 2018-4-23����05:46:24
 *@Version : V1.0
 * @Description:
 */
public class AddToCartServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//1.��ȡ���������id��price
		String bookName = request.getParameter("id");
		int price = Integer.parseInt(request.getParameter("price"));
		
		//2.��ȡ���ﳵ����
        HttpSession session = request.getSession();
        ShoppingCart sc = (ShoppingCart) session.getAttribute("sc");
		
        if(sc == null){
        	sc = new ShoppingCart();
        	session.setAttribute("sc", sc);
        }
		
		//3.�ѵ����ѡ�����ӵ����ﳵ��
		sc.addToCart(bookName, price);
	
		//4.׼����Ӧ��json����
		//��ӷ������˷���json�ַ�����������������ʹ��˫����
		/*StringBuilder sb = new StringBuilder();
		sb.append("{").append("\"bookName\":\"" + bookName + "\"")
		  .append(",")
		  .append("\"totalBookNumber\":" + sc.getTotalBookNumber())
		  .append(",")
		  .append("\"totalMoney\":" + sc.getTotalMoney())
		  .append("}");*/
		   
		//Jackson ���������߰�
		  //1).����jar��
		  //2).����org.codehaus.jackson.map.ObjectMappter ����
		  //3).����mapper ��writeValueAsString()������һ������򼯺�ת����һ��json�ַ���
		  //4).ע�⣺JackSon ʹ��getter ��������λjson��������ԣ�
		  //5).����ͨ������ע��org.codehaus.jackson.annotate.JsonIgnore
		     //����ĳһ��getter ���������
		ObjectMapper mapper = new ObjectMapper();
		String result = mapper.writeValueAsString(sc);
		System.out.println(result);
		
		//5.��Ӧjson����
		response.setContentType("text/javascript");
		//response.getWriter().print(sb.toString());
		
		response.getWriter().print(result);
		
		
		
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
          
		 doPost(req, resp);
	
	}
}