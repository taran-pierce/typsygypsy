<footer>
  <div id="footer" class="container">
	 <div class="footer_inner">
	 <?php echo $footerleft; ?>
	
      <?php if ($informations) { ?>
      <div class="col-sm-3 column">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
		  <li class="last"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>
      </div>
      <?php } ?>
      
      <div class="col-sm-3 column">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		  <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
	
	  <?php echo $footerright; ?>
	  </div>
	  
	  <div class="fotter_bottom_section">
	 	<div class="manufacture_block">
			<?php if ($manufacturer_list) { ?>
				<h3 class="manufacturer_title"><?php echo $text_manufacturer; ?></h3>
				<ul>
				<?php foreach ($manufacturer_list as $manufacturer) { ?>
					 <li class="manufacturer_item"><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></li>
				<?php } ?>
				</ul>
			<?php } ?>
		</div>
		
		<?php echo $footerbottom; ?>
		
	 </div>
	 
	  <div class="footer_bottom_links">
	<div class="footer_bottom container">
	  <div id="links">
  		<ul>
		<li class="first"><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
		<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>   
		<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>    
		<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>    
		<li class="last"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
		</ul>
	</div>	
	  <p><?php echo $powered; ?></p> 
	  </div>
	  </div>
	
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>