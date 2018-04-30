<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'checkUser.jsp' starting page</title>
   
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
    <%--
    <script type="text/javascript" src="script/jquery-1.7.2.js"></script>
    --%>
    <script type="text/javascript">
       function check(){
			$.post("check",{username:$("#username").val()},function(data){
 				$("#info").html(data);
			});

       }
    </script>
  </head>
  <body>
    
    <div align="center">
      	请输入用户名：
    	<input type="text" name="username" onblur="check()" id="username">
    	<div id="info"></div>
      
    </div>
    
  </body>
</html>
