<div class="box">
<?php 
		$sliderFor = 2;
		$blogCount = sizeof($blogs); 
?> 
  <div class="box-heading"><a href="<?php echo $all_blogs; ?>"><?php echo $heading_title; ?></a></div>
  <div class="box-content">
    <div class="box-product <?php if ($blogCount > $sliderFor){?> owl-carousel blogcarousel <?php }else{?>productbox-grid<?php }?>" id="<?php if ($blogCount >= $sliderFor){?>blog-carousel<?php }else{?>blog-grid<?php }?>">
	<?php foreach ($blogs as $blog) { ?>
    <div class="<?php if ($blogCount >= $sliderFor){?>blog-item<?php }else{?>product-items<?php }?>">
	<div class="product-block">
	<?php if ($blog['image']) { ?>
	  <div class="blog-left">
	  <h4><a href="<?php echo $blog['href']; ?>"><?php echo $blog['title']; ?></a> </h4>
	  <div class="blog-image">
	  <img src="<?php echo $blog['image']; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" />
	  <div class="post-image-hover"> </div>
<p class="post_hover"><a class="icon zoom" title="Click to view Full Image " href="<?php echo $blog['image']; ?>" data-lightbox="example-set"><i class="fa fa-search-plus"></i> </a><a class="icon readmore_link" title="Click to view Read More " href="<?php echo $blog['href']; ?>"><i class="fa fa-link"></i></a></p>
	  </div>
	  </div>
	  <?php } ?>	
	 <div class="blog-right"> 
	 <div class="date-time"><?php /*?> <i class="fa fa-calendar"></i> <?php */?> <?php echo $blog['date_added']; ?></div> 
      <div class="blog-desc"> <?php echo $blog['description']; ?> </div> 
	  <div class="view-blog">
	  	<div class="read-more"> <a href="<?php echo $blog['href']; ?>"><?php /*?> <i class="fa fa-link"></i> <?php */?><?php echo $text_read_more; ?></a> </div>
	  	<div class="write-comment"> <a href="<?php echo $blog['href']; ?>"> <?php echo $blog['total_comments']; ?> <?php echo $entry_comment; ?></a> </div>
	  </div>
	 </div> 
    </div>
	</div>
	<?php } ?>
   
  </div>
  </div>
 
</div>
<span class="blog_default_width" style="display:none; visibility:hidden"></span>

<script type="text/javascript"><!--

$(document).ready(function(){
$('.blogcarousel').owlCarousel({
		items: 3,
		autoPlay: 10000,
		singleItem: false,
		navigation: true,
		navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
		pagination: true,
		itemsDesktop : [1000,2],
		itemsDesktopSmall :	[979,2]
	});
});	
--></script>

<script type="text/javascript"><!--

$(document).ready(function flex(){
$('.blog_page .blog-image').each(function() {
var that = $(this);
var url = that.find('img').attr('src');
that.css({'background-image':'url("' + url + '")'});
var that1 = $('.blog_page .blog-image img');
that1.css('display','none');

});
});

--></script>