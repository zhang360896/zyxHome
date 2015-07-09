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
                            $('#da-thumbs > li').hoverdir();
							$().UItoTop({ easingType: 'easeOutQuart' });
                            //alert('serialize' + $("#talkingForm").serialize());
                            $('#talkingForm').submit(function() {
                                alert('消息发送中');
                                $.ajax({
                                    url:"<?php echo site_url('/service/emailSending.php');?>",
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
					  <li><a href="#clients" class="scroll">证书和奖项</a></li>
					  <li><a href="#contact" class="scroll">和我聊聊</a></li>
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
				   		 		<h1><span>张迎曦</span></h1>
                                <h2 ></h2>
								<label>北京理工大学/硕士/计算机科学与技术</label>
								<p>对计算机<span class="bold" >算法</span>及<span class="bold" >web云技术</span>充满兴趣和热爱</p>
				   		 	    <p>了解计算机网络前端和后台协议栈 </p>
							    <p>曾在多家著名企业实习，对云平台相关领域有极高兴趣. </p><p><span class="bold block">
                                &nbsp;&nbsp;希望您能看到我的努力！</span></p>
                                <p><span class="bold block">
                                &nbsp;&nbsp;&nbsp;再次感谢您的关注!</span></p>
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
				   		 	    <p>I am familiar with the front-end development and protocol stack. </p>
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
                      <p>MySQL | JavaScript | Html/CSS | Node.js | Backbone.js | PHP</p>
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
		     <h3>工作和实践</h3>
             <h3>(Intern Experiences)</h3>
		  </div>
		  
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						 <div class="portfolio-wrapper">	
                            <div class = "galleryImage">
                                <a class="lightbox" href="#exIBM">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/IBM.jpg" class="img-responsive" alt="IBM" />
                                   <div class="info">
                                        <h2>IBM研发实习</h2>
                                        <p>(2015.01~2015.08)</p>
                                   </div> 
								</a> 
								<div class="lightbox-target" id="exIBM">
								<img src="http://7xjrp9.com1.z0.glb.clouddn.com/ex_IBM.png" class="img-responsive" alt="" />
								   <a class="lightbox-close" href="#work"></a>
								</div>
                                <div class="lightbox-target" id="exMi">
								<img src="http://7xjrp9.com1.z0.glb.clouddn.com/ex_xiaomi.png" class="img-responsive" alt="" />
								   <a class="lightbox-close" href="#work"></a>
								</div>
                                <div class="lightbox-target" id="exCASIC">
								<img src="http://7xjrp9.com1.z0.glb.clouddn.com/ex_eryuan.png" class="img-responsive" alt="" />
								   <a class="lightbox-close" href="#work"></a>
								</div>
                                <div class="lightbox-target" id="exGoogle">
								<img src="http://7xjrp9.com1.z0.glb.clouddn.com/ex_google.png" class="img-responsive" alt="" />
								   <a class="lightbox-close" href="#work"></a>
								</div>
                                <div class="lightbox-target" id="exSID">
								<img src="http://7xjrp9.com1.z0.glb.clouddn.com/ex_sid.png" class="img-responsive" alt="" />
								   <a class="lightbox-close" href="#work"></a>
								</div>
                                <div class="lightbox-target" id="exBaidu">
								<img src="http://7xjrp9.com1.z0.glb.clouddn.com/ex_baidu.png" class="img-responsive" alt="" />
								   <a class="lightbox-close" href="#work"></a>
								</div>
                                <div class="lightbox-target" id="exYouku">
								<img src="http://7xjrp9.com1.z0.glb.clouddn.com/ex_youku.png" class="img-responsive" alt="" />
								   <a class="lightbox-close" href="#work"></a>
								</div>
                                <div class="lightbox-target" id="exYili">
								<img src="http://7xjrp9.com1.z0.glb.clouddn.com/yili.jpg" class="img-responsive" alt="" />
								   <a class="lightbox-close" href="#work"></a>
								</div>
                                <div class="lightbox-target" id="exBIT">
								<img src="http://7xjrp9.com1.z0.glb.clouddn.com/ex_yanhui.png" class="img-responsive" alt="" />
								   <a class="lightbox-close" href="#work"></a>
								</div>
                            </div>
                               
						 </div>

					</div>				
					<div class="portfolio" style="display: inline-block;width:30% opacity: 1;">
						<div class="portfolio-wrapper">		
                            <div class = "galleryImage">
                                
                                 <a class="lightbox" href="#exMi">
                                    <img src="http://7xjrp9.com1.z0.glb.clouddn.com/MI.jpg" class="img-responsive" alt="Mi" />
                                    <div class="info">
                                        <h2>小米Java实习</h2>
                                        <p>(2014.10~2015.01)</p>
                                    </div> 
                                </a> 
                                 
                            </div>
                           
                        </div>
					</div>		
                    <div class="portfolio web mix_all" data-cat="web" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
                            <div class = "galleryImage">
                                <a class="lightbox" href="#exCASIC">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/casic.jpg" class="img-responsive" alt="CASIC" />
                                   <div class="info">
                                        <h2>航天二院实习</h2>
                                        <p>(2014.04~2014.06)</p>
                                    </div>   
                                </a>
                            </div>	
                        </div>
                    </div>
            
               <div id="portfoliolist">
					
					<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
                            <div class = "galleryImage">
                                <a class="lightbox" style="text-align:center;" href="#exGoogle">
                                    <img src="http://7xjrp9.com1.z0.glb.clouddn.com/google.jpg"class="img-responsive" alt="Google" />
                                    <div class="info" >
                                        <h3>Google美国总部见习</h3>
                                        <p>(2015.06~2015.06)</p>
                                    </div>  
                                </a>                                     
						  	</div>
								
                        </div>
					

					</div>
					<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
                            <div class = "galleryImage">
                                <a class="lightbox" href="#exSID">
                                       <img src="http://7xjrp9.com1.z0.glb.clouddn.com/SID.jpg" class="img-responsive" alt="SID" />
                                       <div class="info">
                                            <h3>美国SID国际会议</h3>
                                            <p>(2015.06~2015.06)</p>
                                       </div>   
                                </a>  
                            </div>
					    </div>

					</div>
                    <div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
                            <div class="portfolio-wrapper">		
                                <div class = "galleryImage">
                                    <a class="lightbox" href="#exBaidu">
                                        <img src="http://7xjrp9.com1.z0.glb.clouddn.com/baidu.jpg"class="img-responsive" alt="baidu"/>
                                           <div class="info">
                                                <h3 >百度总部参观学习</h3>
                                                <p>(2015.03~2015.03)</p>
                                           </div>   
                                    </a> 
                                </div>
                            </div>
					</div>
                    </div>
                    <div id="portfoliolist">
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
                            <div class = "galleryImage">
                                <a class="lightbox" href="#exYouku">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/youku.jpg" class="img-responsive" alt="youku"/>
                                   <div class="info">
                                        <h3>优酷土豆参观学习</h3>
                                        <p>(2014.11~2014.11)</p>
                                    </div>   
								</a> 
                            </div>
					    </div>
					</div>	
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
                            <div class = "galleryImage">
							<a class="lightbox" href="#exYili">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/yili.jpg" class="img-responsive" alt="yili"/>
                                   <div class="info">
                                        <h3>伊利公司参观学习</h3>
                                        <p>(2014.9~2014.9)</p>
                                    </div>   
								</a> 
                                </div>
					    </div>
					</div>	
					<div class="portfolio icon mix_all" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
                            <div class = "galleryImage">
                                <a class="lightbox" href="#exBIT">
								   <img src="http://7xjrp9.com1.z0.glb.clouddn.com/bit.jpg" class="img-responsive" alt=""/>
                                   <div class="info">
                                        <h3>校、院研会工作</h3>
                                        <p>(2013.09~2015.07)</p>
                                    </div>   
                                </a> 
                            </div>
                        </div>
					</div>
                    </div>
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
			   <h3>证书和奖项</h3>
               <h3>(Achievements)</h3>
			</div>
			<div class="clients-section-grids text-center" style="margin-left:auto;margin-right: auto;">
                <ul id="da-thumbs" class="da-thumbs">
                    <li>
                        <a href="#clients"> 
                            <img src="http://7xjrp9.com1.z0.glb.clouddn.com/guojiang.png" alt="国家奖学金"/>
                            <div >
                                <span >2011年国家级奖学金</span>
                            </div>
                        </a> 
                    </li>
                    <li>
                        <a href="#clients"> 
                            <img src="http://7xjrp9.com1.z0.glb.clouddn.com/youxiudangyuan.png" alt="省优秀党员" />
                            <div >
                                <span >省级优秀党员称号</span>
                            </div>
                        </a> 
                    </li>
                    <li>
                        <a href="#clients"> 
                            <img src="http://7xjrp9.com1.z0.glb.clouddn.com/acm.png" alt="ACM程序设计大赛"/>
                            <div >
                                <span >多项ACM/ICPC邀请赛奖项</span>
                            </div>
                        </a> 
                    </li>
                    <li>
                        <a href="#clients"> 
                            <img src="http://7xjrp9.com1.z0.glb.clouddn.com/yingyuyanjiang.png"/>
                            <div >
                                <span >2013年北京市研究生英语演讲比赛优秀奖</span>
                            </div>
                        </a> 
                    </li>
                    <li>
                        <a href="#clients"> 
                            <img src="http://7xjrp9.com1.z0.glb.clouddn.com/beiligong.png"/>
                            <div >
                                <span >一等奖学金、北京理工大学英语演讲比赛第四名</span>
                            </div>
                        </a> 
                    </li>
                    <li>
                        <a href="#clients"> 
                            <img src="http://7xjrp9.com1.z0.glb.clouddn.com/beiligong.png"/>
                            <div >
                                <span >校优秀干部、学生、团干等</span>
                            </div>
                        </a> 
                    </li>
                    <li>
                        <a href="#clients"> 
                            <img src="http://7xjrp9.com1.z0.glb.clouddn.com/ccf.png"/>
                            <div >
                                <span >中国计算机学会CSP认证前7%</span>
                            </div>
                        </a> 
                    </li>
                    <li>
                        <a href="#clients"> 
                            <img src="http://7xjrp9.com1.z0.glb.clouddn.com/cet.png"/>
                            <div >
                                <span >大学生英语四、六级证书</span>
                            </div>
                        </a> 
                    </li>
                    <!--<li>
                        <a href="#clients"> 
                            <img src="http://7xjrp9.com1.z0.glb.clouddn.com/1.png"/>
                            <div >
                                <span >计算机与软件专业技术资格网络工程师证书(中级)</span>
                            </div>
                        </a> 
                    </li>
                    <li>
                        <a href="#clients"> 
                            <img src="http://7xjrp9.com1.z0.glb.clouddn.com/xinxijishu.png"/>
                            <div >
                                <span >全国信息技术网络信息安全工程师技术证书(中级)</span>
                            </div>
                        </a> 
                    </li>-->
                </ul>
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
		    <form id="talkingForm" method="POST" action="<?php echo site_url('/service/emailSending.php');?>">
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
                 <img src="http://7xjrp9.com1.z0.glb.clouddn.com/We2DCode.png" style="width:120px;height:120px;;float:left" title="想进一步与我交流？请扫描二维码">
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

   
	<!--<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;">回到顶端(Back to top)</span></a> -->
<?php get_footer(); ?>