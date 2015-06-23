<?php
/*
Template Name Posts: singleIntroduction
*/
 ?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<title>ONE PAGE PORTFOLIO Bootstarp Website Template| Home :: w3layouts</title>
<link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,700,500,900' rel='stylesheet' type='text/css'>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/move-top.js"></script>
<script type="text/javascript" src="./js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
</head>
<body>
  <!-- header-section-starts -->
    <div class="header">
	       <div class="header-top">
		   <div class="container">
		       <div class="logo">
			      <a href=""><img src="./images/logo.png" class="img-responsive" alt="" /></a>
			   </div>
			   <div class="top-menu">
			   <span class="menu"> </span>
			      <ul>
				      <li><a href="#aboutus" class="scroll">About Me</a></li>
					  <li><a href="#work" class="scroll">Work</a></li>
					  <li><a href="#clients" class="scroll">Clients</a></li>
					  <li><a href="#contact" class="scroll">Let's talk</a></li>
					  <div class="clearfix"></div>
				  </ul>
			   </div>
			   <!-- script-for-menu -->
		<script>
			$("span.menu").click(function(){
				$(".top-menu ul").slideToggle("slow" , function(){
				});
			});
		</script>
		<!-- script-for-menu -->

			   <div class="clearfix"></div>
		   </div>
	   </div>
    
	<div class="index-banner">
	  <div class="container">
       	   <div class="wmuSlider example1">
			   <div class="wmuSliderWrapper">
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	<div class="banner-wrap">
				   	       <div class="bannertop_box">
				   		 		<h1>HELLO,<span>I'M YOUR NAME</span></h1>
								<label>graphic / web / motion designer</label>
								<p>Slider for your work.pictures yours recent projects or something like that.</p>
				   		 	    <p>You can put your own stuff such as other text information, images etc. </p>
							    <p>That's absolutely <span class="bold">free</span> template. Ihope you enjoy it!<span class="bold block">Thank you.</span></p>
							</div>
							
				   		 	<div class="banner_right">
				   		 		<img src="./images/slider-img2.jpg" class="img-responsive" alt="" />
				   		 	</div>
				   		 	<div class="clearfix"></div>
				   	  </div>
					</article>
				   <article style="position: relative; width: 100%; opacity: 1;"> 
				   	   <div class="banner-wrap">
				   	      <div class="bannertop_box">
                               <h1>HAI,<span>I LOREM IPSUM</span></h1>
								<label>design / chrome / developer</label>
								<p>when unknown printer took galley of type Ipsum is not simply random text.</p>
				   		 	    <p>There are many variations passages of Lorem available, images etc. </p>
							    <p>The standard since <span class="bold">1500s</span> template. Ihope you enjoy it!<span class="bold block">Lorem Ipsum.</span></p>
				   		 	</div>
							
				   		 	<div class="banner_right">
				   		 		<img src="./images/slider-img1.jpg" class="img-responsive" alt="" />
				   		 	</div>
				   		 	<div class="clearfix"></div>
				   		</div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	  <div class="banner-wrap">
				   	       <div class="bannertop_box">
			                  <h1>DONE,<span>THE TEMPLATE</span></h1>
								<label>web / ./ mobile</label>
								<p>Sed ut perspiciatis un omnis natus error voluptatem nulla pariatur.</p>
				   		 	    <p>But I must explain to you how all mistaken idea of denouncing pleasure. </p>
							    <p>The Lorem <span class="bold">therefore</span> template. Ihope you enjoy it!<span class="bold block">welcome</span></p>
				   		 	</div>
							
				   		 	<div class="banner_right">
				   		 		<img src="./images/slider-img.jpg" class="img-responsive" alt="" />
				   		 	</div>
				   		 	<div class="clearfix"></div>
				   		 </div>
					 </article>
				 </div>
				<a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
                <ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="wmuActive">2</a></li>
                </ul>
            </div>
            <script src="./js/jquery.wmuSlider.js"></script> 
			  <script>
       			$('.example1').wmuSlider();         
   		     </script> 	           	      
      </div>
	  </div>
	  </div>
  <!-- header-section-ends -->
  <!-- content-starts -->
  <div class="content">
  <!-- about-section-starts -->
    <div class="about-section" id="aboutus">
	    <div class="about-section-head text-center">
		   <div class="container">
		      <h3>ABOUT ME</h3>
			  <p>Well, you can write something about yourself. For example, full name,  age, your geolocation and etc. And specific of your work. Maybe your work focused on UI / Web / Graphic or Motion design. I don't know :)</p>
		   </div>
		</div>
		<div class="about-section-grids">
		    <div class="about-section-top-grid">
			   <div class="container">
			       <div class="col-md-3 about-section-top-left-grid">
				      <h4>Software</h4>
				   </div>
				   <div class="col-md-9 about-section-top-right-grid">
				      <p>Ps | Ai | Id | Ae | Mu | Cinema4d | 3dsMax + Vray</p>
				   </div>
				   <div class="clearfix"></div>
			   </div>
			</div>
			<div class="about-section-middle-grid">
			   <div class="container">
			       <div class="col-md-3 about-section-middle-left-grid">
				      <h4>Skills</h4>
				   </div>
				   <div class="col-md-9 about-section-middle-right-grid">
				      <p>Conceptual thinking | Web | Illustration | Identity | Team work</p>
				   </div>
				   <div class="clearfix"></div>
			   </div>
			</div>
			<div class="about-section-bottom-grid">
			   <div class="container">
			       <div class="col-md-3 about-section-bottom-left-grid">
				      <h4>Hobby</h4>
				   </div>
				   <div class="col-md-9 about-section-bottom-right-grid">
				      <p>Music | Movies | Sport | Art | Photography</p>
				   </div>
				   <div class="clearfix"></div>
			   </div>
			</div>
		</div>
	</div>
	<!-- about-section-ends -->
	<!-- work-section-starts -->
	<div class="work-section" id="work">
	    <div class="container">
		  <div class="work-section-head text-center">
		     <h3>WORK</h3>
		  </div>
		  <div id="portfoliolist">
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						 <div class="portfolio-wrapper">	
							<a class="lightbox" href="#goofy">
								   <img src="./images/pic1.jpg" class="img-responsive" alt="" />
						  	
								</a> 
								<div class="lightbox-target" id="goofy">
								<img src="./images/pic1.jpg" class="img-responsive" alt="" />
								   <a class="lightbox-close" href="#"></a>
								</div>
						 </div>

					</div>				
					<div class="portfolio app mix_all" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="./images/pic2.jpg" class="img-responsive" alt="" />
						  
								</a> 
					    </div>
					</div>		
					<div class="portfolio web mix_all" data-cat="web" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="./images/pic3.jpg" class="img-responsive" alt="" />
	
								</a>

					</div>	
