<html>  
<title>Pattern Library</title> 

<body> 

	<h1>Pattern Library</h1>  
	<?php 
		//loops through files in partial directory
		foreach (glob("partials/*.html") as $filename)
		{
    		include $filename;
		}	
	?>   

</body> 
</html>