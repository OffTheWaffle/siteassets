<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft"><?php echo $column_left; ?></div>
        <div id="widgetright"style="min-height:300px;">
        <?php echo $column_right; ?>
        <!-- Widget -->
     	<div id="subwidget">
			<div id="title_w"><?php echo $heading_title; ?></div>
 			<div id="content">  
			<div id="regbox-button">
<?php echo $text_error; ?>

       
            </div>
            	                      
			<div id="regbox-button">


 				<div id="right">
          <a href="<?php echo $continue; ?>" class="buttonlarge"><span><?php echo $button_continue; ?></span></a>      
				</div>
       
            </div>
            	
            
            </div>

			
        
        </div>   	
    <!-- Widget -->
       
        </div>

    <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>