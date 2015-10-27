<?php echo $header; ?>
<?php echo $content_top; ?>
    <div id="widgetleft">
    
    <?php echo $column_left; ?>
    
    
    </div>
    
        <div id="widgetright">
        
        <?php echo $column_right; ?>
        <!-- Widget -->
     	<div id="subwidget" style="height:300px;">
			<div id="title_w"><?php echo $heading_title; ?></div>
 			<div id="content">         
               <?php if ($error_warning) { ?>
              <div id="notiffy-server"><?php echo $error_warning; ?></div>
              <?php } ?>           
          
            </div>
 			<div id="content">            

			<div id="regbox-button">
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="forgotten">
    <p><?php echo $text_email; ?></p>

    <div class="content">
      <table class="form">
        <tr>
          <td><?php echo $entry_email; ?></td>
          <td><input type="text"  id="text-medium" name="email" value="" /></td>
        </tr>
      </table>
    </div>

  </form>
       
            </div>            
			<div id="regbox-button">
				<div id="left">
			<a class="buttonlarge" href="<?php echo $back; ?>"><span><?php echo $button_back; ?></span></a>
				</div>

 				<div id="right">
                
<a class="buttonlarge" onclick="$('#forgotten').submit();"><span><?php echo $button_continue; ?></span></a>
				</div>
       
            </div>
	
            
            </div>

			
        
        </div>   	
    <!-- Widget -->       
   
        </div>
        
   
  <?php echo $content_bottom; ?>
   
<?php echo $footer; ?>