<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>

<head>
    <title>Statistics</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
    <%--<script src="../../resources/js/problemDetails.js"/>--%>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/clujsolver.css"/>
</head>
<jsp:include page="../../resources/components/adminNavbar.jsp"/>

<body class="blue-grey lighten-5">


<div class="card container grey lighten-5">
<h5 class="header">Requests</h5>
    <div class="row">
        <div class="card container grey lighten-5">

            <span class="grey-text text-darken-1 lighten-3 col s2">Time</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">Institution</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">Description</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">Start Date</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">End Date</span>
            <span class="grey-text text-darken-1 lighten-3 col s2"></span>
        </div>
    </div>

    <div class="row">
        <div class="card container grey lighten-5">
            <span class="grey-text text-darken-1 lighten-3 col s2">2017-21-24:20:10</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">Prefecture</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">Strada G. Baritiu nr. 24</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">2017-21-24</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">2017-21-24</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">
                    <button type="submit" name="action" class="waves-effect waves-light btn-large amber darken-4">Validate</button>
                </span>
        </div>
    </div>

    <div class="row">
        <div class="card container grey lighten-5">
            <span class="grey-text text-darken-1 lighten-3 col s2">2015-21-24:20:10</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">Prefecture</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">Strada G. Baritiu nr. 24</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">2017-21-24</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">2017-21-24</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">
                    <button type="submit" name="action" class="waves-effect waves-light btn-large amber darken-4">Validate</button>
                </span>
        </div>
    </div>

    <div class="row">
        <div class="card container grey lighten-5">
            <span class="grey-text text-darken-1 lighten-3 col s2">2015-21-24:20:10</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">Prefecture</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">Strada G. Baritiu nr. 24</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">2017-21-24</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">2017-21-24</span>
            <span class="grey-text text-darken-1 lighten-3 col s2">
                    <button type="submit" name="action" class="waves-effect waves-light btn-large amber darken-4">Validate</button>
                </span>
        </div>
    </div>

</div>
<div class="section white">
    <div class="row container">
    </div>
</div>

</body>


</html>
