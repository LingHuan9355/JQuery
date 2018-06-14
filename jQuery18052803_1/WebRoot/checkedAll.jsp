<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'checkedAll.jsp' starting page</title>
	<!-- 导入 jQuery 库 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
    <script type="text/javascript">
 /*
   JQuery实现全选、全不选、反选功能
   1、当点击'全选'按钮时，页面中所有的复选框都应该为选中状态，
          1.1、当再次点击'全选'按钮时，所有的复选框应该是非选中状态。
          1.2、当点击子复选框时，'全选'按钮应该是非选中状态。
   2、当选中当前页面的所有子复选框时，'全选'按钮应该是'选中'状态。
   3、点点击'全不选'按钮时，当前页面的所有复选框置为非选中状态。
   4、当点击'反选'按钮时，当前页面选中状态的复选框置为未选中状态，未选中状态的复选框置为选中状态。
   */
    
	$(function(){
          $("#checkedAll_2").click(function(){
			 var flag = this.checked;
			 $(":checkbox[name='items']").attr("checked",flag);	
          });

          $(":checkbox[name='items']").click(function(){
              $("#checkedAll_2").attr("checked",$(":checkbox[name='items']").length 
                                == $(":checkbox[name='items']:checked").length);
          });

          //全选
          $("#checkboxAll_yes").click(function(){
                 $(":checkbox[name='items']").attr("checked",true);	
                 $("#checkedAll_2").attr("checked",$(":checkbox[name='items']").length 
                         == $(":checkbox[name='items']:checked").length);
				
          });
          //全不选
          $("#checkboxAll_no").click(function(){
        	    $(":checkbox[name='items']").removeAttr("checked"); 
                // $(":checkbox[name='items']").attr("checked",false);
                 $("#checkedAll_2").attr("checked",$(":checkbox[name='items']").length 
                         == $(":checkbox[name='items']:checked").length);	
				
          });
          //反选：方法一
         /* $("#checkboxAll_reverse").click(function(){
        	  $(":checkbox[name='items']").each(function(){  
                  $(this).attr("checked", !$(this).attr("checked")); 
                  $("#checkedAll_2").attr("checked",$(":checkbox[name='items']").length 
                          == $(":checkbox[name='items']:checked").length); 
              });  
                	
          });*/
          //反选：方法二
          $("#checkboxAll_reverse").click(function(){
				$("input[name='items']").each(function() {
					if ($(this).attr("checked")) {
						$(this).removeAttr("checked");
					} else {
						$(this).attr("checked", "true");
							
					}
				$("#checkedAll_2").attr("checked",$(":checkbox[name='items']").length 
		                          == $(":checkbox[name='items']:checked").length);
				});
          });
          //提交获取选中
		$("#getAllSelectedId").click(function() {
			$(":checkbox[name='items']:checked").each(function() {
				alert(this.value);
			});
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
		<br/>
		<input type="button" value="全选" id="checkboxAll_yes" />
		<input type="button" value="全不选" id="checkboxAll_no" />
		<input type="button" value="反选" id="checkboxAll_reverse" />
		<input type="button" value="提交" id="getAllSelectedId" />
	</form>
	</div>
  </body>
</html>
