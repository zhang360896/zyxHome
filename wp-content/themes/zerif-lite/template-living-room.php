<?php

/*
Template Name: Living Room
*/



get_header(); ?>

<div class="clear"></div>

</header> <!-- / END HOME SECTION  -->
<div class="livingRoom_snooker_view">
		<canvas id="livingRoom_snooker_cas" width="350" height="550""style="display:none;" >您的浏览器不支持canvas，请升级浏览器</canvas> 
		<img src="http://7xjrp9.com1.z0.glb.clouddn.com/white_ball.png" id="livingRoom_snooker_wb" alt=""style="display:none;" />
		<img src="http://7xjrp9.com1.z0.glb.clouddn.com/yellow_ball.png" id="livingRoom_snooker_yb" alt="" style="display:none;"/>
		<div class="livingRoom_snooker_shotPower">
			<div id="livingRoom_snooker_powbar"><div id="livingRoom_snooker_pow"></div></div>
		</div>
		<div class="livingRoom_snooker_num" style="position:absolute;right:30%;top:550px;color:red";>进球数：<span id="livingRoom_snooker_shotNum">0</span></div>
		<input type="button"  id="livingRoom_snookerReset" value="Restart"/>
	</div>
    

<div id="content" class="site-content" style="background-size:100%;background:url('http://7xjrp9.com1.z0.glb.clouddn.com/living-room2.jpg')no-repeat">
<video controls="controls">

 <source type="video/mp4" src="http://7xjrp9.com1.z0.glb.clouddn.com/living-room-video.mp4" />
</video>

<div class="container">
<div class="content-left-wrap col-md-9">

	<div id="primary" class="content-area">

		<main id="main" class="site-main row-md-10" role="main">



			<?php while ( have_posts() ) : the_post(); ?>

				<?php get_template_part( 'content', 'page' ); ?>

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