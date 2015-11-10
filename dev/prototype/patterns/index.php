<html>  
<title>Pattern Library</title> 

<body> 
	<h1>IdeaBase Pattern Library</h1>
	<p>View a list of patterns used on the IdeaBase website below.</p>
	<?php 
		//loops through files in partial directory
		foreach (glob("partials/*.html") as $filename)
		{
			echo '<section class="pattern">';
    		include $filename;
    		echo '</section>';
		}	
	?>   
	<link href="../../../prod/css/styles.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="../../../../../style.css" rel="stylesheet" type="text/css" media="screen" />
</body> 
</html>