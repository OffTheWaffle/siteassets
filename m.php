<?php

	session_start();

	

	$_SESSION['vChoice'] = 1;

	

	if($_SESSION['vChoice'] == 0){
	

		header('Location: index.php');

	}

	

	date_default_timezone_set('America/Los_Angeles');



	// function checkDowntownOpen() {

		// $hour = date('H');
		// $day = date('w');

		// $isOpen = false;
		
		// if($day == 0){ // Sunday
			// if($hour >= 7 && $hour < 14){
				// $isOpen = true;
			// }
		// }else{
			// if($hour >= 7 && $hour < 21){
				// $isOpen = true;
			// }
		// }	
		// return $isOpen;
	// }



	// function checkSouthOpen(){

		// $hour = date('H');



		// $isOpen = false;



		// if($hour >= 8 && $hour < 14){

			// $isOpen = true;

		// }



		// return $isOpen;



	// }
	
	// function checkSEPortlandOpen(){
		
		// $hour = date('H');

		// $isOpen = false;
		
		// if($hour >= 8 && $hour < 20){
			// $isOpen = true;
		// }
		
		// return $isOpen;
	// }

?>



<!DOCTYPE html>

<html>

<head>

	<meta charset="utf-8"/>

	<title>Off The Waffle</title>

	<meta name="description" content=""/>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>

	<!--slideshow scripts-->

	<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" />

	<link rel="stylesheet" href="css/themes/default/default.css" type="text/css" media="screen" />

	<link rel="stylesheet" media="screen,projection" href="css/ui.totop.css" />

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" type="text/javascript"></script>

	<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

	<script src="js/jquery.mobile.custom.min.js" type="text/javascript"></script>

	<script type="text/javascript">
		var emailMsgTxt = "You're about to send us an email, proceed?";	
		$(window).load(function() {	
				$('#email').click(function(e){

				if (!confirm(emailMsgTxt)) {
					e.preventDefault();
				}

					

				});
            if(jQuery.support.touch){

 

                    $('#slider').nivoSlider({

                        effect: 'fade',

                        animSpeed: 600,

                        pauseTime: 2350,

						pauseOnHover:false,

						controlNav: false,
					
						//Remove this option for old slideshow
						directionNav: false

                    });

 

                    $('a.nivo-nextNav').css('visibility', 'hidden');

                    $('a.nivo-prevNav').css('visibility', 'hidden');

 

                    $('#slider').bind( 'swipeleft', function( e ) {

                        $('a.nivo-nextNav').trigger('click');

                        e.stopImmediatePropagation();

                        return false; }     

                    );  

 

                    $('#slider').bind( 'swiperight', function( e ) {

                        $('a.nivo-prevNav').trigger('click');

                        e.stopImmediatePropagation();

                        return false; } 

 

                    ); 

            }

 

            else { 

 

                    $('#slider').nivoSlider({

                         effect: 'fade',

                        animSpeed: 250,

                        pauseTime: 5000,

						controlNav: false 

                    });

 

                }

 

		});

	</script>

	<!--end slideshow scripts-->



	<link rel="stylesheet" media="screen and (max-width: 480px)" href="css/style_mobile.css"/>

	<link rel="stylesheet" media="screen and (min-width: 481px)" href="css/style_mobile.css"/>

	

	<!--jQuery Accordion-->

	<script type="text/javascript">



		function scrollToAnchor(aid){

   			 var aTag = $("a[href='"+ aid +"']");

    		$('html,body').animate({scrollTop: aTag.offset().top},'slow');

		}





		$(document).ready(function(){

				$('#accordion .head').click(function(e){

					e.preventDefault();

					var ourAnchor = $(this);

					$(this).closest('li').find('.content').not(':animated').slideToggle("slow", function(){



						scrollToAnchor(ourAnchor.attr('href'));



					});

					$(this).closest('li').siblings('li').find('.content').slideUp(); 

				});





				$('#subAccordion .subHead').click(function(e){

					e.preventDefault();

					var ourAnchor = $(this);

					$(this).closest('li').find('.subContent').not(':animated').slideToggle("slow", function(){



						scrollToAnchor(ourAnchor.attr('href'));



					});

					$(this).closest('li').siblings('li').find('.subContent').slideUp(); 

				});

			}) //end of document.ready function







	</script>

	<!--end jQuery Accordion-->







	

