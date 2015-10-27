<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft">
    <?php echo $column_left; ?>
    </div>
        <div id="widgetright">
        
        <?php echo $column_right; ?>
       <!-- Widget -->
     	<div id="subwidget" style="min-height:300px;">
			<div id="title_w"><?php echo $text_address_book; ?></div>
              <?php if ($success) { ?>
              <div id="regbox-button"><?php echo $success; ?></div>
              <?php } ?>
              <?php if ($error_warning) { ?>
              <div id="regbox-button"><?php echo $error_warning; ?></div>
              <?php } ?>
 			<div id="content">            
                  <?php foreach ($addresses as $result) { ?>
                  <div class="content">
                    <table style="width: 100%;border-bottom:1px solid #666;">
                      <tr>
                        <td><?php echo $result['address']; ?></td>
                        <td style="text-align: right;width:20%;">
                        <a href="<?php echo $result['update']; ?>" class="buttonlarge"><span><?php echo $button_edit; ?></span></a> &nbsp; 
                        <a href="<?php echo $result['delete']; ?>" class="buttonlarge"><span><?php echo $button_delete; ?></span></a></td>
                      </tr>
                    </table>
                  </div>
                  <?php } ?>
            
            </div>
          <div id="regbox-button">
            <div id="left"><a href="<?php echo $back; ?>" class="buttonlarge"><span><?php echo $button_back; ?></span></a></div>
            <div id="right"><a href="<?php echo $insert; ?>" class="buttonlarge"><span><?php echo $button_new_address; ?></span></a></div>
          </div>

			
        
        </div>   	
    <!-- Widget -->
        
        </div>

  <?php echo $content_bottom; ?>
<?php echo $footer; ?>