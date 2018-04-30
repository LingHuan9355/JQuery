<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'selector.jsp' starting page</title>
     <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
   	 <script type="text/javascript">
     	function index(){
	   	    alert($("div")[1].innerHTML);	
	   	    alert($("div").get(2).innerHTML);
	   	    alert($($("div")[3]).html()); 	
	   	    alert($("div").eq(0).html());
    	}
   	        
        function filter1(){
           alert($("div").filter(".mystyle").html());
        }

        function filter2(){
            alert($("input").filter("[value='筛选1']").val());
            alert($("input[value='筛选2']").val());
            }
     
     </script>
  </head>
  
  <body>
     <div align="center">
        	<div id="d1">这是一个层，编号d1</div>
			<div id="d2" class="mystyle">这是一个层，编号d2</div>
			<div id="d3">这是一个层，编号d3</div>
			
			<input type="button" value="索引" onclick="index()">
			<input type="button" value="筛选1" onclick="filter1()">
			<input type="button" value="筛选2" onclick="filter2()">
         
     </div>
  </body>
</html>
