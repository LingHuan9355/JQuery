<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 <title>My JSP 'formattributeselector_.jsp' starting page</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
<script type="text/javascript">
     $(function(){
         
          $("#btn1").click(function(){
        	//使所有的可用的单行文本框的 value 值变为 尚硅谷
          	$(":text:enabled").val("尚硅谷");
          });
          $("#btn2").click(function(){
              //利用 jQuery 对象的 val() 方法改变表单内不可用 <input> 元素的值
          	$(":text:disabled").val("www.atguigu.com");
          });
          $("#btn3").click(function(){
              //利用 jQuery 对象的 length 属性获取多选框选中的个数
              var num = $(":checkbox[name='newsletter']:checked").length;
              alert(num);
          });
          $("#btn4").click(function(){
              //利用 jQuery 对象的 text() 方法获取下拉框选中的内容
              $(":checkbox[name='newsletter']:checked").each(function(){
                   //alert(this.value);
            	  alert($(this).val());
              });
          });
        /*  $("#btn5").click(function(){
        	//实际被选择的不是 select, 而是 select 的 option 子节点
				//所以要加一个 空格. 
				var len = $("select :selected").length;
				alert(len);
				
				//因为 $("select :selected") 选择的是一个数组
				//当该数组中有多个元素时, 通过 .val() 方法就只能获取第一个被选择的值了. 
				//alert($("select :selected").val());
				
				//jQuery 对象遍历的方式使 each, 在 each 内部的 this 是正在
				//得到的 DOM 对象, 而不是一个 jQuery 对象
				$("select :selected").each(function(){
                      //alert(this.value);
					alert($(this).val());
			    });
          });
*/

         //根据下拉框根据 name属性选中，取值方法
		  //var $item1 = $("select[name='test2'] option:eq(2)").attr("selected",true);
          var $item2 = $("select[name='test2']").find('option:eq(3)').attr('selected','selected');
         // var $province = $("select[name='test2'] option:eq(5)").val();
         //取值
         // var value1 = $item1.val();
          var $value2 = $item2.val();
          alert(value2);
         
         
         //根据id选中，取值 方法
          //var $select1 = $('#test2 option:eq(4)').attr('selected','selected');
         // var $select2 = $('#test2').find('option:eq(3)').attr('selected', true);
         // var $select3 =  $('#test2 option:eq(1)').val();
           //alert($select3);
     })

</script>
  </head>
  <body>
    <h3>表单对象属性过滤选择器</h3>
		 <button id="btn1">对表单内 可用input 赋值操作.</button>
  		 <button id="btn2">对表单内 不可用input 赋值操作.</button><br /><br />
		 <button id="btn3">获取多选框选中的个数.</button>
		 <button id="btn4">获取多选框选中的内容.</button><br /><br />
         <button id="btn5">获取下拉框选中的内容.</button><br /><br />
		 
		<form id="form1" action="#">			
			可用元素: <input name="add" value="可用文本框1"/><br>
			不可用元素: <input name="email" disabled="true" value="不可用文本框"/><br>
			可用元素: <input name="che" value="可用文本框2"/><br>
			不可用元素: <input name="name" disabled="true" value="不可用文本框"/><br>
			<br>
			
			多选框: <br>
			<input type="checkbox" name="newsletter" checked="checked" value="test1" />test1
			<input type="checkbox" name="newsletter" value="test2" />test2
			<input type="checkbox" name="newsletter" value="test3" />test3
			<input type="checkbox" name="newsletter" checked="checked" value="test4" />test4
			<input type="checkbox" name="newsletter" value="test5" />test5
			
			<br><br>
			下拉列表1: <br>
			<select name="test" multiple="multiple" style="height: 100px">
				<option>浙江</option>
				<option selected="selected">辽宁</option>
				<option>北京</option>
				<option selected="selected">天津</option>
				<option>广州</option>
				<option>湖北</option>
			</select>
			
			<br><br>
			下拉列表2: <br>
			<select name="test2">
				<option>浙江</option>
				<option>辽宁</option>
				<option>北京</option>
				<option>天津</option>
				<option>广州</option>
				<option>湖北</option>
			</select>
			
			<textarea rows="" cols=""></textarea>
		</form>		
  </body>
</html>
