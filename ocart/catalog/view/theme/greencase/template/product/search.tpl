<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft">
    
    <?php echo $column_left; ?>
    
    
    </div>
        <div id="widgetright">
        
        <?php echo $column_right; ?>
        
        
        <!-- Widget -->
     	<div id="subwidget">
			<div id="title_w"><?php echo $text_critea; ?></div>
 			<div id="content">            
                <div id="regbox-button">
    <?php echo $entry_search; ?>
      <?php if ($filter_name) { ?>
      <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
      <?php } else { ?>
      <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
      <?php } ?>
      <select name="filter_category_id">
        <option value="0"><?php echo $text_category; ?></option>
        <?php foreach ($categories as $category_1) { ?>
        <?php if ($category_1['category_id'] == $filter_category_id) { ?>
        <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
        <?php } ?>
        <?php foreach ($category_1['children'] as $category_2) { ?>
        <?php if ($category_2['category_id'] == $filter_category_id) { ?>
        <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
        <?php } ?>
        <?php foreach ($category_2['children'] as $category_3) { ?>
        <?php if ($category_3['category_id'] == $filter_category_id) { ?>
        <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php } ?>
      </select>

           
                </div>
                <div id="regbox-button">
      <?php if ($filter_sub_category) { ?>
      <input type="checkbox" name="filter_sub_category" value="1" id="sub_category" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="filter_sub_category" value="1" id="sub_category" />
      <?php } ?>
      <b for="sub_category"><?php echo $text_sub_category; ?></b>
    </p>
    <?php if ($filter_description) { ?>
    <input type="checkbox" name="filter_description" value="1" id="description" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="filter_description" value="1" id="description" />
    <?php } ?>
    <b for="description"><?php echo $entry_description; ?></b>
           
                </div>	
                <div id="regbox-button">
                    <div id="left">
         <a class="buttonlarge" id="searchitem"><span><?php echo $button_search; ?></span></a>
                    </div>
    
           
                </div>     
 			  
                     
            
                       
            </div>

		
        
        </div>   	
    <!-- Widget -->       
   <?php if ($products) { ?>
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
			<div id="title_w">Result:</div>
 			<div id="content">
          <?php foreach ($products as $product) { ?>           
            	 <!-- Product -->
                <div class="listprod-catpage">
                
                      <?php if ($product['thumb']) { ?>
  	<div id="imageprod"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } ?>
              
             	
                     <div id="description">
                    <a href="<?php echo $product['href']; ?>"> <b><?php echo $product['name']; ?></b></a> 
                    
                     <p> <?php echo $product['description']; ?></p>
                     </div>
                     <div id="cost">
                      <?php if ($product['price']) { ?>
                        <?php if (!$product['special']) { ?>
                     <div id="costprod">   <?php echo $product['price']; ?></div>
                        <?php } else { ?>
                        <div id="costprod-old"><?php echo $product['price']; ?></div>  <div id="costprod"><?php echo $product['special']; ?></div>
                        <?php } ?>                     

                     </div>
                     
                    <div class="add-button">
                   
         <p> <a class="buttonlarge" onclick="addToCart('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></a></p>
		<p><a class="buttonsmall"  onclick="addToWishList('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></a></p>
 		<p><a class="buttonsmall" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></a></p>
        
                    </div>   
                    						<?php } ?>  
                                                  		
                </div>
            	 <!-- Product -->
              				  <?php } ?>				
                <div id="regbox-button">
                    <div id="right">
                    
                    <?php echo $pagination; ?>
                    </div>
           
                </div>              
                     
            </div>
        </div>   	    
    <!-- Widget -->   
      <?php } else { ?>
                     <div id="regbox-button">
                        <?php echo $text_empty; ?>
               
                    </div>     
         <?php }?>     
  
     
        </div>
       
 <?php echo $content_bottom; ?>
<script type="text/javascript">
$("document").ready(function(){
$('#subwidget input[name=\'filter_name\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#searchitem').trigger('click');
	}
});

$('#searchitem').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var filter_name = $('#content input[name=\'filter_name\']').attr('value');
	
	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}

	var filter_category_id = $('#content select[name=\'filter_category_id\']').attr('value');
	
	if (filter_category_id > 0) {
		url += '&filter_category_id=' + encodeURIComponent(filter_category_id);
	}
	
	var filter_sub_category = $('#content input[name=\'filter_sub_category\']:checked').attr('value');
	
	if (filter_sub_category) {
		url += '&filter_sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'filter_description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&filter_description=true';
	}

	location = url;
});
});
</script> 
<?php echo $footer; ?>