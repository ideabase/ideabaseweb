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
	<link href="../../../prod/css/styles.css" rel="stylesheet" type="text/css" media="screen" />
</body> 
</html>