<?php

/*
Template Name: Living Room
*/



get_header(); ?>

<div class="clear"></div>

</header> <!-- / END HOME SECTION  -->

<div id="content" class="site-content" >
<div class="video-text" style="position:relative;">
<div class="livinroom-video">
	<video width=100% height=100% autoplay>
	 <source type="video/mp4" src="http://7xjrp9.com1.z0.glb.clouddn.com/livingroom_video.mp4" />
	 <img src="" alt="" />
	</video>
</div>
 <div class="welcome" id="welcome-words">
	<h2 class="subtitle text">客厅</h2>
	<p class="text">“Welcome！这里是主人的会客室，保留着他的朋友和他们的足迹”</p>
</div>

<div class="portfolio-wrapper-livingroom">				
		 <a class="lightbox" href="#exMi">
			<img src="http://127.0.0.1/homepage/wp-content/themes/zifer-child/images/pic6.jpg" class="img-responsive" alt="Mi" />
			<div class="info">
				<h4>桌球</h4>
			</div> 
		</a>
</div>
				
</div>

<div class="work-section" id="work">
	    <div class="container">
					<div class="portfolio card mix_all" data-cat="card" style="display: inline-block; opacity: 1;">
						 <div class="portfolio-wrapper">	
                            <div class = "galleryImage">
                                <div class="lightbox-target" id="exMi">
								<div class="livingRoom_snooker_view">
									<canvas id="livingRoom_snooker_cas" width="350" height="550" >您的浏览器不支持canvas，请升级浏览器</canvas> 
									<img src="http://7xjrp9.com1.z0.glb.clouddn.com/white_ball.png" id="livingRoom_snooker_wb" alt=""style="display:none;" />
									<img src="http://7xjrp9.com1.z0.glb.clouddn.com/yellow_ball.png" id="livingRoom_snooker_yb" alt="" style="display:none;"/>
									<div class="livingRoom_snooker_shotPower">
										<div id="livingRoom_snooker_powbar"><div id="livingRoom_snooker_pow"></div></div>
									</div>
									<div class="livingRoom_snooker_num" style="position:absolute;right:30%;top:550px;color:red";>进球数：<span id="livingRoom_snooker_shotNum">0</span></div>
									<input type="button"  id="livingRoom_snookerReset" value="Restart"/>
								</div>			

								   <a class="lightbox-close" href="#work"></a>
								</div>
                            </div>
                               
						 </div>

					</div>				
				
		  </div>
    </div>
	
<div class="container">
<div class="content-left-wrap col-md-9">

	<div id="primary" class="content-area">

		<main id="main" class="site-main row-md-10" role="main">



			<?php while ( have_posts() ) : the_post(); ?>

				

				<?php

					// If comments are open or we have at least one comment, load up the comment template

					if ( comments_open() || '0' != get_comments_number() ) :

						comments_template();

					endif;

				?>

			<?php endwhile; // end of the loop. ?>


		</main><!-- #main -->

	</div><!-- #primary -->

</div><!-- .content-left-wrap -->
</div><!-- .container -->

<?php get_footer(); ?>