</head>



<body>



<div id="fb-root"></div>

<script>(function(d, s, id) {

  var js, fjs = d.getElementsByTagName(s)[0];

  if (d.getElementById(id)) return;

  js = d.createElement(s); js.id = id;

  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";

  fjs.parentNode.insertBefore(js, fjs);

}(document, 'script', 'facebook-jssdk'));</script>



	<a href="#skipToContent" style="display:none;">Skip to Content</a>





	<div id="content">

		<header>

			<!--alt= is important so that 1) if the image doesnt display you will still be able to see precicely what is not displaying and b) it is accessible for the blind-->

			<img src="images/siteLogoMobile.png"  alt="Site logo" id="siteLogo" />

			

		</header>

		<!-- <section id="slideShow">

			<img src="images/tmpslideShow.png" id="slideShowImg" alt="Slide Show" />

		</section> -->

		<div class="slider-wrapper theme-default"> 

					<div class="ribbon"></div> 

		<div id="slider" class="nivoSlider">
	    	<img src="images/slideShowPhotos/1.jpg" alt="1" title=""/>

	    	<img src="images/slideShowPhotos/2.jpg" alt="2" title=""/>

	    	<img src="images/slideShowPhotos/3.jpg" alt="3" title=""/>			
	

	    	<img src="images/slideShowPhotos/4.jpg" alt="4" title=""/>



	    	<!-- <img src="images/slide3.jpg" alt="" title="This is an example 					of a caption" />

			<img src="images/slide4.jpg" alt="" /> -->
			
		</div>

		</div>

		<!--use this in the future when you want to link actual links to the menu item-->

		<!-- <div id="htmlcaption" class="nivo-html-caption">

			<strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>.

		</div> -->

		<ul id="accordion">

			<li><!--locations contact li-->

				<a href="locations" class="head">LOCATIONS</a>

					<div class="content">

						<div class="row"><!--first row-->

							<div class="column1"><!--first column-->

								<a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=840+Willamette+Street,+Eugene,+OR&amp;aq=0&amp;oq=840+Willamette+Street,+Eugene,+OR&amp;sll=44.030948,-123.091231&amp;sspn=0.008377,0.021136&amp;ie=UTF8&amp;hq=&amp;hnear=840+Willamette+St,+Eugene,+Oregon+97401&amp;t=m&amp;ll=44.05046,-123.092752&amp;spn=0.004318,0.007918&amp;z=16&amp;iwloc=A"><img src="images/directionsIcon.png" alt="Directions to Off The Waffle Downtown" /></a>

							</div><!--end first column-->

							<div class="column2"><!--second column-->

							<a id="skipToContent"></a>

								<div class="locationHeading">

									<p>Downtown Eugene</p></div>

								<div class="locationBody">

								<p>840 Willamette Street.</p>

								<p><a>541.654.4318</a></p>

								<br/>

								<p>8am-2pm Daily </p>


								</div><!--end second column-->

							</div><!--end second column-->

							<div class="column3"><!--third column-->

								<a href="tel:541.654.4318"><img src="images/callIcon.png" alt="Call Off The Waffle Downtown" /></a>

							</div><!--end third column-->

						</div><!--end first row-->




						<div class="row"><!--third row-->

							<div class="column1"><!--first column-->

								<a href="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=2540+Willamette+Street,+Eugene,+OR&amp;aq=0&amp;oq=2540+Willamette+Street,+Eugene,+OR&amp;sll=44.050465,-123.092751&amp;sspn=0.008374,0.021136&amp;ie=UTF8&amp;hq=&amp;hnear=2540+Willamette+St,+Eugene,+Oregon+97405&amp;t=m&amp;ll=44.030948,-123.091228&amp;spn=0.00432,0.007918&amp;z=16&amp;iwloc=A&amp;output=embed"><img src="images/directionsIcon.png" alt="Directions to Off The Waffle In South Eugene" /></a>

							</div><!--end first column-->

							<div class="column2"><!--second column-->

								<div class="locationHeading">

								<p>South Eugene</p></div>

								<div class="locationBody">

								<p>2540 Willamette Street.</p>

								<p><a>541.515.6926</a></p>

								<br/>

								<p>8am-2pm Daily</p>


								</div>

							</div><!--end second column-->

							<div class="column3"><!--third column-->

								<a href="tel:541.515.6926"><img src="images/callIcon.png" alt="Call Off The Waffle In South Eugene"/></a>

							</div><!--end third column-->

						</div><!--end third row-->

