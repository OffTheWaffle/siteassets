<?php

	//Massive regex check for mobile user agents. Encompasses rpetty much every mobile available

	//Redirects to m.php if true

	session_start();

	if(!isset($_SESSION['vChoice'])){

		$_SESSION['vChoice'] = 0;

		$useragent=$_SERVER['HTTP_USER_AGENT'];

		if(preg_match('/android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|e\-|e\/|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\-|2|g)|yas\-|your|zeto|zte\-/i',substr($useragent,0,4))){

			$_SESSION['vChoice'] = 1;

		}

	}

	

	if(isset($_GET['d'])){

		$_SESSION['vChoice'] = 0;

	}

	

	if($_SESSION['vChoice'] == 1){

		header('Location: m.php');

	}




	

?>



<!DOCTYPE html>

<html xmlns:fb="http://ogp.me/ns/fb#" xmlns:og="http://opengraphprotocol.org/schema/">

<head>


	<meta charset="utf-8">

	<title>Off The Waffle - #WAFFLEGRAM</title>

	<meta name="description" content="">



	<!--favicon stuff-->

	<link rel="apple-touch-icon" href="../favicon.png">

	<link rel="icon" href="../favicon.png">

	<!--[if IE]><link rel="shortcut icon" href="favicon.ico"><![endif]-->

	<!-- or, set /favicon.ico for IE10 win -->

	<meta name="msapplication-TileColor" content="#D83434">

	<meta name="msapplication-TileImage" content="favicon.png">

	<!--end favicon stuff-->



	<link rel="stylesheet" href="../css/style.css">



	<!--slideshow scripts-->

	<link rel="stylesheet" href="../css/nivo-slider.css" type="text/css" />

	<link rel="stylesheet" href="../css/themes/default/default.css" type="text/css" media="screen" />

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" type="text/javascript"></script>

	<script src="../js/jquery.nivo.slider.js" type="text/javascript"></script>

	<script src="../js/jqinstapics.min.js" type="text/javascript"></script>

	<script type="text/javascript">
		var emailMsgTxt = "You're about to send us an email, proceed?";		

		function showHide(e){

			var href = e;

			if(href != "#menuContainer"){

				$('#contentContainer').children().css('display','none'); 

				$(href).css('display','block');

				$('#brownMenuContainer').css('display','none');

				if(href == "#memorabilia"){

					$("#memorabilia").load("memorabilia.php");

				}

				changeNavColor(href);

			}else{

				//var menu = $('#brownMenuContainer');

				toggleDisplay('#brownMenuContainer');

			}

		}

		

		function toggleDisplay(e){

			var ele = $(e);

			if(ele.css('display') == 'none'){

				ele.css('display','block');

			}else{

				ele.css('display','none');
			}

		}

		

		function locationHashChanged() {

			hash = window.location.hash;

			showHide(hash);

		}



		function changeNavColor(e){

			$('nav li').children().css('color','#3B2314');

			$('a[href^="'+e+'"]').css('color','#F16522');

		}

	

		window.onhashchange = locationHashChanged;



		

		$(window).ready(function() {	
				$('#siteLogoFSText').hover(
				  function() {
					$('#siteLogoFSText').prop('src',"../images/siteLogoFSAni.gif");
				  }, function() {
					$('#siteLogoFSText').prop('src',"../images/siteLogoFSText.png")
				  }
				);
				
				
				$("#instagramList").jqinstapics({
				  "user_id": "622496301",
				  "access_token": "622496301.674061d.b21e35b6312041fc8431a5c8a6020a86",
				  "count": 9
				});

                $('#slider').nivoSlider({

					effect: 'fade',

					animSpeed: 400,

					pauseTime: 2500,

					controlNav: false,
					
					pauseOnHover: false,
					
					directionNav: true

                });

				

                $('nav li a').click(function(e){

					var href = $(this).attr('href');

					if(href === "#menuContainer"){

						showHide(href);

					}


				});

				

                $('#locations #downtownMenuButton a').click(function(e){

					var href = $(this).attr('href');

					e.preventDefault();

					toggleDisplay(href);

					$('#downtown').width($('#locationContainer .locationButtons').width());

				});



				$('header #socialButtonsLeft div').click(function(e){

					var id = $(this).attr('id');

					if(id == "fb"){

						$('#twitterIframe').css('display','none');

					}else{

						$('#fbIframe').css('display','none');

					}
					$('#instagramIframe').css('display','none');
					toggleDisplay('#'+id+'Iframe');

					

				});

				
				$('#instagram').click(function(e){

					var id = $(this).attr('id');

						$('#twitterIframe').css('display','none');

						$('#fbIframe').css('display','none');

					toggleDisplay('#'+id+'Iframe');

					

				});
				
				$('#email').click(function(e){

				if (!confirm(emailMsgTxt)) {
					e.preventDefault();
				}

					

				});
				
				$('#mc-embedded-subscribe').click(function(e){

					$("#mc_embed_signup div.mce_inline_error").hide();

				});
				

				var hash = window.location.hash;

				console.log(hash);

				if(hash.length > 0){

					showHide(hash);

					if(history.pushState) {

						history.pushState(null, null, href);

					}

					else {

						location.hash = href;

					}

				}
				

		});



		$(window).resize(function() {

			$('#brownMenuContainer').width($('#container').width());

			$('#downtown').width($('#locationContainer .locationButtons').width());

		});



		$(document).click(function(event) { 

				var id = $(event.target)[0].id;

				if(id!="fb"&&id!="twitter"&&id!="instagram") {

					$('#fbIframe').css('display','none');

					$('#twitterIframe').css('display','none');
					$('#instagramIframe').css('display','none');
				}   

		})
	</script>

	<!--end slideshow scripts-->

