<html>
<head>
<title>Miet Job</title>
<link rel="stylesheet" type="text/css" href="/style/style.css" />
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script>
	$(document).ready(function(){
		var heightW = $(window).height(); 
		var widthW = $(window).width();
		if(widthW > 1050)
			$("#center").css('width', widthW  - 600);
		$(window).resize(function () { 
      heightW = $(window).height(); 
			widthW = $(window).width();
			if(widthW > 1050)
				$("#center").css('width', widthW  - 600);
    });
		
		$("#close_auth").click(function() {
			$("#auth").fadeOut(300);
		});
		
		$('a[href=auth]').on("click",function(event) {
			event.preventDefault();
			$("#auth").fadeIn(300);
		});
	});
</script>
</head>
