<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>

<head>
    <title>Admin page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/clujsolver.css" />
</head>
<jsp:include page="../../resources/components/adminNavbar.jsp"/>
<c:url var="newProblem" value="/newProblem"/>

<body class="blue-grey lighten-5">

<div class="row">
	
    <div class="card container grey lighten-5">

        <div id="map" style="height:450px">

        </div>

    </div>
    
    <div class="contributions">
        <div class="card">
            <div class="card-content">
                <h5>Reported users</h5>
            </div>
            <div class="card-content grey lighten-4">
                <div id="solvedProblems">
                    <div class="collection">
                        <a class="collection-item">
                            <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4" style="display: inline; float: right;" id="btn1">Handle</button>
                            <h5>Instalator2000</h5>
                            instalatoru@yahoo.com
                        </a>
                        <a class="collection-item">
                            <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4" style="display: inline; float: right;" id="btn2">Handle</button>
                            <h5>IonIonescu69</h5>
                            yon@gmail.com
                        </a>
                        <a class="collection-item">
                            <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4" style="display: inline; float: right;" id="btn3">Handle</button>
                            <h5>User</h5>
                            user@example.com
                        </a>
                        <a class="collection-item">
                            <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4" style="display: inline; float: right;" id="btn4">Handle</button>
                            <h5>ABCD123</h5>
                            abcd@yahoo.com
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    
    <div class="contributions">
        <div class="card">
            <div class="card-content">
                <h5>Export requests</h5>
            </div>
            <div class="card-content grey lighten-4">
                <div id="solvedPrbs">
                    <div class="collection">
                    	<c:forEach items="${requests}" var="request" varStatus="loop">
	                        <a id="single_request_${loop.index}" class="collection-item">
	                            <button id="submit_${loop.index}" type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4" style="display: inline; float: right;">Validate</button>
	                            <h5>${request.institution} on ${request.requestIssueDate}</h5>
	                            Start date: ${request.startDate} | End date: ${request.endDate}
	                            <br>
                                Type: ${request.type}
                                <br>
	                            ${request.description}
	                        </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
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
                    <span class="span-details"><span>Signaled under </span><span id="modal-category" class="span-category petrol"></span></span>
                    <span class="span-details"><span>Status: </span><span id="modal-status" class="petrol"></span></span>
                    <span class="span-details"><span>Urgency: </span><span id="modal-urgency" class="petrol"></span></span>
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
            <a id="problemDetailsPage" href="" class="modal-action waves-effect waves-green btn">MORE DETAILS</a>
            <a href="#!" id="done-modal" class="modal-action modal-close waves-effect waves-green btn-flat">DONE</a>
        </div>
    </div>
</div>

<c:forEach items="${problems}" var="problem">
    <input type="hidden" value='{"pb_id":${problem.id},
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
    document.getElementById("btn1").onclick = function () {
        location.href = "/notifyUser?mail=instalatoru@yahoo.com";
    };
    document.getElementById("btn2").onclick = function () {
        location.href = "/notifyUser?mail=yon@gmail.com";
    };
    document.getElementById("btn3").onclick = function () {
        location.href = "/notifyUser?mail=user@example.com";
    };
    document.getElementById("btn4").onclick = function () {
        location.href = "/notifyUser?mail=abcd@yahoo.com";
    };
</script>

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
                url: 'https://www.adswerve.com/wp-content/uploads/2017/09/map-marker-icon.png',
                scaledSize: new google.maps.Size(35, 35)
            },
            NOW_SOLVING: {
                url: 'http://eskaykids.com.au/wp-content/uploads/2017/08/location-icon.png',
                scaledSize: new google.maps.Size(35, 35)
            },
            CURRENT_LOCATION: {
                url: 'https://hitchplanet.s3.amazonaws.com/static/pop/webui/common/images/icon-location-l-h.cd20fd65cade.png',
                scaledSize: new google.maps.Size(25, 25)
            }
        };

        var ctx = "${pageContext.request.contextPath}";

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
                $("#problemDetailsPage").attr("href",ctx + "/problemDetails/" + problem.pb_id);
                $("#modal-upvotes").text(problem.pb_upvotes);
                $("#modal-downvotes").text(problem.pb_downvotes);
                $('#modal1').modal('open');
            });
        });

        //show user's current location
        infoWindow = new google.maps.InfoWindow;

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };

                infoWindow.setPosition(new google.maps.LatLng(pos.lat + 0.0015, pos.lng));
                infoWindow.setContent('You are here. ' +
                    '<a href=${newProblem}>Click to signal a problem.</a>');
                infoWindow.open(map);
                map.setCenter(pos);


                //create current location marker
                var marker = new google.maps.Marker({
                    position: pos,
                    icon: icons["CURRENT_LOCATION"],
                    map: map
                });
            }, function() {
                handleLocationError(true, infoWindow, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }

        //show an infowindow to instruct the user to check problem details
        guideWindow = new google.maps.InfoWindow;
        var guideWindowPos = {

            //46.771738, 23.578130

            lat: problems[0].pb_lat + 0.002244,
            lng: problems[0].pb_long
        };
        guideWindow.setPosition(guideWindowPos);
        guideWindow.setContent('Click on a problem to check its details.');
        guideWindow.open(map);

    }

    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
        infoWindow.open(map);
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

        if($('#firstUse').val() == "true"){
            $('.tap-target').tapTarget('open');
        }
        // $('.tap-target').tapTarget('close');

        $(function(){
            $('#clear').click(function() {
                Materialize.toast('Clearing filters...', 4000,'blue');
                var rurl="/problemsReset";
                window.location.href = rurl;
            });


            $('#filter').click(function() {
                var cat = $('#categoryId').val();
                var status = $('#statusId').val();
                var popularity = $('#popularityId').val();
                var urgency = $('#urgencyId').val();
                var startDate = document.getElementById("datefrom").value;
                var stopDate = document.getElementById("dateto").value;

                if(cat=="NONE" && status=="NONE" && popularity=="NONE" && urgency=="NONE" && startDate == "" && stopDate == "" ){

                    Materialize.toast('Fill in at least on filter!', 4000,'red');

                }else {
                    if (startDate == "" && stopDate == "") {
                        Materialize.toast('Filtering...', 4000, 'green');
                        var rUrl = "/filterProblems/" + cat + "/" + status + "/" + popularity + "/" + urgency;
                        window.location.href = rUrl;
                    } else {
                        if (startDate == "" || stopDate == "") {
                            if (startDate == "") {
                                Materialize.toast('Filtering...', 4000, 'green');
                                var rUrl = "/filterProblems/"+ cat + "/" + status + "/" + popularity + "/" + urgency+"/" + stopDate;
                                window.location.href = rUrl;
                            } else {
                                Materialize.toast('Filtering...', 4000, 'green');
                                var rUrl = "/filterProblems/"+ cat + "/" + status + "/" + popularity + "/" + urgency + "/" + startDate;
                                window.location.href = rUrl;
                            }
                        } else {
                            Materialize.toast('Filtering...', 4000, 'green');
                            var rUrl = "/filterProblems/"+ cat + "/" + status + "/" + popularity + "/" + urgency + "/" + startDate + "/" + stopDate;
                            window.location.href = rUrl;
                        }
                    }
                }
            });

        });
    });



</script>
</html>
