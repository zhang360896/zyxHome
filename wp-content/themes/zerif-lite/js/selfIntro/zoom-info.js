
$(document).ready(function()
{
    $('.info').hide();
	$('.lightbox').hover(
		function()
		{
		
		$(this).find('img').animate({width:"50%",height:"50%", marginLeft:"35%",top:"0",right:"25%"}, 500, 
                                function()
                                { 
                                    $(this).parent().find("div").show();
                                    
                                });
		 },
		 function()
		 {
			 
			 $(this).find('img').animate({width:"100%",height:"100%", marginBottom:0, marginTop:0, marginLeft:0,right:"0"},300,
                                        function()
                                        { 
                                            $(this).parent().find("div").hide();
                                        });
			 
		 });
});

                       
                   