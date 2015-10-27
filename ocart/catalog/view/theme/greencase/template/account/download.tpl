<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft"><?php echo $column_left; ?></div>
        <div id="widgetright">
        
        <?php echo $column_right; ?>
           <!-- Widget -->
            <div id="subwidget">
                <div id="title_w"><?php echo $heading_title; ?></div>
                <div id="content">            
                  <?php foreach ($downloads as $download) { ?>
				<div id="regbox-button">    
                <div id="left">
                <b><?php echo $text_order; ?></b> <?php echo $download['order_id']; ?> <br />
                <b><?php echo $text_size; ?></b> <?php echo $download['size']; ?> <br />
                <b><?php echo $text_name; ?></b> <?php echo $download['name']; ?><br />
                <b><?php echo $text_date_added; ?></b> <?php echo $download['date_added']; ?><br />
                <b><?php echo $text_remaining; ?></b> <?php echo $download['remaining']; ?><br />
                </div>
                  <div id="right">
                     <?php if ($download['remaining'] > 0) { ?>
                        <a href="<?php echo $download['href']; ?>" class="buttonlarge"><span><?php echo $text_download; ?></span></a>
                        <?php } ?>
                  </div>            
                 </div> 
                  <?php } ?>
                 <div id="regbox-button"><div id="right"><?php echo $pagination; ?></div></div>
					<div id="regbox-button">
                    <div id="right"><a href="<?php echo $continue; ?>" class="buttonlarge"><span><?php echo $button_continue; ?></span></a></div>
                  </div>
                
                </div>

    
                
            
            </div>   	
        <!-- Widget -->
            
        </div>

  <?php echo $content_bottom; ?>
<?php echo $footer; ?>