<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Contributions</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/clujsolver.css" />
</head>
<body>


<jsp:include page="../../resources/components/navbar.jsp"/>

<body class="blue-grey lighten-5">



<div class="row">

    <div class="card container grey lighten-5">

        <ul class="collapsible" data-collapsible="accordion">
            <li>
                <div class="collapsible-header "><i class="material-icons">filter_list</i>Filters</div>
                <div class="collapsible-body ">
                    <div class="row">
                        <div class="input-field col s4">
                            <select class="filter-drop" multiple>
                                <option value="" disabled selected>Category</option>
                                <c:forEach items="${problemCategories}" var="category">
                                    <option value="${category}">${category.title()}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="input-field col s3">
                            <select class="filter-drop" multiple>
                                <option value="" disabled selected>Status</option>
                                <c:forEach items="${statusTypes}" var="status">
                                    <option value="${status}">${status.title()}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="input-field col s2">
                            <select class="filter-drop" multiple>
                                <option value="" disabled selected>Urgency</option>
                                <c:forEach items="${urgencyTypes}" var="urgency">
                                    <option value="${urgency}">${urgency.title()}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="input-field col s3">
                            <select class="filter-drop" multiple>
                                <option value="" disabled selected>Popularity</option>
                                <c:forEach items="${popularityTypes}" var="popularity">
                                    <option value="${popularity}">${popularity.title()}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="date-label">
                            <span>Date:</span>
                        </div>


                        <div class="input-field col s3 date-input">
                            <input class="datepicker filter-drop" id="datefrom" type="date" class="validate">
                            <label for="datefrom">From</label>
                        </div>

                        <div class="input-field col s3 date-input">
                            <input class="datepicker filter-drop" id="dateto" type="date" class="validate">
                            <label for="dateto">To</label>
                        </div>

                    </div>

                    <div class="row button-row">
                        <a class="waves-effect waves-light btn cyan darken-3 btn-right">Filter</a>
                        <a class="waves-effect waves-light btn grey lighten-4 btn-right btn-faded">Clear Filters</a>
                    </div>
                </div>
            </li>

        </ul>

        <div id="myTable" style="height:700px">

            <h1 id="chartTitle" style="text-align:center">Your contributions</h1>
            <table border ="0">
            	<tr>
            		<td>Time</td>
            		<td>Type</td>
            		<td>Description</td>
            		<td>Location</td>
            		<td>Status</td>
            	</tr>
            	<tr>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            		<td></td>
            	</tr>
            	
                <tr>
                    <td>2017-11-05 20:09</td>
            		<td>Parking</td>
            		<td>The car with plate CJ99AAA is parked on the sidewalk.</td>
            		<td>str. George Baritiu, nr. 28</td>
            		<td>Unsolved</td>
                </tr>
                <tr>
                    <td>2017-11-03 11:34</td>
            		<td>Others</td>
            		<td>There is a huge pothole in the middle of the road.</td>
            		<td>str. Observatorului, nr. 2</td>
            		<td>Solved</td>
                </tr>
                <tr>
                    <td>2017-12-10 23:30</td>
            		<td>Public lightning</td>
            		<td>There is a broken light bulb.</td>
            		<td>str. Dorobantilor, nr. 73</td>
            		<td>Currently solving</td>
                </tr>
                <tr>
                    <td>2017-12-24 18:03</td>
            		<td>Road signaling</td>
            		<td>The road marking is done wrong.</td>
            		<td>str. Plopilor, nr. 50</td>
            		<td>Unsolved</td>
                </tr>
                <tr>
                    <td>2018-01-01 14:44</td>
            		<td>Illegal parking</td>
            		<td>The car with plate CJ01ABC is blocking the street.</td>
            		<td>str. Piezisa, nr. 1</td>
            		<td>Solved</td>
                </tr>
                

            </table>
        </div>


    </div>
</div>



<script language="Javascript">
    $(document).ready(function() {
        $('select').material_select();

        $('.datepicker').pickadate({
            selectMonths: true, // Creates a dropdown to control month
            selectYears: 15 // Creates a dropdown of 15 years to control year
        });

    });
</script>
</body>


</body>
</html>
