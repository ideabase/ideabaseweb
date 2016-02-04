<html>  
<title>Coming Soon: The New IdeaBase Website</title> 
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body> 
	<div id="wrapper">
		<div id="header" class="panel-primary">
			<img src="dev/assets/img/ideabaselogo.svg" alt="IdeaBase"/>
					<h2>New Website Coming Soon</h2> 
					<div class="countdowncontainer">
					</div>
					<p class="introduction">On <strong>Valentine's Day, Feb. 14, 2016</strong>, we'll launch the new IdeaBase website, with an improved look at our services, work and people.</p>
					<p>138 E. Main Street, Suite 203
			Kent, OH 44240</p>
					<p><strong>P:</strong> 330.672.7300</p>
					<p><strong>E:</strong> <a href="mailto:info@ideabasekent.com">info@ideabasekent.com</a></p>
		</div>
	</div>
	<link href="prod/css/styles.css" rel="stylesheet" type="text/css" media="screen" />
	<link rel="stylesheet" type="text/css" href="style.css">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="jquery.countdown.min.js"></script>
	<script type="text/javascript">
	$(function() {
	    $('.countdowncontainer').countdown({
	        date: "February 14, 2016",
	        render: function(data) {
	          $(this.el).html("<div>" + this.leadingZeros(data.days, 1) + " <span>days</span></div><div>" + this.leadingZeros(data.hours, 2) + " <span>hrs</span></div><div>" + this.leadingZeros(data.min, 1) + " <span>min</span></div><div>" + this.leadingZeros(data.sec, 1) + " <span>sec</span></div>");
	        }
	    });
	});
	</script>
</body> 
</html>