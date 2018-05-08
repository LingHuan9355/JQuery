<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>My JSP 'checkedAll.jsp' starting page</title>
    <!-- 导入 jQuery 库 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
    <script type="text/javascript">
      $(function(){
           $("#checkedAll_2").click(function(){
   				var flag = this.checked;
                $(":checkbox[name='items']").attr("checked",flag);
           });

           $(":checkbox[name='items']").click(function(){
                $("#checkedAll_2").attr("checked",
                       $(":checkbox[name='items']").length == 
                           $(":checkbox[name='items']:checked").length);
           });
      })
    </script>
  </head>
  <body>
  <div align="center">
    <form method="post" action="">
		你爱好的运动是？<input type="checkbox" id="checkedAll_2" />全选/全不选 
		<br/> 
		<input type="checkbox" name="items" value="足球" />足球 
		<input type="checkbox" name="items" value="篮球" />篮球 
		<input type="checkbox" name="items" value="羽毛球" />羽毛球 
		<input type="checkbox" name="items" value="乒乓球" />乒乓球
	</form>
	</div>
  </body>
</html>
