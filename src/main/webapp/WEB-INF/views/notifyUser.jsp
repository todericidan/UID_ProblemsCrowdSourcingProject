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


<jsp:include page="../../resources/components/navbar.jsp"/>

<body class="blue-grey lighten-5">

<div class="row">
    <div class="card container-form grey lighten-5">

        <div class="card-content card-top-title">
            <span class="card-title  activator grey-text text-darken-4">User behavior control</span>
        </div>

        <div class="row">
        	<div class="input-field col s12">
			    <select multiple>
			       <option value="" disabled selected>User</option>
			        <option value="1">Instalator2000 - instalatoru@yahoo.com</option>
			        <option value="2">IonIonescu69 - yon@gmail.com</option>
			        <option value="3">User - user@example.com</option>
			        <option value="4">ABCD123 - abcd@yahoo.com</option>
			    </select>
			  </div>
            
        </div>

        <div class="row">
            <div class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <textarea id="description" class="materialize-textarea"></textarea>
                        <label for="description">Message</label>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4">Ban user</button>
            </div>


            <div class="col">
                <button type="submit" name="action" class="waves-effect waves-light btn btn-right cyan darken-3">Send notification</button>
            </div>

        </div>

    </div>
</div>
<script language="Javascript">
    $(document).ready(function() {
        $('select').material_select();

    });
</script>

</body>
</html>
