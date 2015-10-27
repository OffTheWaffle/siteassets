<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft"><?php echo $column_left; ?></div>
        <div id="widgetright">
        
        <?php echo $column_right; ?>
        <!-- Widget -->
     	<div id="subwidget">
			<div id="title_w"><?php echo $heading_title; ?></div>
 			<div id="content"> 
           <p><?php echo $text_balance; ?><b> <?php echo $balance; ?></b>.</p>
  
 			<div id="regbox-button">
                  <table class="list" width="100%">
                    <thead>
                      <tr>
                        <td class="left"><?php echo $column_date_added; ?></td>
                        <td class="left"><?php echo $column_description; ?></td>
                        <td class="right"><?php echo $column_amount; ?></td>
                      </tr>
                    </thead>
                    <tbody>
                      <?php if ($transactions) { ?>
                      <?php foreach ($transactions  as $transaction) { ?>
                      <tr>
                        <td class="left"><?php echo $transaction['date_added']; ?></td>
                        <td class="left"><?php echo $transaction['description']; ?></td>
                        <td class="right"><?php echo $transaction['amount']; ?></td>
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

