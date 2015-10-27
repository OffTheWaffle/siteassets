<div>
  <h1><?php echo $heading_title; ?></h1>
    <div id="notiffy-server-voucher"></div>
<div id="regbox-button">    
  	<div class="cart-content" id="voucher" style="float:left;padding-top:3px;"><?php echo $entry_voucher; ?>&nbsp;
    <input type="text" name="voucher" value="<?php echo $voucher; ?>" /></div>
    
    &nbsp;
     <a class="buttonsmall" id="button-voucher"><span><?php echo $button_voucher; ?></span></a>  

	
</div>
<script type="text/javascript"><!--

$('#button-voucher').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=total/voucher/calculate',
		data: $('#voucher :input'),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-voucher').attr('disabled', true);

		},
		complete: function() {
			$('#button-voucher').attr('disabled', false);

		},		
		success: function(json) {
			if (json['error']) {
				$('#notiffy-server-voucher').html('<div id="notiffy-server">' + json['error'] + '</div>');
			}
			
			if (json['redirect']) {
				location = json['redirect'];
			}
		}
	});
});
//--></script> 