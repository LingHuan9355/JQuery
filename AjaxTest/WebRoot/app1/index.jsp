<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
<!-- 
  1.导入jQuery库
  2.获取name="username" 的节点：username
  3.为username 添加change 响应函数
  3.1 获取username的value 属性值，去除前后空格且不为空，准备发送Ajax请求
  3.2 发送Ajax 请求检验username 是否可用
  3.3 在客户端浏览器把其直接添加到 #message 的html中.

      <script type="text/javascript" src="../script/jquery-1.7.2.js"></script> 
-->
      <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
      <script type="text/javascript">
        $(function(){
             $(":input[name='username']").change(function(){
                    var val =$(this).val();
                    val = $.trim(val);
                    
                    if(val != ""){
                    	var url ="${pageContext.request.contextPath}/userNameServlet";
                        var args = {"userName":val,"time":new Date()};

                        $.post(url,args,function(data){
                             $("#message").html(data);
                        });
                     }
             });

        });
      
      </script>
  </head>
  
  <body>
      <div align="center">
         <form action="" method="post">
             UserName: <input type="text" name="username"/>
             <div id="message"></div>
             <br/>
             <input type="submit" value="Submit"/>

         </form>
      </div>
  </body>
</html>
