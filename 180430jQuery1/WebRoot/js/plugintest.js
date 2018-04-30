$(document).ready(function(){
   // $("#bt").click(test1);
   // $("#bt").click(test2);
   $("#bt").bind("click",test3);
});

function test1(){
    $.testfn("jack");
}

function test2(){
    $.testplugin.testfn("mike");
}

function test3(){
    $("#bt").myplugin("mystyle");
}
