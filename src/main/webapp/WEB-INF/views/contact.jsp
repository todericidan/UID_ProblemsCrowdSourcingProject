<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<c:url var="newProblem" value="/newProblem"/>

<head>
    <title>Contact Us</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/clujsolver.css"/>
</head>
<jsp:include page="../../resources/components/navbar.jsp"/>

<body class="blue-grey lighten-5">

<div class="row">
    <div class="card container grey lighten-5">
        <h4>Contact Us</h4>
        <div class="row">
            <div class="input-field col s4">
                Telephone: 0264-432-524
            </div>
        </div>

        <div class="row">
            <div class="input-field col s4">
                Email: ClujSolver@gmail.com
            </div>
        </div>

        <h4>Write Us Now!</h4>

        <div class="row">
            <div class="input-field col s6">
                <input id="email" type="email" class="validate">
                <label for="email">Email</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s6">
                <input id="message" placeholder="What you have in mind?" id="message" type="text" class="validate">
                <label for="message">Message:</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s2">
                <button id="submit_message" class="btn waves-effect waves-light" type="submit" name="action">Submit
                    <i class="material-icons right">send</i>
                </button>
            </div>
        </div>


    </div>
</div>

</body>


<script language="Javascript">

    $(document).ready(function () {
        $(function () {
            $('#submit_message').click(function () {
                $('#email')[0].value="";
                $('#message')[0].value="";
                Materialize.toast('Feedback was sent', 4000)
            });
        });
    });
</script>
</html>
