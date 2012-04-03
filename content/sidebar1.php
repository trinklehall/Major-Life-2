  <?php
include('db/dbconnect.php');
$query = "SELECT id, major, building, skill_level, comments FROM majors WHERE id>0 ORDER BY RAND() LIMIT 1;"; 
	 
$result = mysql_query($query) or die(mysql_error());



while($row = mysql_fetch_array($result)){
	echo "<p style=\"font-style:italic; font-size:16px;\">&quot;". $row['comments'] . "&quot;</p>";
	echo "<br/>";
		echo "<br/>";
	echo "<p>~ a ". $row['major'] . " major</p>";

}?>
<img src="images/cereal.jpg" align="right" style="margin-top:-110px;"/>
<br/>

<?php
echo "<p style=\"font-size:16px; font-weight:bold;\">We asked around...</p>";
include('db/dbconnect.php');
$query = "SELECT major, skill_level, majors.comments as major_comments, majors.building, buildings.comments  
FROM majors
JOIN buildings
ON majors.building = buildings.building ORDER BY RAND() LIMIT 1;"; 
	 
$result = mysql_query($query) or die(mysql_error());
$row = mysql_fetch_array($result);
echo "<p>Some random <strong>" . $row['major'] . "</strong> major might have this to say about <strong>" . $row['building'] . "</strong>: " . $row['comments'];

?>