<div class="row"><!--third row-->

							<div class="column1"><!--first column-->

								<a href="https://www.google.com/maps/dir//2601+SE+Clinton+St,+Portland,+OR+97202/@45.503733,-122.639479,17z/data=!4m13!1m4!3m3!1s0x5495a083cf38e5a1:0x87dbd327ef317cae!2s2601+SE+Clinton+St,+Portland,+OR+97202!3b1!4m7!1m0!1m5!1m1!1s0x5495a083cf38e5a1:0x87dbd327ef317cae!2m2!1d-122.639479!2d45.503733"><img src="images/directionsIcon.png" alt="Directions to Off The Waffle In SE Portland" /></a>

							</div><!--end first column-->

							<div class="column2"><!--second column-->

								<div class="locationHeading">

								<p>SE Portland</p></div>

								<div class="locationBody">

								<p>2601 Clinton Street</p>

								<p><a>503.946.1608</a></p>

								<br/>

								<p>8am-2pm Daily</p>
								

								</div>

							</div><!--end second column-->

							<div class="column3"><!--third column-->

								<a href="tel:503.946.1608"><img src="images/callIcon.png" alt="Call Off The Waffle In South Eugene"/></a>

							</div><!--end third column-->

						</div><!--end third row-->

					</div><!--end content div-->



			</li><!--end locations contact li-->



			<li>

				<a href="story" class="head">OUR STORY</a>

				<div class="content">

				<p>We (brothers Dave and Omer) grew up traveling around the world, and as kids we spent time in Belgium. One of Omer’s first memories is of receiving a delicious Liège waffle from his kindergarten teacher in Brussels after a full day free of him causing a ruckus. Since our departure from Belgium, we obsessed over Liège waffles and the possibility of making our own some day. </p>

				
				<p> In 2009, we spent time zig-zagging through Latin America and at some point realized that we would soon run out of cash, so in an effort to save up for another round of traveling we flew to San Francisco to begin looking for work. We bought a Honda Prelude for a $1,000 and started driving north. We really had nowhere in mind but our gut (our guts?) told us to stick with where we liked and that was the Northwest. </p>

				<p>At some point we found ourselves in Eugene and immediately fell in love with the area and the community. 

				We started experimenting with our waffle recipe and shortly thereafter, we settled down in a little orange-and-yellow-painted house in the West Jefferson neighborhood. It was out of this house that we finally opened the original Off The Waffle. We spent about a month crafting signs, spreading the word, preparing the shop and developing the recipe (which is always in the works). </p>
				 <p> The shop eventually got so busy that we found ourselves with no option but to look for a larger place to serve waffles. It wasn’t long until we were joined in our waffle shenanigans by Shimon (our dad and longtime waffle enthusiast) and Vered, our little sis. </p>

				<p>Along with our crew of world-class waffle bakers, we continue to serve waffles that make you want to hug someone. Nevertheless, we are still just babies in the restaurant world, and we do not claim to have it all figured out. For this reason, it is crucial that you give us as much feedback as you can to help us make more waffle lovers happy. Feel free to contact us at any time 
