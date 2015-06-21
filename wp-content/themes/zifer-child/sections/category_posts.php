<?php

/**
 * @package Zifer Child
 */

?>


<?php if ( function_exists( 'wp_tag_cloud' ) ) : ?>
<?php wp_tag_cloud( 'smallest=8&largest=22' ); ?>
<?php endif; ?>
<section class="custom-category" id="custom-category">
	<div class="container">
		<!-- SECTION HEADER -->
		<div class="section-header">
			<!-- SECTION TITLE -->
			<?php 
			$zerif_customcategory_title = get_theme_mod('zerif_customcategory_title',__('Custom Category','zifer-child'));
			
			if( !empty($zerif_customcategory_title) ):
				echo '<h2  class="dark-text">'.__($zerif_customcategory_title,'zifer-child').'</h2>';
			endif;

			?>
		</div><!-- / END SECTION HEADER -->
			
		<!-- SECTION CONTENT -->
			
		<div class="section-content">
			<?php
			$zerif_customcategory_select = get_theme_mod('zerif_customcategory_select','');

			if( !empty($zerif_customcategory_select) ):
				echo '<span  class="dark-text">';
				// retrieve posts with category ID of $zerif_customcategory_select
				query_posts( 'cat='.$zerif_customcategory_select.'&posts_per_page=5&orderby=post_date' );
				// set $more to 0 in order to only get the first part of the post
				global $more;
				$more = 0;
				// the Loop
				
				$i=0;
				while (have_posts()) : the_post();
					$i++;//href='".esc_url(get_permalink())."'
					if ($i != 1)continue;
                    echo "<a title='".esc_attr(get_the_title())."'  class='categ-block cat-block-".$i."'>
						<div>";
							?>
							
							<?php if ( has_post_thumbnail() ) : ?>
								<?php the_post_thumbnail("full"); ?>
							<?php else: ?>
								<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/blank-latestposts.png">
							<?php endif; ?>

							<?php
					echo "<div class='cat-hover'><span>".esc_attr( get_the_title() )."</span>";
							?>
							<?php if (esc_attr(get_the_title()) == "个人简介"): ?> 
                                    <p><h1><font style="color:red;font-weight:bold;font-family:楷体;font-size:40px">张迎曦</font><h1></p>
                                    <p>性别男， 爱好女</p>
                                    <p>现就读于北京理工大学计算机学院, 准硕士学位</p>
                                    <p>准程序猿一枚，目前是待业狗形态</p>
                                    <p>热爱数据结构、算法设计、Web Design、CUDA图像编程</p>
                                    <p>曾在航天二院、小米科技、IBM等知名企业实习，从事云平台系统的实现</p>
                                    <p>酷爱吉他和篮球，各位走过路过不要错过！</p>
							<?php
                                  
                                  else: 
                                      if (esc_attr(get_the_title()) == "狗狗"):
                                        
                                      endif;
                                  endif;
                            ?>
                            <?php
					echo "</div>";
							
					echo "</div></a> ";
							
				endwhile;
                
				wp_reset_query();
				echo '</span>';
                wp_cumulus_insert();//insert culmulus
            
				else :
					echo '<span >';
					echo __('Select category from "Custom Category section"','zifer-child');
					echo '</span>';
				endif;

			?>
		</div><!-- / END SECTION CONTENT -->
	</div> <!-- / END CONTAINER -->
</section> <!-- END CUSTOM CATEGORY SECTION -->
