<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  <title>My JSP 'tagNameClassId.jsp' starting page</title>
  <style type="text/css">
       .mystyle{
        	color:red;
        }
  </style>
  
  <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
   <script type="text/javascript">
     //根据标签名选择
     function getByTag(){
           alert($("p").html());
     }

	 //根据id选择
     function getById(){
          alert($("#d1").html());
     }
     
 	  //根据样式选择
      function getByClass(){
            alert($(".mystyle").html());
      }

      //根据标签属性名进行选择
      function getByAttributeName(){
         alert($("input[name='username']").val());
      }
   
   </script>

  </head>
  
  <body>
  	<div align="center">
    	<p>这是一个段落</p>
		<div id="d1">这是一个层，编号d1</div>
		<div id="d2" class="mystyle">这是一个层，编号d2</div>
		<input type="text" name="username" value="mike">
		<br>
		<input type="button" value="根据标签名选择" onclick="getByTag()">
		<input type="button" value="根据id选择" onclick="getById()">
		<input type="button" value="根据样式选择" onclick="getByClass()">
		<input type="button" value="根据属性名选择" onclick="getByAttributeName()">
    </div> 
  
  </body>
</html>