by phone or email (holler@offthewaffle.com)
Thanks, and enjoy the ride! 
</p>

				<p id="theWaffleFamily">-the waffle family</p>

				</div>
  




			</li>



			<li>

				<a href="menu" class="head">MENU</a>

				<div class="content">

					<ul id="subAccordion">

						

						<li>

							<a href="menuPdf" class="subHead">DOWNLOAD FULL MENU (PDF)</a>

								<div class="subContent">

									    <div class="menuPDFLinks"><a href="pdfs/Downtown_Eugene_Menu.pdf">Downtown Eugene Menu</a></div>


									    <div class="menuPDFLinks"><a href="pdfs/South_Eugene_Menu.pdf">South Eugene Menu</a></div>

									    <div class="menuPDFLinks"><a href="pdfs/SE_Portland_Menu.pdf">SE Portland Menu</a></div>


								</div>

						</li>



					



					</ul>

				</div><!--end content div-->

			</li>

		<!--end accordian ul--></ul>







		<div id="email">

			<a href="mailto:holler@offthewaffle.com">DROP US A LINE!</a>

		</div>

		



		<footer></footer>

			<div class="chimp"><!-- Begin MailChimp Signup Form -->
<link href="//cdn-images.mailchimp.com/embedcode/classic-081711.css" rel="stylesheet" type="text/css">
<style type="text/css">
	#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; }
	/* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
	   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
</style>
<div id="mc_embed_signup">
<form action="//offthewaffle.us10.list-manage.com/subscribe/post?u=65d84e64efe79e962d4d622bf&amp;id=9749c4d182" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
    <div id="mc_embed_signup_scroll">
	<h2>Join our waffle community</h2>
<div class="mc-field-group">
	<label for="mce-EMAIL">Email Address </label>
	<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL">
</div>
	<div id="mce-responses" class="clear">
		<div class="response" id="mce-error-response" style="display:none"></div>
		<div class="response" id="mce-success-response" style="display:none"></div>
	</div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
    <div style="position: absolute; left: -5000px;"><input type="text" name="b_65d84e64efe79e962d4d622bf_9749c4d182" tabindex="-1" value=""></div>
    <div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
    </div>
</form>
</div>
<script type='text/javascript' src='//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js'></script><script type='text/javascript'>(function($) {window.fnames = new Array(); window.ftypes = new Array();fnames[0]='EMAIL';ftypes[0]='email';fnames[1]='MMERGE1';ftypes[1]='dropdown';}(jQuery));var $mcj = jQuery.noConflict(true);</script>
<!--End mc_embed_signup--></div>

		<div id="subFooter"><a href="index.php?d=1">Switch to Desktop</a></div>

		<div id="socialBar">

			<!--facebook like button: cut this code and paste it into wherever you want it to display, while leaving the main code which is located at the beginning of the body container-->

			<div style="display:inline-block;">
<div class="fb-like" data-href="https://www.facebook.com/offthewaffle"
data-width="250" data-height="" data-colorscheme="light"
data-layout="button_count" data-action="like" data-show-faces="true"
data-send="false"></div>
</div>



			<!--twitter-->

			<a href="https://twitter.com/offthewaffle" class="twitter-follow-button" data-show-count="false" data-show-screen-name="false">Follow @offthewaffle</a>

			<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>

		</div><!--end socialBar-->

	</div>

	

	<script src="js/jquery.ui.totop.js" type="text/javascript"></script>

	<!-- Starting the plugin -->

	<script type="text/javascript">

		$(document).ready(function() {

			$().UItoTop();

		});

	</script>

</body>

</html>





