<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>

<head>
    <title>City Overview</title>
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

        <div id="map" style="height:550px">

        </div>

    </div>
</div>


<input type="hidden" name="problemList" value="${problems}" />


<div id="modal1" class="modal bottom-sheet">
    <div class="modal-content-restrained">


        <div class="modal-content">
            <div>
                <img id="modal-image" class="img-pictogram" src="" alt="" />
            </div>
            <div>
                <h4 id="modal-title"></h4>
                <span>at </span><span id="modal-address"></span>
                <span>on </span><span id="modal-date"></span>

                <div>
                    <span class="span-details"><span>Signaled under </span><span id="modal-category" class="span-category"></span></span>
                    <span class="span-details"><span>Status: </span><span id="modal-status"></span></span>
                    <span class="span-details"><span>Urgency: </span><span id="modal-urgency"></span></span>
                </div>

                <div>
                    <p id="modal-description"></p>
                </div>
                <div>
                    <span>Upvotes: </span><span class="span-details" id="modal-upvotes"></span>
                    <span>Downvotes: </span><span id="modal-downvotes"></span>
                </div>
            </div>

        </div>
        <div class="modal-footer">
            <a href="#!" class="modal-action waves-effect waves-green btn-flat"><i class="material-icons">thumb_up</i></a>
            <a href="#!" class="modal-action waves-effect waves-red btn-flat"><i class="material-icons">thumb_down</i></a>
            <a href="#!" class="modal-action waves-effect waves-green btn">MORE DETAILS</a>
            <a href="#!" id="done-modal" class="modal-action modal-close waves-effect waves-green btn-flat">DONE</a>
        </div>
    </div>
</div>

<c:forEach items="${problems}" var="problem">
    <input type="hidden" value='{"pb_id:":${problem.id},
                                 "pb_title":"${problem.title}",
                                 "pb_description":"${problem.description}",
                                 "pb_address":"${problem.address}",
                                 "pb_status":"${problem.status}",
                                 "pb_status_title":"${problem.status.title()}",
                                 "pb_category_title":"${problem.category.title()}",
                                 "pb_urgency_title":"${problem.urgencyLevel.title()}",
                                 "pb_date":"${problem.date}",
                                 "pb_image":"${problem.imageUrls.get(0)}",
                                 "pb_lat":${problem.latitude},
                                 "pb_long":${problem.longitude},
                                 "pb_upvotes":${problem.upVotes},
                                 "pb_downvotes":${problem.downVotes}}'
           class="js-problem">

</c:forEach>


</body>

<script>
    var map;
    var problems = [];

    $('.js-problem').each(function() {
        problems.push(jQuery.parseJSON($(this).val()));
    });

    function initMap() {

        map = new google.maps.Map(document.getElementById('map'), {
            center: {
                lat: 46.771081,
                lng: 23.591437
            },
            zoom: 14
        });

        var icons = {
            UNSOLVED: {
                url: 'http://torens-auto.com/local/templates/torens/img/map-marker-icon2.png',
                scaledSize: new google.maps.Size(35, 35)
            },
            SOLVED: {
                url: 'https://www.maminou.com/resources/img/map-marker-default.png',
                scaledSize: new google.maps.Size(35, 35)
            },
            NOW_SOLVING: {
                url: 'http://eskaykids.com.au/wp-content/uploads/2017/08/location-icon.png',
                scaledSize: new google.maps.Size(35, 35)
            }
        };


        // Create markers.
        problems.forEach(function(problem) {
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(problem.pb_lat, problem.pb_long),
                icon: icons[problem.pb_status],
                map: map
            });
            google.maps.event.addListener(marker, 'click', function() {
                $("#modal-title").text(problem.pb_title);
                $("#modal-address").text(problem.pb_address);
                $("#modal-category").text(problem.pb_category_title);
                $("#modal-date").text(problem.pb_date);
                $("#modal-description").text(problem.pb_description);
                $("#modal-status").text(problem.pb_status_title);
                $("#modal-urgency").text(problem.pb_urgency_title);
                $("#modal-image").attr("src",problem.pb_image);
                $("#modal-upvotes").text(problem.pb_upvotes);
                $("#modal-downvotes").text(problem.pb_downvotes);
                $('#modal1').modal('open');
            });
        });
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAcGHmxVqhxqsG7U6n67QWjFreZ_YOxEEE&callback=initMap" async defer></script>

<script language="Javascript">
    $(document).ready(function() {
        $('select').material_select();

        $('.datepicker').pickadate({
            selectMonths: true, // Creates a dropdown to control month
            selectYears: 15 // Creates a dropdown of 15 years to control year
        });

        $('.modal').modal();

    });



</script>


</body>



</html>
