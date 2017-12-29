<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Charts</title>
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

                        <div class="type-label">
                            <span>Type:</span>
                        </div>

                        <div class="input-field col s3">
                            <select class="filter-drop" multiple>
                                <option value="" disabled selected>Type</option>
                                <option value="1">Illegal Parking</option>
                                <option value="2">Disturbing Public Order</option>
                                <option value="3">Water networks</option>
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

        <div id="myTable" style="height:700px">

            <h1 id="chartTitle" style="text-align:center">Top 10 Problem ${title} Of the Week</h1>
            <table border ="0">
                <tr>
                    <td>1</td>
                    <td>dorel_instalatorul62</td>
                    <td>2280</td>
                    <td>points</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>ridicariauto_avis</td>
                    <td>2300</td>
                    <td>points</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>ionion_canalizari</td>
                    <td>1700</td>
                    <td>points</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>dorel_instalatorul63</td>
                    <td>1600</td>
                    <td>points</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>ridicariauto_avis2</td>
                    <td>1580</td>
                    <td>points</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>toni_canalizari</td>
                    <td>1550</td>
                    <td>points</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>dorel_instalatorul633</td>
                    <td>1470</td>
                    <td>points</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>ridicariauto_avi321s</td>
                    <td>1450</td>
                    <td>points</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>tractorari_bat</td>
                    <td>1350</td>
                    <td>points</td>
                </tr>
                <tr>
                <td>10</td>
                <td>interioare_instalatii_garnituri</td>
                <td>1000</td>
                <td>points</td>
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
