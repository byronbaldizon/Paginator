<?php 
$current_page=$_GET['curr_page'];
$btn_id=$_GET['button_id'];

$serverDB="localhost";
$userDB="root";
$passDB="";
$nameDB="gran-casino";
//connecting to DB
$con = mysqli_connect($serverDB,$userDB,$passDB,$nameDB);
$sql="SELECT * FROM personas";
$res=mysqli_query($con,$sql);
//number of users
$number_of_users=mysqli_num_rows($res);
//define number of rows per page
$rows_per_page=10;
//number of pages
$number_of_pages=ceil($number_of_users/$rows_per_page);


$new_page="";
switch($btn_id){
	case "start":
	$new_page=1;
	break;

	case "next":
	if($current_page>=6){
		$new_page=1;
	}else{
		$new_page=$current_page+1;
	}
	break;

	case "prev":
	if($current_page<=1){
		$new_page=$number_of_pages;
	}else{
		$new_page=$current_page-1;
	}
	break;
	
	case "end":
	$new_page=$number_of_pages;
	break;
	}


$offset=10*($new_page-1);
$sql2="SELECT * FROM personas LIMIT 10 OFFSET $offset";
$res2=mysqli_query($con,$sql2);

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
while($row2=mysqli_fetch_assoc($res2)){
	$tableString.="<tr><td id=$i>".$row2['nombre']."</td>";
	$i++;
	$tableString.="<td id=$i>".$row2['apellido']."</td>";
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


$jsonData=array('my_table'=>$tableString,'new_page'=>$new_page);
$jsonString=json_encode($jsonData);
echo $jsonString;
?>
