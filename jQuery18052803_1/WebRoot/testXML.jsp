<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>JQuery加载并解析 XML</title>
   <script type="text/javascript" src="script/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(function(){

          /*  $.get("xml2/files/andy.xml", function(xml){
            	var name = $(xml).find("name").text();
            	    alert(name);
            	    $("#content").each(function(){
                          alert($(this).val());      
                	});
                       
            	}, "xml");
		*/
            $.get("xml2/files/china.xml",function(xmlDoc,textStatus){
            	 //find搜索所有与指定表达式匹配的元素
            	  var $province =$(xmlDoc).find("province");
            	  
            	  $province.each(function(index,domEle) {
            	        var $city=$(this).find("city");
            	        
            	            alert($(domEle).attr("name"));
            	            alert($city.length);
            	            
            	           $.each($city,function(index,domEle1){
            	            $("<ul id='city'></ul>").appendTo("#province");
            	            $("<h3><li>"+ $(domEle1).text() +"</li></h3>").appendTo("#city");
            	                     
            	          });
            	  });
            });
            	            
        })
    
    </script>
  </head>
  
  <body>
    <div id="province">
    </div>
  </body>
</html>
