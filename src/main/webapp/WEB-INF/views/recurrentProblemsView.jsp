<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Recurrent problems</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/clujsolver.css" />
</head>

<c:url var="cityOverview" value="/admin"/>
<jsp:include page="../../resources/components/adminNavbar.jsp"/>

<body class="blue-grey lighten-5">

<div class="row">

    <div class="card container grey lighten-5" id="recurrent">

        <div id="myTable" style="height:700px">

            <h1 id="chartTitle" style="text-align:center">Recurrent problems</h1>
            <table border ="0" id="recurrentTable">
            	<tr>
            		<td>Time</td>
            		<td>Type</td>
            		<td>Description</td>
            		<td>Location</td>
            		<td>Merge</td>
            	</tr>
            	<tr>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            	</tr>
            	
                <tr>
                    <td>2017-10-26 20:09</td>
            		<td>Parking</td>
            		<td>The car with the plate number CJ99AAA is parked on the sidewalk.</td>
            		<td>str. George Baritiu, nr. 28</td>
            		<td><input type="checkbox" id="test1" style="opacity: inherit; pointer-events: visible"/></td>
                </tr>
                <tr>
                    <td>2017-10-26 11:34</td>
            		<td>Parking</td>
            		<td>The car with plate CJ99AAA is parked on the sidewalk.</td>
            		<td>str. George Baritiu, nr. 30</td>
            		<td><input type="checkbox" id="test2" style="opacity: inherit; pointer-events: visible"/></td>
                </tr>
                <tr>
                    <td>2017-10-26 23:30</td>
            		<td>Parking</td>
            		<td>The car with the plate CJ10ABC is blocking the street.</td>
            		<td>str. George Baritiu, nr. 26</td>
            		<td><input type="checkbox" id="test3" style="opacity: inherit; pointer-events: visible"/></td>
                </tr>
                <tr>
                    <td>2017-10-25 18:03</td>
            		<td>Parking</td>
            		<td>CJ99AAA parked badly</td>
            		<td>str. George Baritiu, nr. 28</td>
            		<td><input type="checkbox" id="test4" style="opacity: inherit; pointer-events: visible"/></td>
                </tr>
                <tr>
                    <td>2017-10-25 14:44</td>
            		<td>Parking</td>
            		<td>Car with number CJ11ZZZ is parked on the bike lane.</td>
            		<td>str. George Baritiu, nr. 28</td>
            		<td><input type="checkbox" id="test5" style="opacity: inherit; pointer-events: visible"/></td>
                </tr>
                

            </table>
        </div>

		<button class="btn waves-effect waves-light" type="submit" name="action" onclick="switchVisible();">Merge selected problems
		    <i class="material-icons right">send</i>
		</button>


    </div>
    
    <div class="card container grey lighten-5" id="merge" style="display: none;">

        <div id="myTable">

            <h1 id="chartTitle" style="text-align:center">Merge problems</h1>
            <table border ="0" id="mergeTable">
            	<tr>
            		<td>Time</td>
            		<td>Type</td>
            		<td>Description</td>
            		<td>Location</td>
            		<td>Select</td>
            	</tr>
            	<tr>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td><input name="group1" type="radio" id="test1" style="opacity: inherit; pointer-events: visible"/></td>
            	</tr>
            	<tr>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            	</tr>
            	<tr>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            	</tr>
            	<tr>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            	</tr>
            	<tr>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            	</tr>
            	<tr>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            	</tr>

            </table>
        </div>

		 <div class="row" id="btns">
            <div class="col">
                <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4">Keep selected problem</button>
            </div>


            <div class="col">
                <button type="submit" name="action" class="waves-effect waves-light btn btn-right cyan darken-3" onClick="showCreate();">Create new problem</button>
            </div>

        </div>

    </div>
    
    <div class="card container-form grey lighten-5" id="create" style="display: none;">

        <div class="row">
            <div class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <textarea id="description" class="materialize-textarea"></textarea>
                        <label for="description">Description</label>
                    </div>
                    <div id="images" style="display: inline;">
						<img id="imageId" src="${pageContext.request.contextPath}/resources/img/badparking.png" onclick="mark('imageId')">
						<img id="imageId1" src="${pageContext.request.contextPath}/resources/img/badparking1.png" onclick="mark('imageId1')">
						<img id="imageId2" src="${pageContext.request.contextPath}/resources/img/badparking2.png" onclick="mark('imageId2')">
						<img id="imageId3" src="${pageContext.request.contextPath}/resources/img/badparking3.png" onclick="mark('imageId3')">
					</div>
                    
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4">CREATE</button>
            </div>
        </div>

    </div>
</div>

</body>
</html>

<script>
function switchVisible() {
    if (document.getElementById('recurrent')) {

        if (document.getElementById('recurrent').style.display == 'none') {
            document.getElementById('recurrent').style.display = 'block';
            document.getElementById('merge').style.display = 'none';
        }
        else {
        	var table = document.getElementById("mergeTable");
        	var table1 = document.getElementById("recurrentTable");
        	var chk1 = document.getElementById("test1");
        	var chk2 = document.getElementById("test2");
        	var chk3 = document.getElementById("test3");
        	var chk4 = document.getElementById("test4");
        	var chk5 = document.getElementById("test5");
        	var k = 2;
        	
        	if(chk1.checked){
        		for (var c = 0, m = table1.rows[2].cells.length; c < m - 1; c++) {
    	            table.rows[k].cells[c].innerHTML = table1.rows[2].cells[c].innerHTML;
    	        }
        		table.rows[k].cells[m-1].innerHTML = table.rows[1].cells[m-1].innerHTML;
        		k++;
        	}
        	
        	if(chk2.checked){
        		for (var c = 0, m = table1.rows[3].cells.length; c < m - 1; c++) {
    	            table.rows[k].cells[c].innerHTML = table1.rows[3].cells[c].innerHTML;
    	        }
        		table.rows[k].cells[m-1].innerHTML = table.rows[1].cells[m-1].innerHTML;
        		k++;
        	}
        	
        	if(chk3.checked){
        		for (var c = 0, m = table1.rows[4].cells.length; c < m - 1; c++) {
    	            table.rows[k].cells[c].innerHTML = table1.rows[4].cells[c].innerHTML;
    	        }
        		table.rows[k].cells[m-1].innerHTML = table.rows[1].cells[m-1].innerHTML;
        		k++;
        	}
        	
        	if(chk4.checked){
        		for (var c = 0, m = table1.rows[5].cells.length; c < m - 1; c++) {
    	            table.rows[k].cells[c].innerHTML = table1.rows[5].cells[c].innerHTML;
    	        }
        		table.rows[k].cells[m-1].innerHTML = table.rows[1].cells[m-1].innerHTML;
        		k++;
        	}
        	
        	if(chk5.checked){
        		for (var c = 0, m = table1.rows[6].cells.length; c < m - 1; c++) {
    	            table.rows[k].cells[c].innerHTML = table1.rows[6].cells[c].innerHTML;
    	        }
        		table.rows[k].cells[m-1].innerHTML = table.rows[1].cells[m-1].innerHTML;
        		k++;
        	}
        	table.rows[1].cells[m-1].innerHTML = "";
            document.getElementById('recurrent').style.display = 'none';
            document.getElementById('merge').style.display = 'block';
        }
    }
}

function showCreate(){
	document.getElementById('create').style.display = 'block';
	document.getElementById('btns').style.display = 'none';
}

function mark(imageId) {
	if(document.getElementById(imageId).style.border == "")
    	document.getElementById(imageId).style.border = "3px solid blue";
	else
		document.getElementById(imageId).style.border = "";
}
</script>
