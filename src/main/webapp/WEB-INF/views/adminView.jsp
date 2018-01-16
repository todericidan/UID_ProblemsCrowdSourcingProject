<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>

<head>
    <title>Admin page</title>
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

        <div id="map" style="height:450px">

        </div>

    </div>
    
    <div class="contributions">
        <div class="card">
            <div class="card-content">
                <h5>Reported users</h5>
            </div>
            <div class="card-content grey lighten-4">
                <div id="solvedProblems">
                    <div class="collection">
                        <a class="collection-item">
                            <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4" style="display: inline; float: right;" id="btn1">Handle</button>
                            <h5>Instalator2000</h5>
                            instalatoru@yahoo.com
                        </a>
                        <a class="collection-item">
                            <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4" style="display: inline; float: right;" id="btn2">Handle</button>
                            <h5>IonIonescu69</h5>
                            yon@gmail.com
                        </a>
                        <a class="collection-item">
                            <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4" style="display: inline; float: right;" id="btn3">Handle</button>
                            <h5>User</h5>
                            user@example.com
                        </a>
                        <a class="collection-item">
                            <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4" style="display: inline; float: right;" id="btn4">Handle</button>
                            <h5>ABCD123</h5>
                            abcd@yahoo.com
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    
    <div class="contributions">
        <div class="card">
            <div class="card-content">
                <h5>Export requests</h5>
            </div>
            <div class="card-content grey lighten-4">
                <div id="solvedProblems">
                    <div class="collection">
                    	<c:forEach items="${requests}" var="request">
	                        <a class="collection-item">
	                            <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4" style="display: inline; float: right;" id="btn12">Validate</button>
	                            <h5>${request.institution} on ${request.requestIssueDate}</h5>
	                            Start date: ${request.startDate} | End date: ${request.endDate}
	                            <br>
	                            ${request.description}
	                        </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

</body>

<script>
    var map;

    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: {
                lat: 46.769342,
                lng: 23.589673
            },
            zoom: 14
        });
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAcGHmxVqhxqsG7U6n67QWjFreZ_YOxEEE&callback=initMap" async defer></script>

<script>
    document.getElementById("btn1").onclick = function () {
        location.href = "/notifyUser?mail=instalatoru@yahoo.com";
    };
    document.getElementById("btn2").onclick = function () {
        location.href = "/notifyUser?mail=yon@gmail.com";
    };
    document.getElementById("btn3").onclick = function () {
        location.href = "/notifyUser?mail=user@example.com";
    };
    document.getElementById("btn4").onclick = function () {
        location.href = "/notifyUser?mail=abcd@yahoo.com";
    };
</script>

<script language="Javascript">
    $(document).ready(function() {
        $('#btn12').click( function(){
            Materialize.toast('The export request has been validated!', 4000)
        });
    });
</script>


</body>



</html>
