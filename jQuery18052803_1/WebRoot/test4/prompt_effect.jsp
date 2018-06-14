<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>鼠标悬停图片放大提示效果</title>
 	<style type="text/css">
/*图库样式*/
#gallery {
    width:700px;
    height: 270px;
    margin: 0 auto;
    padding: 10px;
    background: #383131;
}

ul {
    list-style-type: none;
    position: absolute;
    width: 600px;
}

#gallery ul li {
    float: left;
    margin: 10px;
    background: white;
    height: 100px;
    width: 100px;
}

#gallery ul li:hover {
    border: 3px solid white;
    margin: 7px;
    cursor: pointer;
}

#gallery ul li img{
    height: 100px;
    width: 100px;
}
/* 工具提示的样式 */
#tooltip{
    position:absolute;
    border:1px solid #ccc;
    background:#333;
    padding:2px;
    display:none;
    color:#fff;
}
</style>
<script type="text/javascript" src="../script/jquery-1.7.2.js"></script>
<script type="text/javascript">

 $(function(){
    var x = 20;
    var y = 30;
    $("a.tooltip").mouseover(function(e){
    	//得到当前链接的title，即标题
    	this.myTitle = this.title;       
   	 	this.title = "";
    	var imgTitle = this.myTitle? "<br/>" + this.myTitle : "";
    	
        //新建一个id为tooltip的div元素
   		var tooltip = "<div id='tooltip'> " + "<img src='"+ this.href +"' alt='放大提示'/>"+ imgTitle+"</div>";

    	//元素内部包含一个img，用来显示图片并且显示标题，追加到body区
         $("body").append(tooltip);      

         //更改tooptip的顶部和左侧位置
         //使用show函数快速显示         
         $("#tooltip").css({"top": (e.pageY+y) + "px","left":  (e.pageX+x)  + "px"}).show("fast"); 
         
        }).mouseout(function(){
            this.title = this.myTitle;
            //当鼠标移出时，从body区删除该div元素
            $("#tooltip").remove();     
                  
        }).mousemove(function(e){ 
        	//当鼠标移动时，调整div的位置位于鼠标箭头的下方        
            $("#tooltip").css({"top": (e.pageY+y) + "px","left":  (e.pageX+x)  + "px"});
        });
    })
     
     </script>
  </head>
  
  <body>
    <div align="center">
      <h1><a href="#" title="这是我的超链接提示1">提示1</a></h1>
      <h1><a href="#" title="这是我的超链接提示2">提示2</a></h1>
      <h1><a href="#" title="自带提示1">自带提示1</a></h1>
      <h1><a href="#" title="自带提示2">自带提示2</a></h1>
    
    </div>
    <!--实现简单的相册效果-->
<div id="gallery">
<ul>
    <!--相册所需要的图片集-->
    <li><a href="images/001.jpg" class="tooltip" title="喜鹊看花"><img src="images/001.jpg"/></a></li>
    <li><a href="images/002.jpg" class="tooltip" title="繁花朵朵"><img src="images/002.jpg"/></a></li>
    <li><a href="images/003.jpg" class="tooltip" title="繁花朵朵"><img src="images/003.jpg"/></a></li>
    <li><a href="images/004.jpg" class="tooltip" title="姹紫嫣红"><img src="images/004.jpg"/></a></li>
    <li><a href="images/005.jpg" class="tooltip" title="含苞怒放"><img src="images/005.jpg"/></a></li>
</ul>       
</div>
  </body>
</html>
