<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
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


<div class="section white">
    <div class="row container">
        <div class="row">
            <div class="card container grey lighten-5">
                <h5 class="header">Problem Title</h5>
                <span class="grey-text text-darken-1 lighten-3 col s4">Full description</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">Type</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">Location</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">Start Date</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">
                    <button type="submit" name="action" class="waves-effect waves-light btn-large amber darken-4">Validate</button>
                </span>
            </div>
        </div>

        <div class="row">
            <div class="card container grey lighten-5">
                <span class="grey-text text-darken-1 lighten-3 col s4">Lose eyes get fat shew. Winter can indeed letter oppose way change tended now. So is improve my charmed picture exposed adapted demands.</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">
                    <select class="filter-drop">
                                <option value="" disabled selected>Type</option>
                                <option value="1">Illegal Parking</option>
                                <option value="2">Disturbing Public Order</option>
                                <option value="3">Water networks</option>
                    </select>
                </span>
                <span class="grey-text text-darken-1 lighten-3 col s2">X:200 , Y:492</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">23.12.2015</span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
            </div>
        </div>

        <div class="row">
            <div class="card container grey lighten-5">
                <span class="grey-text text-darken-1 lighten-3 col s4"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2">Status</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">str. Timisoara nr. 42</span>
                <span class="grey-text text-darken-1 lighten-3 col s2">End Date</span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
            </div>
        </div>

        <div class="row">
            <div class="card container grey lighten-5">
                <span class="grey-text text-darken-1 lighten-3 col s4"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2">
                    <select class="filter-drop">
                                <option value="" disabled selected>Status</option>
                                <option value="1">Open</option>
                                <option value="2">Solved</option>
                                <option value="3">In Progress</option>
                    </select>
                </span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2">24.12.2015</span>
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
                <span class="grey-text text-darken-1 lighten-3 col s2">High</span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
            </div>
        </div>

        <div class="row">
            <div class="card container grey lighten-5">
                <span class="grey-text text-darken-1 lighten-3 col s4" onclick="">UpVote:
                    <i class="small material-icons">thumb_up</i>
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
                <i class="small material-icons">thumb_down</i>
                </span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
            </div>
        </div>

        <div class="row">
            <div class="card container grey lighten-5">
                <span class="grey-text text-darken-1 lighten-3 col s4">Amount of Votes: </span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
            </div>
        </div>

        <div class="row">
            <div class="card container grey lighten-5">
                <span class="grey-text text-darken-1 lighten-3 col s4">Comment:
                <i id="thumb_up" class="small material-icons">comment</i>
                </span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                <span class="grey-text text-darken-1 lighten-3 col s2"></span>
            </div>
        </div>
    </div>
</div>

</body>

<script language="Javascript">
    $(document).ready(function() {
        $('select').material_select();
    });
</script>

</html>
