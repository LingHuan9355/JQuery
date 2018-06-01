<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <%--
    什么是闭包？这就是闭包！
   有权访问另一个函数作用域内变量的函数都是闭包。
   这里 inc 函数访问了构造函数 a 里面的变量 n，所以形成了一个闭包。
    --%>
    
   <title>My JSP 'index.jsp' starting page</title>
   <script type="text/javascript"><%--
   
   function a(){
	   var n = 0;
	   function inc() {
	     n++;
	     console.log(n);
	   }
	   inc(); 
	   inc(); 
	 }
	 //控制台输出1，再输出2
	 a(); 
	     
   
   
   function a(){
	   var n = 0;
	   this.inc = function () {
	     n++; 
	     console.log(n);
	   };
	 }
	 var c = new a();
	 c.inc();  //控制台输出1
	 c.inc();  //控制台输出2
	    
   
		   function a(){
		     var n = 0;
		     function inc(){
		       n++; 
		       console.log(n);
		     }
		     return inc;
		   }
		   var c = a();
		   c();  //控制台输出1
		   c();  //控制台输出2
		    
   --%>
   function createFunctions(){
	   var result = new Array();
	   for (var i=0; i < 10; i++){
	     result[i] = function(){
	       return i;
	     };
	   }
	   return result;
	 }
	 var funcs = createFunctions();
	 for (var i=0; i < funcs.length; i++){
	   console.log(funcs[i]());
	 }
	    
   
   
   </script>
  </head>
  
  <body>
     <h1>闭包测试中......
     总结一下
    闭包就是一个函数引用另外一个函数的变量，因为变量被引用着所以不会被回收，因此可以用来封装一个私有变量。
    这是优点也是缺点，不必要的闭包只会徒增内存消耗！
    另外使用闭包也要注意变量的值是否符合你的要求，
    因为他就像一个静态私有变量一样。闭包通常会跟很多东西混搭起来，接触多了才能加深理解，这里只是开个头说说基础性的东西。
     </h1>
  </body>
</html>
