<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft"><?php echo $column_left; ?></div>
        <div id="widgetright">
        <?php echo $column_right; ?>
       <!-- Widget -->
     	<div id="subwidget" style="min-height:300px;">
			<div id="title_w"><?php echo $heading_title; ?></div>
 			<div id="content">            
              <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="newsletter">
                <div class="content">
                  <table class="form">
                    <tr>
                      <td><?php echo $entry_newsletter; ?></td>
                      <td><?php if ($newsletter) { ?>
                        <input type="radio" name="newsletter" value="1" checked="checked" />
                        <?php echo $text_yes; ?>&nbsp;
                        <input type="radio" name="newsletter" value="0" />
                        <?php echo $text_no; ?>
                        <?php } else { ?>
                        <input type="radio" name="newsletter" value="1" />
                        <?php echo $text_yes; ?>&nbsp;
                        <input type="radio" name="newsletter" value="0" checked="checked" />
                        <?php echo $text_no; ?>
                        <?php } ?></td>
                    </tr>
                  </table>
                </div>
			<div id="regbox-button">
                  <div id="left"><a href="<?php echo $back; ?>" class="buttonlarge"><span><?php echo $button_back; ?></span></a></div>
                  <div id="right"><a onclick="$('#newsletter').submit();" class="buttonlarge"><span><?php echo $button_continue; ?></span></a></div>
                </div>
              </form>
            
            </div>


			
        
        </div>   	
    <!-- Widget -->
        
        </div>
        

  <?php echo $content_bottom; ?>
<?php echo $footer; ?>