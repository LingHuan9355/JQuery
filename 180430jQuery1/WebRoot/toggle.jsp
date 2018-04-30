<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'toggle.jsp' starting page</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
     <script type="text/javascript">
        $(document).ready(function (){
    	     $("a").toggle(function(){
    	    	      //第一次事件激发执行的逻辑
    	                $("ul").hide();
    	            },function(){	 
        	            //第二次事件激发执行的逻辑
    	                $("ul").show();
    	            }
    	     );
    	});
    	         
     </script>
  </head>
  
  <body>
            <a href="#">java</a>
			<ul>
			    <li>Struts</li>
			    <li>Hibernate</li>
			    <li>Mybatis</li>
			    <li>Spring</li>
			    <li>SpringMVC</li>
			    <li>SpringBoot</li>
			</ul>
  </body>
</html>
