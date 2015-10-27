<div>
  <h1><?php echo $heading_title; ?></h1>
    <div id="notiffy-server-reward"></div>
<div id="regbox-button">    

  	<div class="cart-content" id="reward" style="float:left;padding-top:3px;"><?php echo $entry_reward; ?>&nbsp;
  <input type="text" name="reward" value="<?php echo $reward; ?>" />
  &nbsp;
   <a class="buttonsmall" id="button-reward"><span><?php echo $button_reward; ?>/span></a> 

	</div>
</div>    
<script type="text/javascript"><!--
$('#button-reward').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=total/reward/calculate',
		data: $('#reward :input'),
		dataType: 'json',		
		beforeSend: function() {

			$('#button-reward').attr('disabled', true);

		},
		complete: function() {
			$('#button-reward').attr('disabled', false);

		},		
		success: function(json) {
			if (json['error']) {
				$('#notiffy-server-reward').html('<div id="notiffy-server">' + json['error'] + '</div>');
			}
			
			if (json['redirect']) {
				location = json['redirect'];
			}
		}
	});
});
//--></script> 
