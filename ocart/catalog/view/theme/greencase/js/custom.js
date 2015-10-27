$("document").ready(function(){
//alert($("ul li").children().next().html()	);
// ***************   jM Feature Image 	***************	


if($("#feature-img").length > 0)
{
	$("#slide-list-img").hide();
	var slide= $("#slide-list-img a")[0] ; 
	$("#slide-show-img").html(slide);
	
	$("#feature-img #slidwshowb").css({
						position:'absolute',
	
						left:$("#slide-show-img").offset().left + 'px',												
						top:$("#slide-show-img").offset().top+ $("#slide-show-img").height()/3 + 'px'
	
									});
	$("#feature-img #slidwshown").css({
						position:'absolute',
	
						left:$("#slide-show-img").offset().left + $("#slide-show-img a").width() - 55 + 'px',												
						top:$("#slide-show-img").offset().top+ $("#slide-show-img").height()/3 + 'px'
						
									});
	

		
	$("#slidwshown").bind("click",function(){
										   
	
	var data=$("#slide-show-img").html(); 
	
		$("#slide-list-img").append(data);	
		
	var slide=	$("#slide-list-img a")[0] ; 
		$("#slide-show-img").html(slide).children('a').hide();
		$("#slide-show-img a").fadeIn("slow");
		
	
										  
										  });
	$("#slidwshowb").bind("click",function(){
					   
	var numslide=$("#slide-list-img a").size();
	var slide=	$("#slide-list-img a")[numslide-1]; 
	var data= $("#slide-show-img").html(); 
		$("#slide-list-img").prepend(data);								  
		$("#slide-show-img").html(slide).children('a').hide();						  
		$("#slide-show-img a").fadeIn("slow");					  
										  
										  });
}



// ***************   jM Feature Image 	***************	


// ***************   jM Menu 	***************		
if($("#jm-menu").length > 0)
{
	
	$("#jm-menu ul li").children().next().hide();
	
	$("#jm-menu ul li").bind("mouseover",function(){
	//alert($(this).width()	);							  
	$(this).children().next().css({
									   
		position:'absolute',
		left: $(this).width() + $(this).children().offset().left  + 'px',
		top: $(this).offset().top + 5 + 'px',
		width:	$(this).width() + 40+  'px'						   
									   
						   });	
	$(this).children().next().children().children().next().css({
									   
		position:'absolute',
		left: $(this).width() + $(this).children().offset().left - 40  + 'px',
		top: '4px',
		width:	  $(this).width() + 40+  'px'							   
									   
						   });	
	
	$(this).children().css({
	color:'#fff'
	});	
	
	$(this).children().next().show();								
												  });
	
	$("#jm-menu ul li").bind("mouseout",function(){
	$(this).children().css({
	color:'#84db10'
	 });
	$(this).children().next().hide();												 
										 
												 
												 });
	$("#jm-menu ul li ul li").bind("mouseout",function(){
		
	$(this).children().css({
	color:'#fff'
	 });
											 
										 
												 
												 });
}
// ***************   jM Menu 	***************		

//alert($("#jm-menu ul li").children().html()	);
$("#description-left").css("height",$("#image-left").height());	
//alert($("#boxform").height());
//$("#boxform").css("height",$("#boxform").height());	

// ***************   Fancybox 	***************		
$("a#image-fan").fancybox();
// ***************   Fancybox 	***************		


$("#list-img ul li").bind("mouseover",function(){
$("#showed-img").html($(this).html());

											   });							 
							 
$(".listprod .contentprod").hide();							 
$(".listprod").mouseenter(function(){
//$(this).children().next().next().css("display","block");		
$(".listprod .contentprod").fadeOut("fast");
$(this).children().next().next().fadeIn("fast");
				
										 })
//alert($("#showproduct #content").height());

$('#searchitem').bind('click', function() {
							
		url = $('base').attr('href') + 'index.php?route=product/search';
				 
		var filter_name = $('input[name=\'filter_name\']').attr('value')
		
		if (filter_name) {
			url += '&filter_name=' + encodeURIComponent(filter_name);
		}
		
		location = url;
	});
$('#formsearch input[name=\'filter_name\']').keydown(function(e) {
		if (e.keyCode == 13) {
			
			url = $('base').attr('href') + 'index.php?route=product/search';
			 
			var filter_name = $('input[name=\'filter_name\']').attr('value')
			
			if (filter_name) {
				url += '&filter_name=' + encodeURIComponent(filter_name);
			}
			
			location = url;
		}
	});
							 });

function addToCart(product_id) {
	$.ajax({
		url: 'index.php?route=checkout/cart/update',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {

			if (json['redirect']) {
				location = json['redirect'];
			}
		
			if (json['success']) {
	
				
				$('#totalitem').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
}

function addToWishList(product_id) {
	$.ajax({
		url: 'index.php?route=account/wishlist/update',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information').remove();
						
			if (json['success']) {
				
				$('#wishlist_total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 				
			}	
		}
	});
}

function addToCompare(product_id) { 
	$.ajax({
		url: 'index.php?route=product/compare/update',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information').remove();
						
			if (json['success']) {

				
				$('#compare_total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
}
