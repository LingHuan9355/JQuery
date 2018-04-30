package com.hr.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 1.用户名验证
 *@Name : CheckServlet
 *@Author : LH
 *@Date : 2018-4-30下午04:28:45
 *@Version : V1.0
 * @Description:
 */
@SuppressWarnings("serial")
public class CheckServlet extends HttpServlet {

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
           
		 request.setCharacterEncoding("UTF-8");
		 String userName= request.getParameter("username");
		 //System.out.println(userName);
		 
		 response.setContentType("text/html;charset=UTF-8");
		 PrintWriter out = response.getWriter();
		 
		 if("Carl".equals(userName)){
			 out.print("<font color='red'>" +userName + "不可以使用！</font>");
		 }else{
			 out.print("<font color='green'>" +userName + "可以使用！</font>");
			 
		 }
	
	
	}
}
