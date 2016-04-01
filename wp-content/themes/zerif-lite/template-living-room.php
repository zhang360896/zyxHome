<?php

/*
Template Name: Living Room
*/



get_header(); ?>

<div class="clear"></div>

</header> <!-- / END HOME SECTION  -->



	<div id="content" class="site-content" style="background-size:100%;background:url('http://7xjrp9.com1.z0.glb.clouddn.com/living-room2.jpg')no-repeat">

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