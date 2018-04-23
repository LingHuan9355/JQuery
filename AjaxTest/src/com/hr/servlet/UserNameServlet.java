package com.hr.servlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 验证用户名是否使用
 *@Name : valiateUserNameServlet
 *@Author : LH
 *@Date : 2018-4-23下午04:18:20
 *@Version : V1.0
 * @Description:
 */
public class UserNameServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("servlet...");
		  List<String> userNames = Arrays.asList("AAA","BBB","CCC");
		  
		  String userName = request.getParameter("userName");
		  String result = null;
		  if(userNames.contains(userName)){
			  result = "<font color='red'>该用户名已使用</font>";
		  }else {
			  result = "<font color='green'>该用户名可以使用 </font>";
			  
		  }

		  response.setContentType("text/html;charset=UTF-8");
		  response.setCharacterEncoding("UTF-8");
		  response.getWriter().print(result);
		  
		  
	}
	  
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		   
		  doPost(req, resp);
		  
	}
}
