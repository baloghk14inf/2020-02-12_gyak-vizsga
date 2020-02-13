<?php
 $res = $mysqli -> query("SELECT DISTINCT t.nev tnev, ta.nev tanev, t.email email, t.besorolas besorolas 
 FROM tanar t,targy ta, kapocs k WHERE t.besorolas = 'Pedagógus II.' 
 && k.tanar_id = t.id && k.targy_id = ta.id");
?>

<table>
	<tr>
		<td><b>Név</b></td>
		<td><b>Tárgy</b></td>
		<td><b>E-Mail</b></td>
		<td><b>Besorolás</b></td>
	</tr>
		<?php
		while($row = $res -> fetch_array()):?>
	<tr>
		<td><?=$row['tnev']?></td>
		<td><?=$row['tanev']?></td>
		<td><?=$row['email']?></td>
		<td><?=$row['besorolas']?></td>
	</tr>

		<?php endwhile;?>
</table>
