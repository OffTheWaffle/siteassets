<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft"><?php echo $column_left; ?></div>
        <div id="widgetright">
        <?php echo $column_right; ?>
        <!-- Widget -->
     	<div id="subwidget" style="min-height:300px;">
			<div id="title_w"><?php echo $heading_title; ?></div>
 			<div id="content">    
                    
                  <?php if ($orders) { ?>
                  <?php foreach ($orders as $order) { ?>
                  <div id="regbox-button">
                    <div id="left">
                    <b><?php echo $text_order_id; ?></b> #<?php echo $order['order_id']; ?> <br />
                    <b><?php echo $text_status; ?></b> <?php echo $order['status']; ?> <br />
                    <b><?php echo $text_date_added; ?></b> <?php echo $order['date_added']; ?><br />
                     <b><?php echo $text_products; ?></b> <?php echo $order['products']; ?><br />
                    <b><?php echo $text_customer; ?></b> <?php echo $order['name']; ?><br />
                     <b><?php echo $text_total; ?></b> <?php echo $order['total']; ?>                    
                    </div>                  
                    <div id="right">
          <a href="<?php echo $order['href']; ?>" class="buttonlarge"><span><?php echo $button_view; ?></span></a>          
                    </div>
              
                  </div>	                  
 
                  <?php } ?>
                  <div id="regbox-button"><div id="right"><?php echo $pagination; ?></div></div>
                  <?php } else { ?>
                  <div id="regbox-button"><?php echo $text_empty; ?></div>
                  <?php } ?>
                  <div id="regbox-button">
                    <div id="right"><a href="<?php echo $continue; ?>" class="buttonlarge"><span><?php echo $button_continue; ?></span></a></div>
                  </div>	
            
            </div>


			
        
        </div>   	
    <!-- Widget -->
       
        </div>
        


  <?php echo $content_bottom; ?>
  
<?php echo $footer; ?>