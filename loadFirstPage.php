<?php 
//DB access data
$serverDB="localhost";
$userDB="root";
$passDB="";
$nameDB="gran-casino";
//connecting to DB
$con = mysqli_connect($serverDB,$userDB,$passDB,$nameDB);
//DB query
$sql="SELECT * FROM personas LIMIT 10";
$res=mysqli_query($con,$sql);
//building the response table header
$tableString="<table>";
$tableString.=" <thead>";
$tableString.="   <tr>";
$tableString.="      <th>NOMBRE</th><th>APELLIDO</th><th>BORRAR</th><th>EDITAR</th>";
$tableString.="   </tr>";
$tableString.=" </thead>";
//building the response table body
$tableString.=" <tbody>";
//setting up an id number for each td
$i=1;
//setting up an id number for each button
$j=1;
//building the table body with names, surnames 
//also add delete and update buttons for each row.
while($fila=mysqli_fetch_assoc($res)){
	$tableString.="<tr><td id=$i>".$fila['nombre']."</td>";
	$i++;
	$tableString.="<td id=$i>".$fila['apellido']."</td>";
	$i++;
	$tableString.="<td id=$i><button id=$j type='submit' class='btn-borrar 
	botones-tabla'>Borrar</button></td>";
	$i++;
	$j++;
	$tableString.="<td id=$i><button id=$j type='submit' class='btn-editar botones-tabla'>Editar</button></td></tr>";
	$i++;
	$j++;
	}
$tableString.=" </tbody>";
$tableString.="</table>";
//close connection
mysqli_close($con);
//send back the table as XHR.responseText in index.php file
echo $tableString;
 ?>