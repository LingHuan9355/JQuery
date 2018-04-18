<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'testload.jsp' starting page</title>
   <style type="text/css">
  	@import url("clearleft.css");
    </style>
    <script type="text/javascript" src="script/jquery-1.7.2.js"></script>
    
    
    <script type="text/javascript">
       $(function(){
          $("a").click(function(){

              //使用load方法处理ajax
              var url = this.href;
              var args = {"time":new Date()};
              $("#msg").load(url,args);

              return false;
              });

            });
    
    
    </script>
  </head>
  
  <body>
      <a href="test.txt">Hello Ajax</a>
      <div id="msg"></div>
  </body>
</html>
