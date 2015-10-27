<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft"><?php echo $column_left; ?></div>
        <div id="widgetright">
        
        <?php echo $column_right; ?>
        <!-- Widget -->
     	<div id="subwidget">
			<div id="title_w"><?php echo $heading_title; ?></div>
 			<div id="content">            
                 <?php if ($returns) { ?>
                  <?php foreach ($returns as $return) { ?>
                    <div id="regbox-button">
                        <div id="left">
        <b><?php echo $text_return_id; ?></b> #<?php echo $return['return_id']; ?> <br />
        <b><?php echo $text_status; ?></b> <?php echo $return['status']; ?> <br />
        <b><?php echo $text_date_added; ?></b> <?php echo $return['date_added']; ?><br />
           <b><?php echo $text_order_id; ?></b> <?php echo $return['order_id']; ?> <br />
         <b><?php echo $text_customer; ?></b> <?php echo $return['name']; ?><br />
         <b><?php echo $text_products; ?></b> <?php echo $return['products']; ?> <br />      
                        </div>
                        <div id="right">
<a href="<?php echo $return['href']; ?>" class="buttonlarge"><span><?php echo $button_view; ?></span></a>
        
                        </div>
                        
                    </div>                  
      
                  <?php } ?>
                  <div id="regbox-button"><div id="right"><?php echo $pagination; ?></div></div>
                  <?php } else { ?>
                  <div id="regbox-button"><?php echo $text_empty; ?></div>
                  <?php } ?>
            
            </div>
			<div id="regbox-button">
                <div id="right">
                <a href="<?php echo $continue; ?>" class="buttonlarge">
                <span><?php echo $button_continue; ?></span></a>
                </div>
  			</div>
			
        
        </div>   	
    <!-- Widget -->
       

 

  <?php echo $content_bottom; ?>
<?php echo $footer; ?>