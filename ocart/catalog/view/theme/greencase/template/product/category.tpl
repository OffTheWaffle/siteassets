
<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft">
    <?php echo $column_left; ?>
    

      <?php if ($categories) { ?>
           	<div id="subwidget">
      		<div id="title_w">Subs Categories</div>
        <?php if (count($categories) <= 5) { ?>
  			<div id="content">   
                <div id="jm-menu">     
                    <ul>
                      <?php foreach ($categories as $category) { ?>
                     <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                     									 <?php } ?>
                     </ul>
               			
				</div>
         
               
                 
             </div> 
             
		       <?php } ?>
               
              </div>   
               <?php } ?>
    </div>
    
        <div id="widgetright">
        <?php echo $column_right; ?>
      <!-- Widget -->

     	<div id="shownull">
        
            <?php if ($products) { ?>
			<div id="title_w"><?php echo $heading_title; ?>
            	 <div id="link-right">          
<b><?php echo $text_limit; ?></b>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
 <b><?php echo $text_sort; ?></b>
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
 			<div id="content">
    			<?php foreach ($products as $product) { ?>
            	 <!-- Product -->
                <div class="listprodpage">
               		 <div id="image">
                      <?php if ($product['thumb']) { ?>
                	<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
             	      <?php } else {echo '<img alt="No thumbail" />';}?>
                      </div>
                     <div id="descrip">
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
                     
                    <div class="button">
                   
         <p> <a class="buttonlarge" onclick="addToCart('<?php echo $product['product_id']; ?>');"><span>Add to cart >></span></a></p>
        
		<p><a class="buttonsmall" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><span>Add to Wish List</span></a></p> 
 		<p><a class="buttonsmall" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><span>Add to Compare</span></a></p>
        
                    </div>             		
                </div>
            	 <!-- Product -->
			 <?php } ?>
             <?php } ?> 
             
            <div id="regbox-button">

                        <div id="right">
        
                   <div class="pagination"><?php echo $pagination; ?></div>
                        </div>
       
            </div>
    
              <?php } ?>     
                 
            </div>

        </div>   	    
    <!-- Widget -->         
 
        </div>



  <?php echo $content_bottom; ?>
<?php echo $footer; ?>