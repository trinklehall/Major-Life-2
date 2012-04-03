<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Major Life installer</title>
</head>

<body>
<?php

echo "<h3>Installing Major Life database...</h3>";


$con = mysql_connect("localhost","root","root");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }


if (mysql_query("CREATE DATABASE majorlife",$con))
  {
	 $sql = explode(";",file_get_contents('db/majorlife.sql'));// 

foreach($sql as $query)
 mysql_query($query);
  echo "Database created";
  echo "<br />";
  echo "<h3><a href=\"index.php\">Click here to start Major Life</a></h3>";
  }
else
  {
  echo "Error creating database: " . mysql_error();
  }

mysql_close($con);
?>

</body>
</html>