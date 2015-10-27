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

                <div id="regbox-button">
                  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="password">
                
                    <div class="content">
                      <table class="form">
                        <tr>
                          <td><span class="required">*</span> <?php echo $entry_password; ?></td>
                          <td><input type="password" id="text-medium" name="password" value="<?php echo $password; ?>" />
                            <?php if ($error_password) { ?>
                            <span class="error"><?php echo $error_password; ?></span>
                            <?php } ?></td>
                        </tr>
                        <tr>
                          <td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
                          <td><input type="password" id="text-medium" name="confirm" value="<?php echo $confirm; ?>" />
                            <?php if ($error_confirm) { ?>
                            <span class="error"><?php echo $error_confirm; ?></span>
                            <?php } ?></td>
                        </tr>
                      </table>
                    </div>
                    
    
                 
                           
                </div>	
                <div id="regbox-button">
                    <div id="left">
                   <a href="<?php echo $back; ?>" class="buttonlarge">
                   <span><?php echo $button_back; ?></span></a>
                    </div>
    
                    <div id="right">
                  <a onclick="$('#password').submit();" class="buttonlarge">
                  <span><?php echo $button_continue; ?></span></a>

                    </div>
           
                </div>   
                 </form>         
            </div>

			
        
        </div>   	
    <!-- Widget -->
        
        </div>
        

  <?php echo $content_bottom; ?>
<?php echo $footer; ?>