<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<c:url var="cityOverview" value="/problems"/>

<html>

<head>
    <title>Problem Details</title>
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
<jsp:include page="../../resources/components/navbar.jsp"/>

<body class="blue-grey lighten-5">

<div class="card container grey lighten-5">
    <div class="section white">
        <div class="row container">
            <div class="row">
                <div class="card container grey lighten-5">
                    <h5 class="header">${problem.title}</h5>
                    <span class="grey-text text-darken-1 lighten-3 col s4">Full description</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">Type</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">Location</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">Start Date</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">
                     <a href="/validate/${problem.id}">
                        <button class="waves-effect waves-light btn-large amber darken-4">Validate</button>
                     </a>
                    </span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s4">${problem.description}</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">
                    <select class="filter-drop">
                        <option value="" disabled selected>${problem.category.title()}</option>
                        <c:forEach items="${problemCategories}" var="category">
                            <option value="${category}">${category.title()}</option>
                        </c:forEach>
                    </select>
                </span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">
                      <a href="${cityOverview}" class="brand-logo logo">
                          <img class="logo-img"
                               src="${pageContext.request.contextPath}/resources/img/singleProblem.PNG">
                      </a>
                </span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">${problem.solvingDate}</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s4"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">Status</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">${problem.address}</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">End Date</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s4"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">
                    <select class="filter-drop">
                        <option value="" disabled selected>${problem.status.title()}</option>
                        <c:forEach items="${statusTypes}" var="status">
                            <option value="${status}">${status.title()}</option>
                        </c:forEach>
                    </select>
                </span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">${problem.date}</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s4"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">Urgency</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s4"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">${problem.urgencyLevel.title()}</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                <span class="grey-text text-darken-1 lighten-3 col s4">UpVote:
                    <a href="/upVote/${problem.id}">
                        <i class="small material-icons">thumb_up</i>
                    </a>
                </span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                <span class="grey-text text-darken-1 lighten-3 col s4">DownVote:
                    <a href="/downVote/${problem.id}">
                        <i class="small material-icons">thumb_down</i>
                    </a>
                </span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s4">Amount of Votes: ${problem.upVotes} ${problem.downVotes}</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                <span class="grey-text text-darken-1 lighten-3 col s4">Comment:
                    <i id="comment" class="small material-icons">comment</i>
                </span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

<script language="Javascript">
    $(document).ready(function () {
        $('select').material_select();
    });
</script>

</html>
