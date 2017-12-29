<%--
  Created by IntelliJ IDEA.
  User: tode
  Date: 12/28/2017
  Time: 11:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%!
    // --- String Join Function converts from Java array to javascript string.
    public String join(ArrayList<?> arr, String del)
    {

        StringBuilder output = new StringBuilder();

        for (int i = 0; i < arr.size(); i++)
        {

            if (i > 0) output.append(del);

            // --- Quote strings, only, for JS syntax
            if (arr.get(i) instanceof String) output.append("\"");
            output.append(arr.get(i));
            if (arr.get(i) instanceof String) output.append("\"");
        }

        return output.toString();
    }
%>


<html>
<head>
    <title>Cluj Solver Problems Chart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script type="text/javascript" src="https://cdn.zingchart.com/zingchart.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/clujsolver.css" />

</head>
<body>


<script>
    <%
       // --- Create two Java Arrays
        ArrayList<String> months = new ArrayList<String>();
        ArrayList<Integer> users = new ArrayList<Integer>();

       // --- Loop 10 times and create 10 string dates and 10 users
        int counter = 1;
        while(counter < 11)
        {
            months.add("Aug " + counter);
            users.add(counter++);
        }
    %>

    // --- add a comma after each value in the array and convert to javascript string representing an array
    var monthData = [<%= join(months, ",") %>];
    var userData = [<%= join(users, ",") %>];


</script>


<jsp:include page="../../resources/components/navbar.jsp"/>

<body class="blue-grey lighten-5">



<div class="row">

    <div class="card container grey lighten-5">

        <ul class="collapsible" data-collapsible="accordion">
            <li>
                <div class="collapsible-header "><i class="material-icons">filter_list</i>Filters</div>
                <div class="collapsible-body ">
                    <div class="row">

                        <div class="input-field col s3">
                            <select class="filter-drop" multiple>
                                <option value="" disabled selected>Type</option>
                                <option value="1">Illegal Parking</option>
                                <option value="2">Disturbing Public Order</option>
                                <option value="3">Water networks</option>
                            </select>
                        </div>

                        <div class="input-field col s3">
                            <select class="filter-drop" multiple>
                                <option value="" disabled selected>Status</option>
                                <option value="1">Solved</option>
                                <option value="2">Getting Solved</option>
                                <option value="3">Unsolved</option>
                            </select>
                        </div>

                        <div class="input-field col s3">
                            <select class="filter-drop" multiple>
                                <option value="" disabled selected>Urgency</option>
                                <option value="1">High</option>
                                <option value="2">Medium</option>
                                <option value="3">Low</option>
                            </select>
                        </div>

                        <div class="input-field col s3">
                            <select class="filter-drop" multiple>
                                <option value="" disabled selected>Amount of votes</option>
                                <option value="1">Popular</option>
                                <option value="2">Average</option>
                                <option value="3">Unpopular</option>
                            </select>
                        </div>

                        <div class="date-label">
                            <span>Dates:</span>
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

        <div id="myChart" style="height:450px"></div>


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


<script>
    window.onload = function() {
        zingchart.render({
            id: "myChart",
            width: "100%",
            height: 400,
            data: {
                "type": "bar",
                "title": {
                    "text": "All Problems Statistics"
                },
                "scale-x": {
                    "labels": monthData,
                    "label":{
                        "text":"Dates",
                        "font-size":14,
                        "offset-y":15
                    }
                },
                "plot": {
                    "line-width": 1,
                    "background-color": "#616161"
                },
                "series": [{
                    "values": userData
                }]
            }
        });
    };
</script>



</body>
</html>
