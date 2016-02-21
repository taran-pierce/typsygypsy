<div class="box container" id="bestseller">
  <div class="box-heading"><span><?php echo $heading_title; ?></span></div>
  <div class="box-content">
  <?php 
		$sliderFor = 5;
		$productCount = sizeof($products);
	?>
	<?php if ($productCount >= $sliderFor):
	?>
		<div class="customNavigation">
			<a class="prev fa fa-angle-left">&nbsp;</a>
			<a class="next fa fa-angle-right">&nbsp;</a>
		</div>	
	<?php endif; ?>	
	
	<div class="box-product <?php if ($productCount >= $sliderFor){?>product-carousel<?php }else{?>productbox-grid<?php }?>" id="<?php if ($productCount >= $sliderFor){?>bestseller-carousel<?php }else{?>bestseller-grid<?php }?>">
  <?php foreach ($products as $product) { ?>
  <div class="<?php if ($productCount >= $sliderFor){?>slider-item<?php }else{?>product-items<?php }?>">
    <div class="product-block product-thumb transition">
	  <div class="product-block-inner">
										
										<div class="image">
											<a href="<?php echo $product['href']; ?>">
												<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />					</a>
											<?php if (!$product['special']) { ?>       
											<?php } else { ?>
												<span class="saleicon sale">Sale</span>         
											<?php } ?>
											<div class="product_hover">
											<div class="hover_button">
											<button class="wishlist_button" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
											<button class="compare_button" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-area-chart"></i></button>
											</div>
											<div class="rating">
													<?php for ($i = 1; $i <= 5; $i++) { ?>
														<?php if ($product['rating'] < $i) { ?>
															<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
														<?php } else { ?>
														<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
														<?php } ?>
													<?php } ?>
												</div>
											</div>	
										</div>
										<div class="caption">
											<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
											<?php if ($product['price']) { ?>
												<p class="price">
												  <?php if (!$product['special']) { ?>
												  <?php echo $product['price']; ?>
												  <?php } else { ?>
												  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
												  <?php } ?>
												  <?php if ($product['tax']) { ?>
												  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
												  <?php } ?>
												</p>
											<?php } ?>
											<div class="button_cart">
											<button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
										</div>
										</div>
										
									</div>
	</div>
</div>
<?php } ?>
</div>
  </div>
</div>
<span class="bestseller_default_width" style="display:none; visibility:hidden"></span>
