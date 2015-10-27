<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft">
    <?php echo $column_left; ?>
    </div>
        <div id="widgetright">
        
        <?php echo $column_right; ?>
       <!-- Widget -->
     	<div id="subwidget" style="min-height:300px;">
			<div id="title_w"><?php echo $heading_title; ?></div>
 			<div id="content" >            
  				<p><?php echo $text_description; ?></p>
                <div id="regbox-button">
    
                      <p><?php echo $text_code; ?><br />
                        <textarea cols="40" rows="5"><?php echo $code; ?></textarea>
                      </p>
                      <p><?php echo $text_generator; ?><br />
                        <input type="text" name="product" value="" />
                      </p>
                      <p><?php echo $text_link; ?><br />
                        <textarea name="link" cols="40" rows="5"></textarea>
                      </p>
                        
                 
                           
                </div>	
                <div id="regbox-button">

                    <div id="right">
                  <a href="<?php echo $continue; ?>" class="buttonlarge">
                  <span><?php echo $button_continue; ?></span></a>

                    </div>
           
                </div>   
                     
            </div>

			
        
        </div>   	
    <!-- Widget -->
        
        </div>
        


  <?php echo $content_bottom; ?>
  <script type="text/javascript"><!--
$('input[name=\'product\']').autocomplete({
	delay: 0,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=affiliate/tracking/autocomplete&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {		
				response($.map(json, function(item) {
					return {
						label: item.name,
						value: item.link
					}
				}));
			}
		});
		
	},
	select: function(event, ui) {
		$('input[name=\'product\']').attr('value', ui.item.label);
		$('textarea[name=\'link\']').attr('value', ui.item.value);
						
		return false;
	}
});
//--></script> 
<?php echo $footer; ?>







