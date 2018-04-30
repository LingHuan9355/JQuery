<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>plugin.jsp</title>
        <style type="text/css">
        .mystyle{
            cursor:pointer;
            background-color:red;
        }
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.myplugin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugintest.js"></script>
  </head>
  
  <body>
         <div align="center">
           <input id="bt" type="button" value="click">
         </div>
  </body>
</html>
