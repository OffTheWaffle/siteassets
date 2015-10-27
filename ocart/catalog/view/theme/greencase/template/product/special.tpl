<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft">
       
    <?php echo $column_left; ?>
    
    </div>
        <div id="widgetright">
        
        <?php echo $column_right; ?>
        
                        <div id="regbox-button">
                            <div id="left">
                <div class="limit"><?php echo $text_limit; ?>
                  <select onchange="location = this.value;">
                    <?php foreach ($limits as $limits) { ?>
                    <?php if ($limits['value'] == $limit) { ?>
                    <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
                            </div>
        
                            <div id="right">
                            
                <div class="sort"><?php echo $text_sort; ?>
                  <select onchange="location = this.value;">
                    <?php foreach ($sorts as $sorts) { ?>
                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                    <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </div>
                            </div>
               
                    </div>
                    
     <!-- Widget -->
     	<div id="showproduct">
			<div id="title_w">List Product</div>
 			<div id="content">
              <?php if ($products) { ?>
            	 <!-- Product -->
                     <?php foreach ($products as $product) { ?>
                <div class="listprod-catpage">
               		 <div id="imageprod">
                      <?php if ($product['thumb']) { ?>
                	<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
             	      <?php } else {echo '<img alt="No thumbail" />';}?>
                      </div>
             	
                     <div id="description">
                    <b> <?php echo $product['name']; ?> </b>
                     <p> <?php echo $product['description']; ?></p>
                     </div>
                     <div id="cost">
                           <?php if ($product['price']) { ?>
                                  <?php if (!$product['special']) { ?>
       					<div id="costprod"> <?php echo $product['price']; ?></div>
      							  <?php } else { ?>
                       <div id="costprod-old"><?php echo $product['price']; ?></div>
                       <div id="costprod"><?php echo $product['special']; ?></div>
                               <?php } ?>
                       
                     </div>
                     
                    <div class="add-button">
                   
         <p> <a class="buttonlarge" onclick="addToCart('<?php echo $product['product_id']; ?>');"><span>Add to cart >></span></a></p>
        
		<p><a class="buttonsmall" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><span>Add to Wish List</span></a></p> 
 		<p><a class="buttonsmall" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><span>Add to Compare</span></a></p>
        
                    </div>             		
                </div>
                  <?php } ?>  
            	 <!-- Product -->
             <?php } ?>  
             <div id="regbox-button">

                        <div id="right">
        
                   <div class="pagination"><?php echo $pagination; ?></div>
                        </div>
       
            </div>
                          <?php }  else { ?>
              <div id="regbox-button">
			<?php echo $text_empty; ?>
       
            </div>

  <?php }?>          
            </div>
        </div>   	    
    <!-- Widget -->   
                
                    
                    
        </div>
        
        
        
<?php echo $content_bottom; ?>

<?php echo $footer; ?>