</div>					
					<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="./images/pic4.jpg" class="img-responsive" alt="" /><div class="b-wrapper">
						  	</div>
								</a> 
					    </div>

					</div>
					<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="./images/pic5.jpg" class="img-responsive" alt="" />
	
								</a>  
					    </div>

					</div>
					<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="./images/pic6.jpg" class="img-responsive" alt=""/>
								</a> 
					    </div>
					</div>			
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="./images/pic7.jpg" class="img-responsive" alt=""/>
								</a> 
					    </div>
					</div>	
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="./images/pic8.jpg" class="img-responsive" alt=""/>
								</a> 
					    </div>
					</div>	
					<div class="portfolio icon mix_all" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="./images/pic9.jpg" class="img-responsive" alt=""/>
								</a> 
					    </div>
						</div>
<div class="clearfix"></div>					
				</div>
		  <div class="clearfix"></div>
		  <span class="more">MORE ON <a href="#">BEHANCE</a></span>

		  </div>
		  </div>
		  <!-- script-for-portfolio -->
		  <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
	<!-- work-section-ends -->
	<!-- clients-section-starts -->
	   <div class="clients-section" id="clients">
	      <div class="container">
		    <div class="clients-section-head text-center">
			   <h3>CLIENTS</h3>
			</div>
			<div class="clients-section-grids text-center">
			   <div class="col-md-4 client-section-grid">
			    <img src="./images/client1.png" alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src="./images/client2.png" alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src="./images/client3.png" alt="" />
			 </div>
			 <div class="clearfix"></div>
			 <div class="col-md-4 client-section-grid">
			    <img src="./images/client2.png" alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src="./images/client3.png" alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src="./images/client1.png" alt="" />
			 </div>
			 <div class="clearfix"></div>
			 <div class="col-md-4 client-section-grid">
			    <img src="./images/client3.png" alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src="./images/client1.png" alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src="./images/client2.png" alt="" />
			 </div>
			 <div class="clearfix"></div>
			</div>
		  </div>
	   </div>
	<!-- clients-section-ends -->
	</div>
	<!-- contact-section-starts -->
	<div class="contact-section" id="contact">
	<div class="container">
	    <div class="contact-section-head text-center">
		   <h3>LET'S TALK</h3>
		</div>
		<div class="comments-area">
		    <form>
			   <p> 
			   <label>YOUR NAME</label>
			   <input type="text" value="" >
			   </p>
			   <p> 
			   <label>YOUR EMAIL</label>
			   <input type="text" value="" >
			   </p>
			   <p> 
			   <label>YOUR MESSAGE</label>
			   <textarea></textarea>
			   </p>
			   <div class="submit">
			     <input type="submit" value="submit">
			   </div>
			</form>
		</div>
		<div class="social-icons">
		  <a href="#"><i class="behance-icon"></i></a>
		  <a href="#"><i class="dribble-icon"></i></a>
		  <a href="#"><i class="linkein-icon"></i></a>
		  <a href="#"><i class="vimeo-icon"></i></a>
		  <a href="#"><i class="twitter-icon"></i></a>
		  <a href="#"><i class="facebook-icon"></i></a>
		  <a href="#"><i class="skype-icon"></i></a>
		</div>
	</div>
	</div>
	<!-- contact-section-ends -->
  <!-- content-ends -->
     <!-- footer-->
	<div class="footer">
		<div class="container">
			<div class="copyright">
				<p>&copy; 2014 Template by <a href="http://w3layouts.com" target="target_blank">W3layouts</a></p>
			</div>
		</div>
	</div>
    <!-- footer-->
   <script type="text/javascript">
						$(document).ready(function() {
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
                
                
                
                
        
<style>
</style>
<div class="clear"></div>
</header> <!-- / END HOME SECTION  -->
<div id="content" class="site-content">
<div class="container">
<div class="content-left-wrap col-md-9">
    <p1><font style="color:black;font-weight:bold;font-size:30px">个人信息</font></p1>
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
        <div width='345px' height='345px'>
            <img width='345px' height='345px' src="http://7xjrp9.com1.z0.glb.clouddn.com/googleCut.png"/>
        </div>
        <div width='345px' height='345px'>
            <text>张迎曦，性别男，爱好女，北京理工大学计算机学院准硕士，据结构、算法设计、Web Design、CUDA图像编程，曾在航天二院、小米科技、IBM等知名企业实习，从事云平台系统的实现</text>
            
        </div>
		</main><!-- #main -->
	</div><!-- #primary -->
</div>
<div class="sidebar-wrap col-md-3 content-left-wrap">
	<?php get_sidebar(); ?>
</div><!-- .sidebar-wrap -->
</div>
<?php get_footer(); ?>