</head>

	<body>

		<div id="fb-root"></div>

		<script>

			window.fbAsyncInit = function() {

			FB.init({

			appId : '108251522578665', // App ID

			

			status : true, // check login status

			cookie : true, // enable cookies to allow the server to access the session

			xfbml : true // parse XFBML

			});

			// Additional initialization code here

			};

			// Load the SDK Asynchronously

			(function(d){

			var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];

			if (d.getElementById(id)) {return;}

			js = d.createElement('script'); js.id = id; js.async = true;

			js.src = "//connect.facebook.net/en_US/all.js";

			ref.parentNode.insertBefore(js, ref);

			}(document));

		</script>

		<div id="container">

			<header>

				<div id="socialButtonsLeft">

					<div id="fb"></div><!--fb icon-->

					<div id="twitter"></div><!--twitter icon-->

				</div>



				<!-- <div id="fbIframe">

					<iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Foffthewaffle&amp;width=300&amp;height=558&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=true&amp;show_border=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:300px; height:558px;"></iframe>

				</div> -->

				

				<div id="fbIframe">

					<fb:like-box href="http://www.facebook.com/offthewaffle" width="300" height="558" colorscheme="light" show_faces="true" header="false" stream="true" show_border="false"></fb:like-box>

				</div>



				<!-- <div id="twitterIframe">

					<a class="twitter-timeline" href="https://twitter.com/offthewaffle" data-widget-id="388721547688423424" data-chrome="noborder">Tweets by @offthewaffle</a>

					<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

				</div> -->

				

				<div id="twitterIframe">

				<a class="twitter-timeline" href="https://twitter.com/offthewaffle" data-widget-id="388721547688423424" data-chrome="noborders">Tweets by @offthewaffle</a>

				<script>setTimeout(function() {

					!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');}, 0);

				</script>

				</div>



				<div id="siteLogoFS">	
					<a href="index.php"><img src="../images/siteLogoFSText.png" alt="Site Logo Text" id="siteLogoFSText"></a>
				</div>

					<div id="socialButtonsRight">
						<a id="emailLink" href="mailto:holler@offthewaffle.com"><div id="email"></div></a>
						<div id="instagram"></div>
					</div>
				
				<div id="instagramIframe">
				<span class="ig-follow" data-id="32ae1ad2" data-count="true" data-size="large" data-username="true"></span>
<script>(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.src="http://instagramfollowbutton.com/components/instagram/v2/js/ig-follow.js";s.parentNode.insertBefore(g,s);}(document,"script"));</script>
<ul id="instagramList"></ul>
</div>

			<div id="navContainer">

				<nav>

					<ul>

						<li id="L_Mustache"></li>

						<li><a href="../index.php#ourStory">Our Story</a></li>

						<li><a href="#menuContainer">Menu</a></li>

						<li><a href="../index.php#locations">Locations</a></li>

						<li><a href="../index.php#memorabilia">Memorabilia</a></li>

						<li id="R_Mustache"></li>

					</ul>

				</nav>

			</div>



			<div id="brownMenuContainer">

				<div id="triangle"></div>

				<ul id="brownSubmenu">

					<li><a href="../pdfs/South_Eugene_Menu.pdf" target="_blank">SOUTH EUGENE (pdf)</a></li>


					<li><a href="../pdfs/Downtown_Eugene_Menu.pdf" target="_blank">DOWNTOWN EUGENE (pdf)</a></li>

					<li><a href="../pdfs/SE_Portland_Menu.pdf" target="_blank">SE PORTLAND (pdf)</a></li>

				</ul>

			</div>



			<div id="contentContainer">

				<div id="sliderContainer">

					<img src="wafflegram.jpg" style="max-width: 100%;margin-bottom: -0.4%;"/>

				</div><!--end sliderContainer-->



			</div>

			<footer>
			
			
			
				<div class="chimp"><!-- Begin MailChimp Signup Form -->
					<div id="mc_embed_signup">
						<form action="//offthewaffle.us10.list-manage.com/subscribe/post?u=65d84e64efe79e962d4d622bf&amp;id=9749c4d182" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
						<div id="mc_embed_signup_scroll">

						<div class="mc-field-group">
						Join our Waffle Community!
						<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL" placeholder="Email address" required>
						<input type="submit" value="Go" name="subscribe" id="mc-embedded-subscribe" class="button">
						<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
						
						<div style="clear:both"></div>
						</div>
						<div style="position: absolute; left: -5000px;"><input type="text" name="b_65d84e64efe79e962d4d622bf_9749c4d182" tabindex="-1" value=""></div>
						
						</div>
						</form>
						</div>
<div id="mce-responses">
						<div class="response" id="mce-error-response" style="display:none"></div>
						<div class="response" id="mce-success-response" style="display:none"></div>
						</div>
						<!--End mc_embed_signup--></div>
						<script type='text/javascript' src='//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js'></script><script type='text/javascript'>(function($) {window.fnames = new Array(); window.ftypes = new Array();fnames[0]='EMAIL';ftypes[0]='email';fnames[1]='MMERGE1';ftypes[1]='dropdown';}(jQuery));var $mcj = jQuery.noConflict(true);</script>
						<div style="clear:both"></div>
						
			</footer>

		</div>

		<div id="subFooter"><a href="m.php">Switch to mobile site</a></div>

	









	<!--Start of GoogleAnalytics code-->



<script>

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){

  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),

  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)

  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');



  ga('create', 'UA-45530294-1', 'offthewaffle.com');

  ga('send', 'pageview');



</script>



	<!--End of GoogleAnalytics code-->



	</body>

</html>