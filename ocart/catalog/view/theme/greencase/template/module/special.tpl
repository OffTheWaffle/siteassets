
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
         	<?php 
            $newcost=$product['special'];
            $oldcost=$product['price'];
          
          (float)$newcost=substr($newcost,1,strlen($newcost)-1);
            (float)$oldcost=substr($oldcost,1,strlen($oldcost)-1);
           (float) $per=(($oldcost-$newcost)/$oldcost)*100;
            
            ?>
                   <div id="prod-special">
                   	<div id="cost-special"><span><?php echo intval($per); ?>%</span><span id="small">Off</span></div>

                   </div> 
         <div id="costprod"> <?php echo $product['special']; ?></div>  
            
           
       			 <?php } ?>
         <?php } ?>
                        
                    <div class="contentprod">
                   
          <a class="buttonlarge" onclick="addToCart('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></a>
          <a class="buttonsearch" title="Details" href="<?php echo $product['href']; ?>" ><span>>></span></a>          

                    </div>             		
                </div>
            	 <!-- Product -->
        <?php } ?>
                 
            </div>
        </div>   	    
    <!-- Widget -->  




