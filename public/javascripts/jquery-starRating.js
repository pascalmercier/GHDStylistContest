$(document).ready(function() {
	//$('.rate-ui > dd').addClass('rating');
	var full = $('.full');
	var half = $('.half');
	
	//$(half).children('label:odd').addClass('alt');

	/* Full Star Rating*/
	$(full).each(function() {		
		var rateIt = $(this).children('label');
		$(rateIt).hover(
			function() {
				var i = $(rateIt).index(this);
				for (j=i; i>-1; i--) {
					$(this).parent().children().eq(i).filter('.rated').addClass('ratedHover');
					$(this).parent().children().eq(i).not('.rated').addClass('hover');		
					}			
				},
			function() {
				var i = $(rateIt).index(this);
				for (j=i; i>-1; i--) {
					$(this).parent().children().eq(i).removeClass('hover').removeClass('ratedHover');			
					}	
				}
			);
			
		$(rateIt).click(function() {
			$(this).parent().children().removeClass('rated');
			var i = $(rateIt).index(this);
			for (j=i; i>-1; i--) {
				$(this).parent().children().eq(i).addClass('rated').addClass('ratedHover');				
			}
		});
	});		
	
	/* Half Star Rating*/
	$(half).each(function() {		
		var rateIt = $(this).children('label');
		$(rateIt).hover(
			function() {
				var i = $(rateIt).index(this);
				for (j=i; i>-1; i--) {
					$(this).parent().children().eq(i).filter('.rated').addClass('ratedHover');
					$(this).parent().children().eq(i).filter('.ratedAlt').addClass('ratedHoverAlt');
					
					$(this).parent().children().eq(i).not('.rated').not('.alt').addClass('hover');
					$(this).parent().children().eq(i).not('.rated').filter('.alt').addClass('hoverAlt');		
					}			
				},
			function() {
				var i = $(rateIt).index(this);
				for (j=i; i>-1; i--) {
					$(this).parent().children().eq(i).removeClass('hover').removeClass('ratedHover').removeClass('hoverAlt').removeClass('ratedHoverAlt');			
					}	
				}
			);
			
		$(rateIt).click(function() {
			$(this).parent().children().removeClass('rated').removeClass('ratedAlt');
			var i = $(rateIt).index(this);
			for (j=i; i>-1; i--) {
				$(this).parent().children().eq(i).not('.alt').addClass('rated').addClass('ratedHover');	
				$(this).parent().children().eq(i).filter('.alt').addClass('ratedAlt').addClass('ratedHoverAlt');		
				}	
			});
		});	
	
	});