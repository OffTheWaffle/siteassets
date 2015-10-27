<?php echo $header; ?>

<?php echo $content_top; ?>
    <div id="widgetleft">
    <?php echo $column_left; ?>
    
    </div>
        <div id="widgetright">
        
        <?php echo $column_right; ?>
       <!-- Widget -->
     	<div id="subwidget">
			<div id="title_w"><?php echo $heading_title; ?></div>
              <?php if ($success) { ?>
              <div id="regbox-button"><?php echo $success; ?></div>
              <?php } ?><strong></strong>

                      
 			<div id="content">            

  <h2><?php echo $text_my_account; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
      <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
      <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
    </ul>
  </div>
  <h2><?php echo $text_my_orders; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
      <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
    </ul>
  </div>
  <h2><?php echo $text_my_newsletter; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
            
            </div>

			
        
        </div>   	
    <!-- Widget -->
 
 
        
        </div>
        

  <?php echo $content_bottom; ?>
<?php echo $footer; ?> 