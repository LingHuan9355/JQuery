<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  <title>My JSP 'jQueryOrDom.jsp' starting page</title>
  <!-- 导入 jQuery 库 -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
  <script type="text/javascript">
  
	//$(function(){}) 相当于 window.onload, 代码卸载 {} 之间
	$(function() {
		//1. 选取 button: $("button")
		//2. 为 button 添加 onclick 响应函数: $("button").click(function(){})
		//代码编写在 function 的 {} 中. 
		$("button").click(function(){
			//3. 弹出 helloworld
            alert("Hello World!");
            //获取标签文本内容
            alert($(this).text());

      //jQuery 和 DOM 对象
		//1. 由 jQuery 对象转为 DOM 对象
			//1). 获取一个 jQuery 对象
			var $btn = $("button");

			//2). jQuery 对象是一个数组.
			alert($btn.length);

			//3). 可以通过数组的下标转为 DOM 对象
			//alert($btn[0].firstChild.nodeValue);
			
		//2. 由 DOM 对象转为 jQuery 对象	
			//1). 选取一个 DOM 对象
			var btn = document.getElementById("btn");

			//2). 把 DOM 对象转为一个 jQuery 对象: 使用 $() 进行包装
			//alert("--" + $(btn).text());
		});
	})
</script>
  </head>
  <body>
    <div align="center">
        <button id="btn">ClickMe</button>
		<br><br>
		<button>ClickMe2</button>
    </div>
  </body>
</html>
