<?php
/*
Template Name Posts: singleIntroduction
*/
get_header();
 ?>
 
 <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <link href='http://fonts.useso.com/css?family=Maven+Pro:400,700,500,900' rel='stylesheet' type='text/css'>

 <script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
<script type="text/javascript">
						jQuery(document).ready(function($) {
                            
							$().UItoTop({ easingType: 'easeOutQuart' });
                            //alert('serialize' + $("#talkingForm").serialize());
                            $('#talkingForm').submit(function() {
                                alert('消息发送中');
                                $.ajax({
                                    url:"<?echo home_url().'/service/emailSending.php'?>",
                                    data: $("#talkingForm").serialize(),
                                    type:'post',
                                    dataType:'text',
                                    success: function(data){
                                        alert(data);
                                    }
                                    
                                })
                                return false;
                            });
                                
                            
						});
	</script>
  <!-- header-section-starts -->
    <div class="header">
	       <div class="header-top">
		   <div class="container">
		       <div class="logo">
			      <a href=""><img src=<?php echo get_template_directory_uri()."/images/selfIntro/logo.png";?> class="img-responsive" alt="" /></a>
			   </div>
			   <div class="top-menu">
			   <span class="menu"> </span>
			      <ul>
				      <li><a href="#aboutus" class="scroll">关于自己</a></li>
					  <li><a href="#work" class="scroll">工作经历</a></li>
					  <li><a href="#clients" class="scroll">Clients</a></li>
					  <li><a href="#contact" class="scroll">Let's talk</a></li>
					  <div class="clearfix"></div>
				  </ul>
			   </div>
			   <!-- script-for-menu -->
		<script>
			jQuery("span.menu").click(function(){
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
				   		 		<h1 style="font-size:50px;font-family:黑体,宋体">张迎曦</h1>
                                <h2 style="color:white"></h2>
								<label>北京理工大学/ 硕士/ 计算机科学与技术.</label>
								<p>对计算机<span class="bold" style="font-weight:bold">算法</span>及<span class="bold">web技术</span>充满热爱.</p>
				   		 	    <p>了解计算机网络前端和后台协议栈. </p>
							    <p>曾在多家著名企业实习，对云平台相关领域有极高兴趣. </p><p><span class="bold block">&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;希望您能看到我的努力！</span></p>
                                <p><span class="bold block">&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;再次感谢您的关注!</span></p>
							</div>
							
				   		 	<div class="banner_right">
				   		 		<img src=<?php echo get_template_directory_uri()."/images/selfIntro/slider-img2.jpg"; ?> class="img-responsive" alt="" />
				   		 	</div>
				   		 	<div class="clearfix"></div>
				   	  </div>
					</article>
				   <article style="position: relative; width: 100%; opacity: 1;"> 
				   	   <div class="banner-wrap">
				   	      <div class="bannertop_box">
                               <h1>HELLO!</h1>
                               <h1><span>Harry Chang</span></h1>
								<label>BIT/ Master/ Computer Science</label>
								<p>I am full of passion in <span class="bold">algorithm &amp; web</span>.</p>
				   		 	    <p>I know about the front-end development and protocol stack. </p>
							    <p>I ever practiced as an intern in many famous enterprises which inspire my interests of cloud platform.<span class="bold block">Thanks for your attention!</span></p>
				   		 	</div>
							
				   		 	<div class="banner_right">
				   		 		<img src=<?php echo get_template_directory_uri()."/images/selfIntro/slider-img1.jpg"; ?> class="img-responsive" alt="" />
				   		 	</div>
				   		 	<div class="clearfix"></div>
				   		</div>
				   </article>
				 </div>
				<a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
                <ul class="wmuSliderPagination">
                
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="wmuActive">2</a></li>
                </ul>
            </div>
			  <script>
       			jQuery('.example1').wmuSlider();         
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
		      <h3>关于自己</h3>
			  <p>张迎曦，男，24岁， 现于北京理工大学攻读计算机硕士学位，希望从事C++/openCV图像处理相关职位或者网页前端或者后台研发.</p>
              <h3>About me</h3>
              <p>Hi, I'm Harry Chang, male, 24 years old.
                I am studying for my CS master degree at Beijing Institute of technology.  I wanna find a job related to the imaging processing by using C++/OpenCV. I can also be competent for the web design and networking.</p>
		   </div>
		</div>
		<div class="about-section-grids">
		    <div class="about-section-top-grid">
			   <div class="container">
			       <div class="col-md-3 about-section-top-left-grid">
				      <h4>软件</h4>
                      <h4>(Software)</h4>
				   </div>
				   <div class="col-md-9 about-section-top-right-grid">
				      <p>Git | SVN | Maven | Eclipse | VS | Matlab </p>
				   </div>
				   <div class="clearfix"></div>
			   </div>
			</div>
			<div class="about-section-middle-grid">
			   <div class="container">
			       <div class="col-md-3 about-section-middle-left-grid">
				      <h4>技能</h4>
                      <h4>(Skills)</h4>
				   </div>
				   <div class="col-md-9 about-section-middle-right-grid">
				      <p>Data Structure | Algorithm | C++ | OpenCV | CUDA | Java |</p>
                      <p>MySQL | JavaScript | Html/CSS | Node.jsBackbone.js | PHP</p>
				   </div>
				   <div class="clearfix"></div>
			   </div>
			</div>
			<div class="about-section-bottom-grid">
			   <div class="container">
			       <div class="col-md-3 about-section-bottom-left-grid">
				      <h4>爱好</h4>
                      <h4>(Hobby)</h4>
				   </div>
				   <div class="col-md-9 about-section-bottom-right-grid">
				      <p> Thinking | Cloud Platform | English | Music | Sport</p>
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
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/IBM.jpg" class="img-responsive" alt="IBM" />
						  	
								</a> 
								<div class="lightbox-target" id="goofy">
								<img src="http://7xjrp9.com1.z0.glb.clouddn.com/CSDN.jpg" class="img-responsive" alt="" />
								   <a class="lightbox-close" href="#"></a>
								</div>
						 </div>

					</div>				
					<div class="portfolio app mix_all" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/MI.jpg" class="img-responsive" alt="Mi" />
						  
								</a> 
					    </div>
					</div>		
					<div class="portfolio web mix_all" data-cat="web" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/casic.jpg" class="img-responsive" alt="CASIC" />
	
								</a>

					</div>	
</div>					
					<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/google.jpg"class="img-responsive" alt="Google" /><div class="b-wrapper">
						  	</div>
								</a> 
					    </div>

					</div>
					<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/SID.jpg" class="img-responsive" alt="SID" />
	
								</a>  
					    </div>

					</div>
					<div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/baidu.jpg"class="img-responsive" alt="baidu"/>
								</a> 
					    </div>
					</div>			
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/youku.jpg" class="img-responsive" alt="youku"/>
								</a> 
					    </div>
					</div>	
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/yili.jpg" class="img-responsive" alt="yili"/>
								</a> 
					    </div>
					</div>	
					<div class="portfolio icon mix_all" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a class="lightbox" href="#goofy">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/bit.jpg" class="img-responsive" alt=""/>
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
			   <h3>Acknowledgement</h3>
			</div>
			<div class="clients-section-grids text-center">
			   <div class="col-md-4 client-section-grid">
			    <img src=<?php echo get_template_directory_uri()."/images/selfIntro/client1.png"; ?> alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src=<?php echo get_template_directory_uri()."/images/selfIntro/client2.png"; ?> alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src=<?php echo get_template_directory_uri()."/images/selfIntro/client3.png"; ?> alt="" />
			 </div>
			 <div class="clearfix"></div>
			 <div class="col-md-4 client-section-grid">
			    <img src=<?php echo get_template_directory_uri()."/images/selfIntro/client2.png"; ?> alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src=<?php echo get_template_directory_uri()."/images/selfIntro/client3.png"; ?> alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src=<?php echo get_template_directory_uri()."/images/selfIntro/client1.png"; ?> alt="" />
			 </div>
			 <div class="clearfix"></div>
			 <div class="col-md-4 client-section-grid">
			    <img src=<?php echo get_template_directory_uri()."/images/selfIntro/client3.png"; ?> alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src=<?php echo get_template_directory_uri()."/images/selfIntro/client1.png"; ?> alt="" />
			 </div>
			 <div class="col-md-4 client-section-grid">
			    <img src=<?php echo get_template_directory_uri()."/images/selfIntro/client2.png"; ?> alt="" />
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
		    <form id="talkingForm" action=<?echo home_url()."/service/emailSending.php"?> method="POST">
			   <p> 
			   <label>姓名(YOUR NAME)</label>
			   <input name="sendName" type="text" value="" >
			   </p>
			   <p> 
			   <label>联系方式(YOUR CONTACT)</label>
			   <input name="sendMail" type="text" value="" >
			   </p>
			   <p> 
			   <label>想说的话(YOUR MESSAGE)</label>
			   <textarea name="sendMessage" ></textarea>
			   </p>
			   <div class="submit">
			     <input id="btnAjaxSubmit" type="submit" value="submit">
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

   
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<?php get_footer(); ?>