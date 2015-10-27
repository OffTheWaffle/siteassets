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
                      <table class="form">
                        <tr>
                          <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
                          <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
                            <?php if ($error_firstname) { ?>
                            <span class="error"><?php echo $error_firstname; ?></span>
                            <?php } ?></td>
                        </tr>
                        <tr>
                          <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
                          <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
                            <?php if ($error_lastname) { ?>
                            <span class="error"><?php echo $error_lastname; ?></span>
                            <?php } ?></td>
                        </tr>
                        <tr>
                          <td><span class="required">*</span> <?php echo $entry_email; ?></td>
                          <td><input type="text" name="email" value="<?php echo $email; ?>" />
                            <?php if ($error_email) { ?>
                            <span class="error"><?php echo $error_email; ?></span>
                            <?php } ?></td>
                        </tr>
                        <tr>
                          <td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
                          <td><input type="text" name="telephone" value="<?php echo $telephone; ?>" />
                            <?php if ($error_telephone) { ?>
                            <span class="error"><?php echo $error_telephone; ?></span>
                            <?php } ?></td>
                        </tr>
                        <tr>
                          <td><?php echo $entry_fax; ?></td>
                          <td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
                        </tr>
                      </table>
                </div>  
                <h2><?php echo $text_your_address; ?></h2>
                <div id="regbox-button">
                  <table class="form">
                    <tr>
                      <td><?php echo $entry_company; ?></td>
                      <td><input type="text" name="company" value="<?php echo $company; ?>" /></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_website; ?></td>
                      <td><input type="text" name="website" value="<?php echo $website; ?>" /></td>
                    </tr>
                    <tr>
                      <td><span class="required">*</span> <?php echo $entry_address_1; ?></td>
                      <td><input type="text" name="address_1" value="<?php echo $address_1; ?>" />
                        <?php if ($error_address_1) { ?>
                        <span class="error"><?php echo $error_address_1; ?></span>
                        <?php } ?></td>
                    </tr>
                    <tr>
                      <td><?php echo $entry_address_2; ?></td>
                      <td><input type="text" name="address_2" value="<?php echo $address_2; ?>" /></td>
                    </tr>
                    <tr>
                      <td><span class="required">*</span> <?php echo $entry_city; ?></td>
                      <td><input type="text" name="city" value="<?php echo $city; ?>" />
                        <?php if ($error_city) { ?>
                        <span class="error"><?php echo $error_city; ?></span>
                        <?php } ?></td>
                    </tr>
                    <tr>
                      <td><span class="required">*</span> <?php echo $entry_postcode; ?></td>
                      <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" />
                        <?php if ($error_postcode) { ?>
                        <span class="error"><?php echo $error_postcode; ?></span>
                        <?php } ?></td>
                    </tr>
                    <tr>
                      <td><span class="required">*</span> <?php echo $entry_country; ?></td>
                      <td><select name="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=affiliate/edit/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>');">
                          <option value="false"><?php echo $text_select; ?></option>
                          <?php foreach ($countries as $country) { ?>
                          <?php if ($country['country_id'] == $country_id) { ?>
                          <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                          <?php } ?>
                          <?php } ?>
                        </select>
                        <?php if ($error_country) { ?>
                        <span class="error"><?php echo $error_country; ?></span>
                        <?php } ?></td>
                    </tr>
                    <tr>
                      <td><span class="required">*</span> <?php echo $entry_zone; ?></td>
                      <td><select name="zone_id">
                        </select>
                        <?php if ($error_zone) { ?>
                        <span class="error"><?php echo $error_zone; ?></span>
                        <?php } ?></td>
                    </tr>
                  </table>
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
  
<script type="text/javascript"><!--
$('select[name=\'zone_id\']').load('index.php?route=affiliate/edit/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
//--></script> 
<?php echo $footer; ?>
