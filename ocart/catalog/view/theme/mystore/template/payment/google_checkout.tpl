<form action="<?php echo $action; ?>" method="post">
  <input type="hidden" name="cart" value="<?php echo $cart; ?>">
  <input type="hidden" name="signature" value="<?php echo $signature; ?>">
  <div class="buttons">
    <div class="right">
        <div class="buttn_log"><input type="submit" value="<?php echo $button_confirm; ?>" class="button" /></div>
    </div>
  </div>
</form>
