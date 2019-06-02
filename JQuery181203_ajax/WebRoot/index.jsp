<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
	<script type="text/javascript">
	$(function(){
		/*
		$.ajax({
			type:'post',
			url:'test!test1?rand='+Math.random(),
			data:{'emp.name:'明明','emp.id':100},
			error:function(){
				 alert("出错了");	
			},
			success:function(){
				alert(data.name+"--"+data.id);
			},
			comlete:function(){
				alert("成功/出错都会调用");
			}
			//url:'test!test1?name='+encodeURI('明明')+'&&rand='+Math.random();
		});
		*/

		/*
		$.get('test!test1?rand='+Math.random(),
			  {'emp.id':100,'emp.name':'明明'},
			  function(data){
				alert(data.name+"=="+data.id);
		      }
		);*/

		$.post('test!test1?rand='+Math.random(),
				  {'emp.id':100,'emp.name':'明明'},
				  function(data){
					alert(data.name+"=="+data.id);
			      }
		);

		//此种方式服务器返回的数据必须是json格式的数据
		$.getJSON('test!test1?rand='+Math.random(),
				  {'emp.id':100,'emp.name':'明明'},
				  function(data){
					alert(data.name+"=="+data.id);
			      }
		);
	});
	
	</script>
  </head>
  
  <body>
    JQury-ajax <br>
  </body>
</html>
