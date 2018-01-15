<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search results</title>
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
    <div class="card container grey lighten-5">

        <div class="card-content card-top-title">
            <span class="card-title  activator grey-text text-darken-4">Search results for "${keyMessage}"</span>
        </div>

        <ul class="collection">
            <c:forEach items="${problemsSearchList}" var="problem">
            <li class="collection-item">
                <c:url var="url" value="/problemDetails/${problem.id}"/>
                <a class="collection-item avatar avatar-search" href="${url}">
                        <img class="material-icons circle" src="${problem.imageUrls.get(0)}"/>
                        <div class="search-result">
                            <span class="title">${problem.title}</span>
                            <p>${problem.category.title()} <br>
                                Status: ${problem.status.title()}, Urgency: ${problem.urgencyLevel.title()}
                            </p>
                        </div>
                    <div class="secondary-content modal-action waves-effect waves-green btn cyan darken-3 search-details">MORE DETAILS</div>
                </a>
            </li>
            </c:forEach>


        </ul>

    </div>

</div>


</body>

</html>