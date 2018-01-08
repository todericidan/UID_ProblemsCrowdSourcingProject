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


<jsp:include page="../../resources/components/adminNavbar.jsp"/>

<body class="blue-grey lighten-5">

<div class="row">

    <div class="card container grey lighten-5">

        <div id="myTable" style="height:700px">

            <h1 id="chartTitle" style="text-align:center">Recurrent problems</h1>
            <table border ="0">
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
            		<td><input type="checkbox" id="test5" /></td>
                </tr>
                <tr>
                    <td>2017-10-26 11:34</td>
            		<td>Parking</td>
            		<td>The car with plate CJ99AAA is parked on the sidewalk.</td>
            		<td>str. George Baritiu, nr. 30</td>
            		<td><input type="checkbox" id="test5" /></td>
                </tr>
                <tr>
                    <td>2017-10-26 23:30</td>
            		<td>Parking</td>
            		<td>The car with the plate CJ10ABC is blocking the street.</td>
            		<td>str. George Baritiu, nr. 26</td>
            		<td><input type="checkbox" id="test5" /></td>
                </tr>
                <tr>
                    <td>2017-10-25 18:03</td>
            		<td>Parking</td>
            		<td>CJ99AAA parked badly</td>
            		<td>str. George Baritiu, nr. 28</td>
            		<td><input type="checkbox" id="test5" /></td>
                </tr>
                <tr>
                    <td>2017-10-25 14:44</td>
            		<td>Parking</td>
            		<td>Car with number CJ11ZZZ is parked on the bike lane.</td>
            		<td>str. George Baritiu, nr. 28</td>
            		<td><input type="checkbox" id="test5" /></td>
                </tr>
                

            </table>
        </div>


    </div>
</div>

</body>
</html>
