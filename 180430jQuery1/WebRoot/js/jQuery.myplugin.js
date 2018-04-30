jQuery.testfn=function(str){        //方式一
    alert(str+"：全局函数");
}
jQuery.testplugin={        //方式二
    testfn:function(str){
        alert(str+"：被封装的全局函数");
    }//定义多个函数可以用逗号分隔开来
}
jQuery.fn.myplugin=function(classname){        //方式三
    $(this).hover(
            function(){
                $(this).addClass(classname);
            },
            function(){
                $(this).removeClass(classname);
            }
    );
}

