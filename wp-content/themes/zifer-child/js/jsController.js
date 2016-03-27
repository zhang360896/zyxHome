/***关闭/显示侧边栏***/ 
jQuery(document).ready(function($){ 
    //选中“id=close-sidebar”内a标签的内容，即“关闭侧边栏” 
     $('#close-sidebar a').toggle(function(){ 
    //点中后文本显示成“显示侧边栏”。 
     $(this).text("显示侧边栏"); 
    //隐藏“id=sidebar”的内容，即侧边栏，你主题的侧边栏的id或class是什么就改成什么；如果还需隐藏其它部分，可在其后加逗号后继续添加标签，如把滚动条隐藏。 
     $('#sidebar, #roll').hide(); 
    //让“class=main”的宽度伸至990px，时间为1000毫秒；如果还需加宽其它部分，可在其后加逗号后继续添加标签，如文章内容主体同样加宽。 
     $('.main').animate({width: "990px"}, 1000); 
     },function(){ 
    //点中后文本显示成“关闭侧边栏”。 
     $(this).text("关闭侧边栏"); 
    //显示“id=sidebar”的内容，即侧边栏，其余注意事项同上。 
     $('#sidebar, #roll').show(); 
    //让“class=main”的宽度缩至700px，时间为1000毫秒，其余注意事项同上。 
     $('.main').animate({width: "700px"}, 1000); 
     }); 
}); 