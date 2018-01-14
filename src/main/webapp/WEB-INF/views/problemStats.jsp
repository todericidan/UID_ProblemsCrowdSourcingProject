<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



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




<jsp:include page="../../resources/components/navbar.jsp"/>
<c:url var="filterUrl" value="/filterStats"/>
<body class="blue-grey lighten-5">



<div class="row">

    <div class="card container grey lighten-5">

        <ul class="collapsible" data-collapsible="accordion">
            <li>
                <div class="collapsible-header "><i class="material-icons">filter_list</i>Filters</div>
                <div class="collapsible-body ">
                    <div class="row">

                        <div class="type-label">
                            <span>Type:</span>
                        </div>

                        <div class="input-field col s3">
                            <select name="category" class="filter-drop" id="categoryId">
                                <option value="NONE">Category</option>
                                <c:forEach items="${problemCategories}" var="category">
                                    <option value="${category}">${category.title()}</option>
                                </c:forEach>
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
                        <a id="filter" class="waves-effect waves-light btn cyan darken-3 btn-right">Filter</a>
                        <a id="clear" class="waves-effect waves-light btn grey lighten-4 btn-right btn-faded">Clear Filters</a>
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

        $(function(){
            $('#filter').click(function() {

                var cat = document.getElementById("categoryId").value;
                var startDate = document.getElementById("datefrom").value;
                var stopDate = document.getElementById("dateto").value;

                if(cat=="NONE" && startDate =="" && stopDate=="" ){

                    Materialize.toast('Fill in at least on filter!', 4000,'red');

                }else{
                    if(startDate =="" && stopDate =="") {
                        Materialize.toast('Filtering...', 4000,'green');
                        window.location.href = "/filterStats";
                    }else{
                        if(startDate =="" || stopDate =="") {
                            if(startDate=="") {
                                Materialize.toast('Filtering...', 4000,'green');
                                var rUrl = "/filterStats/" + stopDate;
                                window.location.href = rUrl;
                            }else{
                                Materialize.toast('Filtering...', 4000,'green');
                                var rUrl = "/filterStats/" + startDate;
                                window.location.href = rUrl;
                            }
                        }else {
                            Materialize.toast('Filtering...', 4000,'green');
                            var rUrl = "/filterStats/" + startDate + "/" + stopDate;
                            window.location.href = rUrl;
                        }
                    }
                }


            });

            $('#clear').click(function() {
                Materialize.toast('Clearing filters...', 4000,'blue');
                window.location.href = "/problemStats";
            });
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
                    "text": ${message}
                },
                "scale-x": {
                    "labels": ${months},
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
                    "values": ${values}
                }]
            }
        });
    };
</script>



</body>
</html>
