<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
    
    <script type="text/javascript">
    
       window.onload = function(){
           //1.获取a 节点，并为其添加 onclick响应函数
           document.getElementsByTagName("a")[0].onclick =function(){
               //3.创建一个XMLHttpRequest 对象
        	   var request = new XMLHttPRequest();
               //4.准备发送请求的数据：url
               var url = this.href;
               var method = "GET";
               
               //5.调用XMLHttpRequest 对象的open方法
               request.open(method,url);
               
               //6.调用XMLHttpRequest 对象的send方法
               request.send(null);          
               alert("ssss");
        	   //7.为XMLHttpRequest 对象添加onreadystatechange 响应函数
               request.onreadystatechange = function(){
                   //8.判断响应是否完成：XMLHttpRequest 对象的readState 属性为4的时候
            	   if(request.readyState == 4){
                	   //9.再判断响应是否可用：XMLHttpRequest 对象status 属性为200
                       if(request.status == 200 || request.status == 304){
                            //10.打印响应结果：responseText
                             alert(request.responseText);
                            //document.getElementById("msg").innerHTML = request.responseText;
                       }
                    }
                   }
        	   
               //2.取消a节点的默认行为
        	   return false;
               }

           }
    
    </script>
  </head>
  
  <body>
     <a href="test.txt">Hello Ajax</a>
      <div id="msg"></div>
  
  </body>
</html>
