<?php 
  include_once("include/mysql.php");

  if (isset($_GET['page'])) 
    $page = $_GET['page']; 
  else 
    $page = "iskola"; 
?>


<!DOCTYPE html>
<html lang="hu">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/style.css">


	<title>Apáczai Szakgimnázium és Kollégium</title>

</head>
	
<body>
<div id="background"></div>
<div id="container" align="center">
	<div id="header">
		<div id="suli" ><p>Apáczai Szakgimnázium és&nbsp;Kollégium<br>Dombóvár</p></div>
		<div style="clear:both;"></div>
		&nbsp;
	</div>
	<div style="clear:both;"></div>
	<div id="menu">
		<!--
		<div class="menuitem "><a href="">Iskolánkról</a></div>
		<div class="menuitem "><a href="">Beiskolázás</a></div>
		<div class="menuitem "><a href="">Képzés, vizsgák</a></div>
		<div class="menuitem "><a href="">Dokumentumtár</a></div>
		<div class="menuitem "><a href="">Projektek</a></div>
		<div class="menuitem"><a href="">Tanáraink</a></div>
		<div class="menuitem"><a href="">Alapítvány</a></div>
		<div class="menuitem"><a href="">Fenntartó</a></div>-->

		<?php include_once("include/main.php"); ?>
		<div class="menuitem">

		<?php foreach($pages as $page_id => $page_title) { ?>
        <a <?=($page == $page_id) ? 'class="activemenu"' : '' ?> 
                href="index.php?page=<?=$page_id ?>"><?=$page_title?></a>
        <?php } ?>


		</div>

		
    
		<div style="clear:both;"></div>
	</div>

	<div class="main">

	<?php
	if(file_exists("include/" . $page . ".php")) {
		include_once("include/" . $page . ".php");
	} else {
		include_once("include/404.php");
	}
	?>

	</div>

	<div style="clear:both;"></div>
	<div id="footer">
		<div class="doboz"><img  src="images/okoiskola_logo.png" ></div>
		<div class="doboz"><img src="images/FTH_jelveny.png" ></div>    
		<div class="doboz"><img src="images/hatartalanul_logo.jpg" ></div>
		<div class="doboz"><img src="images/ecdl.png" ></div>
		<div class="doboz"><img src="images/cisco.png" ></div>
	</div>

</div>

</body>

</html>