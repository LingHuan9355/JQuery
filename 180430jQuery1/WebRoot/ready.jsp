<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'ready.jsp' starting page</title>
 	<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            alert("页面加载我就被运行了。");
        });
    </script>
    
  </head>
  
  <body>
    This is my JSP page. <br>
  </body>
</html>
