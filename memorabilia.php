<!-- <!DOCTYPE html>
<div><p>At Off The Waffle, we get kind of sentimental about our memories. We really like the idea of having a place to collect some of our special moments. </p></div> -->


<?php
	ini_set("display_errors", 1);
	error_reporting(E_ALL);
	

	$con = mysql_connect("localhost","orset55_otw1","ilovewaffles123");
	if (!$con)
	  {
	  die('Could not connect: ' . mysql_error());
	}

	mysql_select_db("orset55_otw", $con);

	
	$resultYear = mysql_query("SELECT DISTINCT year FROM `memorabilia` ORDER BY year DESC")
	or die(mysql_error());  
	
	while($rowYear = mysql_fetch_array($resultYear)){
		
		
		echo "<h1>".$rowYear['year']."</h1><ul>";
		
		$result = mysql_query("SELECT * FROM memorabilia WHERE year='".$rowYear['year']."' ORDER BY month+0 ASC")
		or die(mysql_error());  
		
		while($row = mysql_fetch_array($result)){
			$type = $row['type'];
			$title = htmlentities($row['title']);
			$month = date("F", mktime(0, 0, 0, $row['month'], 10));
			$year = $row['year'];
			$content = $row['content'];

			if($type == "video"){
				echo '<li class="memorabiliaVideo"><div><p>'.$title.'</p><p>'.$month.' '.$year.'</p></div><div><iframe width="234" height="132" src="'.$content.'" allowfullscreen style="border:0"></iframe></div></li>';
			}

			if($type == "audio"){
				echo '<li class="memorabiliaAudio"><div><p>'.$title.'</p><p>'.$month.' '.$year.'</p></div><div><audio controls><source src="'.$content.'"type="audio/mp3"><p>Sorry your browser does not support embedded audio. Please download from <a href="'.$content.'">here</a>.</p></audio></div></li>';
			}

			if($type == "document"){
				$image = $row['image'];
				echo '<li class="memorabiliaDocument"><div><p>'.$title.'</p><p>'.$month.' '.$year.'</p></div><div><a href="'.$content.'" target="_blank"><img src="images/memorabiliaContent/'.$image.'"></a></div></li>';
			}
		}
		echo "</ul>";
	}
	
	mysql_close();
?>

