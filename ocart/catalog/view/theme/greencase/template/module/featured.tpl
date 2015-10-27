
   <!-- Widget -->
     	<div id="showproduct">
			<div id="title_w"><?php echo $heading_title; ?></div>
 			<div id="content">
       <?php foreach ($products as $product) { ?>           
            	 <!-- Product -->
                <div class="listprod">
 				<?php if ($product['thumb']) { ?>               
             	<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
               						   <?php } ?>
                 <div id="titleprod"><?php echo $product['name']; ?></div>
        <?php if ($product['price']) { ?>  
                  <?php if (!$product['special']) { ?>
         <div id="costprod"> <?php echo $product['price']; ?></div>
          <?php } else { ?>               
                   <div id="costprod-old"><?php echo $product['price']; ?></div>
                   <div id="costprod"><?php echo $product['special']; ?></div>
       			   <?php } ?>    
 	        <?php } ?>
            
                                          
                    <div class="contentprod">
                   
          <a class="buttonlarge"  onclick="addToCart('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></a>
          <a class="buttonsearch" title="Details" href="<?php echo $product['href']; ?>"><span>>></span></a>          

                    </div>             		
                </div>
            	 <!-- Product -->
  	 <?php } ?>
                 
            </div>
        </div>   	    
    <!-- Widget -->  

