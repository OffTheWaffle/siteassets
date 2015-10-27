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
              <?php if ($error_warning) { ?>
              <div id="regbox-button"><?php echo $error_warning; ?></div>
              <?php } ?>
 			<div id="content">            
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="edit">
    <h2><?php echo $text_your_details; ?></h2>
<div id="regbox-button">   
    <div class="content">
      <table class="form">
        <tr>
          <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
          <td><input type="text" id="text-medium" name="firstname" value="<?php echo $firstname; ?>" />
            <?php if ($error_firstname) { ?>
            <span class="error"><?php echo $error_firstname; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
          <td><input type="text" id="text-medium" name="lastname" value="<?php echo $lastname; ?>" />
            <?php if ($error_lastname) { ?>
            <span class="error"><?php echo $error_lastname; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_email; ?></td>
          <td><input type="text" id="text-medium" name="email" value="<?php echo $email; ?>" />
            <?php if ($error_email) { ?>
            <span class="error"><?php echo $error_email; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
          <td><input type="text" id="text-medium" name="telephone" value="<?php echo $telephone; ?>" />
            <?php if ($error_telephone) { ?>
            <span class="error"><?php echo $error_telephone; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><?php echo $entry_fax; ?></td>
          <td><input type="text" id="text-medium" name="fax" value="<?php echo $fax; ?>" /></td>
        </tr>
      </table>
    </div>
   </div>  
    		<div id="regbox-button">
  				<div id="left">
                

                 <a href="<?php echo $back; ?>" class="buttonlarge"><span><?php echo $button_back; ?></span></a>
            
				</div>            
 				<div id="right">
            <a onclick="$('#edit').submit();" class="buttonlarge"><span><?php echo $button_continue; ?></span></a>
				</div>

      
            </div>    

  </form>
	
            
            </div>


			
        
        </div>   	
    <!-- Widget -->
        
        </div>
        


  <?php echo $content_bottom; ?>
<?php echo $footer; ?>