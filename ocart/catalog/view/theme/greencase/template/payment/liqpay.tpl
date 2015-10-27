<form action="<?php echo $action; ?>" method="post" id="payment">
  <input type="hidden" name="operation_xml" value="<?php echo $xml; ?>">
  <input type="hidden" name="signature" value="<?php echo $signature; ?>">
  <div class="buttons">
    <div id="right"><a onclick="$('#payment').submit();" class="buttonlarge"><span><?php echo $button_confirm; ?></span></a></div>
  </div>
</form>
