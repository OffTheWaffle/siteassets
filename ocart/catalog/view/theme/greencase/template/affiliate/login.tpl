<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft">
    <?php echo $column_left; ?>
    
    </div>
        <div id="widgetright">
        
        <?php echo $column_right; ?>
       <!-- Widget -->
     	<div id="subwidget">
			<div id="title_w"><?php echo $heading_title; ?></div>
 			<div id="content">
            
              <?php if ($success) { ?>
  <div id="regbox-button"><?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div id="regbox-button"><?php echo $error_warning; ?></div>
  <?php } ?>            
			
	
            
            </div>
 			<div id="content">            
			
            
            	<div id="sub-left">
                
               <h1><?php echo $text_new_affiliate; ?></h1><br />
               		<div id="div-box">
					 <p><?php echo $text_register_account; ?></p>
       				<p><a class="buttonlarge" href="<?php echo $register; ?>"><span><?php echo $button_continue; ?></span></a> </p>
           			 </div>
               
                </div>
                
            	<div id="sub-right">
                
                <h1><?php echo $text_returning_affiliate; ?></h1><br />
               		<div id="div-box">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="login">
        <div class="content">
          <p><?php echo $text_i_am_returning_affiliate; ?></p>
          <b><?php echo $entry_email; ?></b><br />
          <input type="text" name="email" value="" />
          <br />
          <br />
          <b><?php echo $entry_password; ?></b><br />
          <input type="password" name="password" value="" />
          <br />
          <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
          <br />
          <a class="buttonlarge" onclick="$('#login').submit();"><span><?php echo $button_login; ?></span></a>

          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        </div>
      </form>

           			 </div>                
                
                </div>
	
            
            </div>
		
        
        </div>   	
    <!-- Widget -->        
        
        
        
        </div>
        
        
  <?php echo $content_bottom; ?>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script>   
<?php echo $footer; ?>



