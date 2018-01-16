<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>User notification</title>
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
    <div class="card container-form grey lighten-5">

        <div class="card-content card-top-title">
            <span class="card-title  activator grey-text text-darken-4">User behavior control</span>
        </div>
		
		

        <div class="row">
            <div class="col s12">
                <div class="row">
                	<div class="input-field col s12">
			          <textarea readonly id="user" class="materialize-textarea"></textarea>
			          <label for="user">User</label>
			        </div>
                    <div class="input-field col s12">
                        <textarea id="description" class="materialize-textarea"></textarea>
                        <label for="description">Message</label>
                    </div>
                    
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4" id="banUser">Ban user</button>
            </div>


            <div class="col">
                <button type="submit" name="action" class="waves-effect waves-light btn btn-right cyan darken-3" id="notifyUser">Send notification</button>
            </div>

        </div>

    </div>
</div>

<script>
function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

window.onload = function() {
	var mail = getParameterByName("mail", window.location.href);
	document.getElementById("user").innerHTML = mail;
	};
</script>

<script language="Javascript">
    $(document).ready(function() {
        $('#banUser').click( function(){
            Materialize.toast('User has been banned!', 4000)
        });
        $('#notifyUser').click( function(){
            Materialize.toast('User has been notified!', 4000)
        });
    });
</script>

</body>
</html>
