<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
	<script type="text/javascript">
	 //3. 对多选框进行操作, 输出选中的多选框的个数
	 $(function(){
		 
		   //1. 给网页中所有的 <p> 元素添加 onclick 事件
            $("span").click(function(){
                 alert($(this).text());
            });

		   //2. 是一个特定的表格隔行变色
           $("table tr:nth-child(even)").css("background","#bbffaa");  

           $("#btn3").click(function(){
               //利用 jQuery 对象的 length 属性获取多选框选中的个数
               var num = $(":checkbox[name='hobby']:checked").length;
               alert(num);
           });
           $("#btn4").click(function(){
               //利用 jQuery 对象的 text() 方法获取下拉框选中的内容
               $(":checkbox[name='hobby']:checked").each(function(){
                    //alert(this.value);
             	  alert($(this).val());
               });
           });

        /*   $.each( [0,1,2], function(i, n){
        	   alert( "Item #" + i + ": " + n );
        	 });
           $.each( { name: "John", lang: "JS" }, function(i, n){
        	   alert( "Name: " + i + ", Value: " + n );
        	 });
           var obj = jQuery.parseJSON('{"name":"John"}');
           alert( obj.name );
           */
     })
	
	
	
	</script>
  </head>
  
  <body>
        <span id="span">^^span元素 111^^</span><br>
		<span id="span">^^span元素 222^^</span><br>
		<span id="span">^^span元素 333^^</span><br>
		<span id="span">^^span元素 444^^</span><br>
		<span id="span">^^span元素 555^^</span><br>
		<span id="span">^^span元素 666^^</span><br>
		<br><br>
		<table cellspacing="0" border="1" bordercolor="blue" width="50">
		    <tr>
		       <td>11</td>
		       <td>12</td>
		       <td>13</td>
		       <td>14</td>
		    </tr>
		    <tr>
		       <td>21</td>
		       <td>22</td>
		       <td>23</td>
		       <td>24</td>
		    </tr>
		    <tr>
		       <td>31</td>
		       <td>32</td>
		       <td>33</td>
		       <td>34</td>
		    </tr>
		    <tr>
		       <td>41</td>
		       <td>42</td>
		       <td>43</td>
		       <td>44</td>
		    </tr>
		    <tr>
		       <td>51</td>
		       <td>52</td>
		       <td>53</td>
		       <td>54</td>
		    </tr>
		    <tr>
		       <td>51</td>
		       <td>52</td>
		       <td>53</td>
		       <td>54</td>
		    </tr>
		    <tr>
		       <td>51</td>
		       <td>52</td>
		       <td>53</td>
		       <td>54</td>
		    </tr>
		</table>
         <br><br>
         <button id="btn3">获取多选框选中的个数.</button><br>
          <button id="btn4">获取多选框选中的内容.</button><br />      
                       多选框: <br>
			<input type="checkbox" name="hobby" checked="checked" value="阅读" />阅读
			<input type="checkbox" name="hobby" value="历史" />历史
			<input type="checkbox" name="hobby" value="coding" />coding
			<input type="checkbox" name="hobby"  value="手游" />手游
			<input type="checkbox" name="hobby" value="音乐" />音乐
  </body>
</html>
