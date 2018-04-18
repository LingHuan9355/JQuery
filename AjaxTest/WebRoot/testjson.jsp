<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'testload.jsp' starting page</title>
   <style type="text/css">
  	@import url("clearleft.css");
    </style>
    
    
      <script type="text/javascript">
     var jsonObject = {
             "name":"atguigu",
             "age":12,
             "address":{"city":"beijing","school":"cshr"},
             "teaching":function(){
                 alert("javaEE,Android...");
             }     
      };

      //alert(jsonObject.name);
      //alert(jsonObject.address.city);
      //jsonObject.teaching();

      var jsonStr = "{'name':'atguigu'}";

      //把一个字符串转为JSON对象！
      //
      //此方法无法实现  alert(jsonStr.name);
      
      //使用eval()方法
      var testStr = "alert('hello eval')";
      alert(testStr);
      //eval 可以把一个字符串转为本地的js 代码来执行
      eval(testStr);

      //把JSON 字符串转为 JSON 对象
       var testObject = eval("(" + jsonStr + ")");
      // alert(testObject.name);
      
   </script>
  </head>
  
  <body>
      json test eval
  </body>
</html>
