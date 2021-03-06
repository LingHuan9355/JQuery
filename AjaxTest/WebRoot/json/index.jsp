<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html> 
  <head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <title>People at Clearleft</title>
  <style type="text/css">
  	@import url("clearleft.css");
  </style>
    
    <script type="text/javascript">
      window.onload = function(){
        var aNodes = document.getElementsByTagName("a");
        for(var i=0; i<aNodes.length;i++){
           aNodes[i].onclick = function(){
             
             var request = new XMLHttpRequest();
             var method = "GET";
             var url = this.href;
             
             request.open(method,url);
             request.send(null);
             
             request.onreadystatechange = function(){
                // alert(request.readyState);
                if(request.readyState == 4){
                   if(request.status == 200 || request.status == 304){
                      //1.结果为xml格式，所以需要使用responseXML 来获取
                       var result =request.responseText;
                       var object = eval("(" + result + ")");
                      //2.结果不能直接使用，必须先创建对应的节点，再把节点加入到#details 中
                      /* <h2><a href="mailto:andy@clearleft.com">Andy Budd</a></h2>
						 <a href="http://andybudd.com/">http://andybudd.com/</a>
					   */
                      var name = object.person.name;			   
                      var website = object.person.website;			   
                      var email = object.person.email;			   

                       //alert(name);
                       //alert(website);
                       //alert(email);
                      var aNode = document.createElement("a");
                      aNode.appendChild(document.createTextNode(name));
                      aNode.href = "mailto:" + email;

                      var h2Node = document.createElement("h2");
                      h2Node.appendChild(aNode);
                      
                      var aNode2 = document.createElement("a");
                      aNode2.appendChild(document.createTextNode(website));
                      aNode2.href = website; 

                      var detailsNode = document.getElementById("details");
                      detailsNode.innerHTML ="";
                      detailsNode.appendChild(h2Node);
                      detailsNode.appendChild(aNode2); 
                    }
                }
             }
             
             return false;
           
           }
        
        }
      
      }
      
   </script>

</head>
<body>
		<h1>People</h1>
		<ul>
			<li>
				<a href="files/andy.js">Andy</a>
			</li>
			<li>
				<a href="files/richard.js">Richard</a>
			</li>
			<li>
				<a href="files/jeremy.js">Jeremy</a>
			</li>
		</ul>
		<div id="details"></div>
</body>
</html>