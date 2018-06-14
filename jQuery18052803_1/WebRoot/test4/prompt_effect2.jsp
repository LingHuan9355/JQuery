<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>鼠标悬浮图片放大特效</title>
 	<style type="text/css">
        #gallery{
            width: 1800px;
            margin: 80px auto;
            background: #383131;
        }
        #gallery > ul {
  		 	list-style-type: none;
		}
        
        #gallery > ul > li{
            width: 250px;
            height: 180px;
            float: left;
            margin: 0 10px;
            /*父元素相对定位*/
            position: relative;
        }
        #gallery > ul > li > a > img{
            width: 250px;
            height: 180px;
            z-index: 1;
            /*子元素绝对定位*/
            position: absolute;
        }
        #gallery > ul > li > a >img:hover{
            /*堆叠层级高于之前*/
            z-index: 2;
        }
        h1{
            clear:both;
        }
    </style>
    <script type="text/javascript" src="../script/jquery-1.7.2.js"></script>
	<script type="text/javascript">
	    /*注意 坑
	        2018-6-11
	        1.不宜使用 mouseover()和mouseout()方法
	        2.stop()方法阻止了动画叠加行为
	        3.z-index千万别写在动画里面，堆叠顺序一定要写正确
	        4.margin值的计算方法为(430-380)/2和(280-230)/2
	        5.要正确使用position定位
	    */
	    $(function(){
	        $("#gallery > ul > li > a > img").mouseenter(function(){
	            $(this).stop().animate({"width":"430px","height":"280px","margin":"-10px"},200);
	        }).mouseleave(function(){
	            $(this).stop().animate({"width":"250px","height":"180px","margin":"0"});
	        });
	    });
	</script>
  </head>
  
  <body>
    <div align="center">
      <h1><a href="#" title="这是我的超链接提示1">提示1</a></h1>
      <h1><a href="#" title="这是我的超链接提示2">提示2</a></h1>
      <h1><a href="#" title="自带提示1">自带提示1</a></h1>
      <h1><a href="#" title="自带提示2">自带提示2</a></h1>
    
    </div>
<!--实现鼠标悬浮图片放大特效-->
<div id="gallery">
<ul>
   <li><a href="images/001.jpg" class="tooltip" title="办公场景一"><img src="images/001.jpg"/></a></li>
   <li><a href="images/002.jpg" class="tooltip" title="办公场景二"><img src="images/002.jpg"/></a></li>
   <li><a href="images/003.jpg" class="tooltip" title="办公场景三"><img src="images/003.jpg"/></a></li>
   <li><a href="images/004.jpg" class="tooltip" title="办公场景四"><img src="images/004.jpg"/></a></li>
   <li><a href="images/005.jpg" class="tooltip" title="办公场景四"><img src="images/005.jpg"/></a></li>
</ul>       
</div>



  </body>
</html>
