package com.hr.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.hr.entity.Emp;
import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{

	private Emp emp;
	
	
	
	public Emp getEmp() {
		return emp;
	}
	
	private HttpServletRequest request;
	private HttpServletResponse response;
	
	public String test1() throws IOException{
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("name"));
		System.out.println(request.getMethod());
/*		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.write("–°√€∑‰");
		out.close();*/
		
		//{"name":"–°√€∑‰","id":100}
		String json = "{\"name\":\""+emp.getName()+"\",\"id\":\""+emp.getId()+"}";
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.write(json);
		out.close();
		return null;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
}
