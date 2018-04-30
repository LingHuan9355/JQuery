<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'event.jsp' starting page</title>
     <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
   	 <script type="text/javascript">

     	function test1(){
   	   		 alert("button1");
   		}
   	
   		function test2(){
   	   		 $("#b1").click();
   		}
   		
 		 //两种方式进行方法绑定
  	 	function test3(){	 
  	 		//使用bind关键字进行方法绑定
   	    	//$("#b0").bind("click",function(){	
   	        //	 alert("bind1");
   	   		// });
  	   		 
   	       //直接使用事件的方法名进行绑定
			 $("#b0").click(function(){	
			  alert("bind2");
			 });
   		}
   		
   		function test4(){
   	   	 $("#b0").unbind("click");
   		}
   	   	   
   	 </script>
   	 
  </head>
  <body>
      <div align="center">
         	<input id="b0" type="button" value="button0">
			<input id="b1" type="button" value="button1" onclick="test1()">
			<input id="b2" type="button" value="button2" onclick="test2()">
			<input id="b3" type="button" value="button3" onclick="test3()">
			<input id="b4" type="button" value="button4" onclick="test4()">
      </div>
  </body>
</html>
