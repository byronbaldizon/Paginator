<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>PAGINADOR 2</title>
</head>
<body onload="loadFirstPage()">
	
	<div id="respuesta">
		
	</div>
	<div class="paginador">
		<button id="start" onclick="flipPage(this.id)"><<</button>
		<button id="prev" onclick="flipPage(this.id)"><</button>
		<input  id="input_current_page" type="text">
		<button id="next" onclick="flipPage(this.id)">></button>
		<button id="end" onclick="flipPage(this.id)">>></button>
	</div>
	<script>
		function loadFirstPage(){
			document.getElementById("input_current_page").value=1
			const XHR=new XMLHttpRequest()
			XHR.onload=function(){
				document.getElementById("respuesta").innerHTML=XHR.responseText				
			}
			XHR.open("GET","loadFirstPage.php",true)
			XHR.send()
		}
		function flipPage(btnId){
			const my_current_page=document.getElementById("input_current_page").value
			const XHR=new XMLHttpRequest()
			XHR.onload=function(){
				
				const jsonObject=JSON.parse(XHR.responseText)
				const newTable= jsonObject['my_table']
				const newPage = jsonObject['new_page']
				
				document.getElementById("respuesta").innerHTML=newTable
				document.getElementById("input_current_page").value=newPage

			}
			XHR.open("GET","flipPage.php?curr_page="+my_current_page+"&button_id="+btnId,true)
			XHR.send()	
		}

		
	</script>
</body>
</html>