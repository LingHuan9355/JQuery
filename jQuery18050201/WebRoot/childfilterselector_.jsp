<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'childfilterselector_.jsp' starting page</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<style type="text/css">
			div, span, p {
			    width: 140px;
			    height: 140px;
			    margin: 5px;
			    background: #aaa;
			    border: #000 1px solid;
			    float: left;
			    font-size: 17px;
			    font-family: Verdana;
			}
			
			div.mini {
			    width: 55px;
			    height: 55px;
			    background-color: #aaa;
			    font-size: 12px;
			}
			
			div.hide {
			    display: none;
			}			
		</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
          function anmateIt(){
                $("#mover").slideToggle("slow",anmateIt);
          }
           anmateIt(); 

           $("#btn1").click(function(){
        	 //选取子元素, 需要在选择器前添加一个空格.
                 $("div.one :nth-child(2)").css("background","#bbffaa");  
           });  
           $("#btn2").click(function(){
                 $("div.one :first-child").css("background","#bbffaa");  
           });  
           $("#btn3").click(function(){
                 $("div.one :last-child").css("background","#bbffaa");  
           });  
           $("#btn4").click(function(){
                 $("div.one :only-child").css("background","#bbffaa");  
           });  
   })
</script>
  </head>
  
  <body>
    <input type="button" value="选取每个class为one的div父元素下的第2个子元素." id="btn1"/>
	<input type="button" value="选取每个class为one的div父元素下的第一个子元素." id="btn2"/>
	<input type="button" value="选取每个class为one的div父元素下的最后一个子元素." id="btn3"/>
	<input type="button" value="如果class为one的div父元素下的仅仅只有一个子元素，那么选中这个子元素." id="btn4"/>
		
		<br><br>
		<div class="one" id="one">
			id 为 one,class 为 one 的div
			<div class="mini">class为mini</div>
		</div>
		<div class="one" id="two" title="test">
			id为two,class为one,title为test的div
			<div class="mini" title="other">class为mini,title为other</div>
			<div class="mini" title="test">class为mini,title为test</div>
		</div>
		<div class="one">
			<div class="mini">class为mini</div>
			<div class="mini">class为mini</div>
			<div class="mini">class为mini</div>
			<div class="mini"></div>
		</div>
		<div class="one">
			<div class="mini">class为mini</div>
			<div class="mini">class为mini</div>
			<div class="mini">class为mini</div>
			<div class="mini" title="tesst">class为mini,title为tesst</div>
		</div>
		<div style="display:none;" class="none">style的display为"none"的div</div>
		<div class="hide">class为"hide"的div</div>
		<div>
			包含input的type为"hidden"的div<input type="hidden" value="123456789" size="8">
		</div>
		<div id="mover">正在执行动画的div元素.</div>
  </body>
</html>
