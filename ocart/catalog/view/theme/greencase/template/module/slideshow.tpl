        <!-- Widget -->
     	<div id="subwidget">

 			<div id="content">
 
              <!-- Feature Img -->                         
                <div id="feature-img">            
					<div id="slide-show-img"  style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
                     </div>

       				 <a class="buttonlarge" id="slidwshowb"><span><<</span></a>                   

       				 <a class="buttonlarge" id="slidwshown"><span>>></span></a>                   
                   
                 
                      <!-- Slide Img --> 
                	<div id="slide-list-img">
                        <?php foreach ($banners as $banner) { ?>
                        <?php if ($banner['link']) { ?>
                        <a href="<?php echo $banner['link']; ?>"><img style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
                        <?php } else { ?>
                        <img src="<?php echo $banner['image']; ?>" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;" alt="<?php echo $banner['title']; ?>" />
                        <?php } ?>
                        <?php } ?>

                    </div>
                       <!-- Slide Img  -->    
                       
             	</div>             			
          <!-- Feature Img -->   
          
           </div>

        </div>   	
    <!-- Widget -->







