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

    <c:forEach items="${requests}" var="request" varStatus="loop">
        <div id="single_request_${loop.index}" class="row">
            <div class="card container grey lighten-5">
                <span class="grey-text text-darken-1 lighten-3 col s2">${request.requestIssueDate}</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">${request.institution}</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">${request.description}</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">${request.startDate}</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">${request.endDate}</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">
                    <button id="submit_${loop.index}" type="submit" name="action" class="waves-effect waves-light btn-large amber darken-4">Validate</button>
                </span>
            </div>
        </div>
    </c:forEach>

</div>
<div class="section white">
    <div class="row container">
    </div>
</div>

</body>

<script language="Javascript">
    $(document).ready(function () {
        $('select').material_select();
        $(function () {
            $('#submit_0').click(function () {
                $('#single_request_0').fadeOut(800);
                Materialize.toast('The request has been approved', 4000)
            });
        });
        $(function () {
            $('#submit_1').click(function () {
                $('#single_request_1').fadeOut(800);
                Materialize.toast('The request has been approved', 4000)
            });
        });


        });
</script>

</html>
