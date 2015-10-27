<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft"><?php echo $column_left; ?></div>
        <div id="widgetright">
        <?php echo $column_right; ?>
       <!-- Widget -->
     	<div id="subwidget" style="min-height:300px;">
			<div id="title_w"><?php echo $heading_title; ?></div>
 			<div id="content">            
  <p><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>
                 <table class="list" width="100%">
                    <thead>
                      <tr>
                        <td class="left"><?php echo $column_date_added; ?></td>
                        <td class="left"><?php echo $column_description; ?></td>
                        <td class="right"><?php echo $column_points; ?></td>
                      </tr>
                    </thead>
                    <tbody>
                      <?php if ($rewards) { ?>
                      <?php foreach ($rewards  as $reward) { ?>
                      <tr>
                        <td class="left"><?php echo $reward['date_added']; ?></td>
                        <td class="left"><?php if ($reward['order_id']) { ?>
                          <a href="<?php echo $reward['href']; ?>"><?php echo $reward['description']; ?></a>
                          <?php } else { ?>
                          <?php echo $reward['description']; ?>
                          <?php } ?></td>
                        <td class="right"><?php echo $reward['points']; ?></td>
                      </tr>
                      <?php } ?>
                      <?php } else { ?>
                      <tr>
                        <td class="center" colspan="5"><?php echo $text_empty; ?></td>
                      </tr>
                      <?php } ?>
                    </tbody>
                  </table>            
            </div>
            <div id="regbox-button"><?php echo $pagination; ?></div>
            <div id="regbox-button">
                <div id="right">
                <a href="<?php echo $continue; ?>" class="buttonlarge"><span><?php echo $button_continue; ?></span></a>
                </div>
            </div>
        
        </div>   	
    <!-- Widget -->
        
        </div>


 

  <?php echo $content_bottom; ?>
<?php echo $footer; ?>