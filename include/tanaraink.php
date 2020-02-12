<?php
 $res = mysql_query(" ");


echo'<table>';
		echo'<tr>';
			echo'<td><b>Név</b></td>';
			echo'<td><b>Tárgy</b></td>';
			echo'<td><b>E-Mail</b></td>';
		echo'</tr>';
		while($row = mysql_fetch_array($res))
		{
			echo'<tr>';
				echo'<td>'..'</td>';
				echo'<td>'..'</td>';
				echo'<td>'..'</td>';
			echo'</tr>';
		}
echo'</table>';
?>