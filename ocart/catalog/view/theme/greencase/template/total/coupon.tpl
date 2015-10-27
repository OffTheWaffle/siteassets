
<div>
			<h1><?php echo $heading_title; ?></h1>
  <div id="notiffy-server-discount"></div>
<div id="regbox-button">

  <div class="cart-content" id="coupon" style="float:left;padding-top:3px;"><?php echo $entry_coupon; ?>&nbsp;
    <input type="text" name="coupon" value="<?php echo $coupon; ?>" />	</div>
    &nbsp;
         <a class="buttonsmall" id="button-coupon"><span><?php echo $button_coupon; ?></span></a>    


</div>
<script type="text/javascript"><!--

$('#button-coupon').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=total/coupon/calculate',
		data: $('#coupon :input'),
		dataType: 'json',		
		beforeSend: function() {

			$('#button-coupon').attr('disabled', true);

		},
		complete: function() {
			$('#button-coupon').attr('disabled', false);

		},		
		success: function(json) {
			if (json['error']) {
				$('#notiffy-server-discount').html('<div id="notiffy-server">' + json['error'] + '</div>');
			}
			
			if (json['redirect']) {
				location = json['redirect'];
			}
		}
	});
});
//--></script> 