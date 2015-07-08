
$(document).ready(function()
{
    $('.info').hide();
	$('.lightbox').hover(
		function()
		{
		
		$(this).find('img').animate({width:"30%",height:"100%", marginLeft:"35%"}, 500, 
                                function()
                                { 
                                    $(this).parent().find("div").show();
                                    
                                });
		 },
		 function()
		 {
			 
			 $(this).find('img').animate({width:"100%", marginBottom:0, marginTop:0, marginLeft:0},300,
                                        function()
                                        { 
                                            $(this).parent().find("div").hide();
                                        });
			 
		 });
});

                       
                   