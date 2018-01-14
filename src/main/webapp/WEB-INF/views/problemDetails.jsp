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
                    <c:if test="${problem.status.title().equals('Solved')}">
                        <button id="validate_btn" class="waves-effect waves-light btn-large amber darken-4">Validate</button>
                    </c:if>

                    </span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s4">${problem.description}</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">
                    ${problem.category.title()}
                </span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">
                        <div id="map" style="height:100px"></div>
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
                    <span id="problem_status" class="grey-text text-darken-1 lighten-3 col s2">${problem.status.title()}</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">${problem.date}</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s4"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2">
                        <button id="take_btn" class="waves-effect waves-light btn-large amber darken-4">Take</button>
                    </span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
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
                <span class="grey-text text-darken-1 lighten-3 col s2">UpVote:
                        <i id ="up_vote" class="small material-icons">thumb_up</i>
                </span>
                    <span id="total_upv" class="grey-text text-darken-1 lighten-3 col s2">${problem.upVotes} upVotes</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s4"></span>
                </div>
            </div>

            <div class="row">
                <div class="card container grey lighten-5">
                <span class="grey-text text-darken-1 lighten-3 col s2">DownVote:
                    <i id="down_vote" class="small material-icons">thumb_down</i>
                </span>
                    <span id="total_dnv" class="grey-text text-darken-1 lighten-3 col s2">${problem.downVotes} downVotes</span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s2"></span>
                    <span class="grey-text text-darken-1 lighten-3 col s4"></span>
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
            <div id="comment_section" style="display:none;">
                <div id="comments">
                    <div class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s8">
                        <div class="collection">
                                <span class="btn-faded">"I also noticed it today. The problem is still there."</span>
                        </div>
                    </span>
                    </div>

                    <div class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s8">
                        <div class="collection">
                                <span class="btn-faded">"Finally this problem is fixed"</span>
                        </div>
                    </span>
                    </div>

                    <div id = "new_comment_div" style="display:none;" class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s8">
                        <div class="collection">
                                <span id = "new_comment" class="btn-faded">""</span>
                        </div>
                    </span>
                    </div>
                </div>
                <div class="row">
                    <div class="card container grey lighten-5">
                    <span class="grey-text text-darken-1 lighten-3 col s10">

                    <div class="input-field col s8">
                        <input placeholder="Type" id="comment_field" type="text" class="validate">
                    </div>
                    <div class="input-field col s2">
                        <button id ="comment_btn" class="btn waves-effect waves-light" type="submit" name="action">Submit
                            <i class="material-icons right">send</i>
                        </button>
                    </div>
                    </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

<script language="Javascript">
    $(document).ready(function () {
        $('select').material_select();
        $(function(){
            $('#take_btn').click(function() {
                $('#problem_status')[0].innerHTML="Currently solving";
                $('#take_btn').fadeOut(800);
                Materialize.toast('The problem was assigned to you', 4000)
            });
        });

        $(function(){
            $('#comment_btn').click(function() {
                var newComment = $('#comment_field')[0].value;
                newComment = '"'+newComment+'"';
                $('#new_comment')[0].innerHTML=newComment;
                document.getElementById('new_comment_div').style.display = "block";
            });
        });

        $(function(){
            $('#validate_btn').click(function() {
                $('#validate_btn').fadeOut(800);
                Materialize.toast('You have validated the problem', 4000)
            });
        });

        $(function(){
            $('#up_vote').click(function() {
                if($('#down_vote').css("color")==="rgb(3, 155, 229)") {
                    Materialize.toast('You cannot upvote and downvote at the same time', 4000)
                }
                else{
                    if($('#up_vote').css("color")==="rgb(3, 155, 229)"){
                        $('#up_vote').css('color', '#757575');
                        $('#total_upv')[0].innerHTML=${problem.upVotes}+" upVotes";
                        Materialize.toast('You have removed your upvote', 4000)
                    }
                    else{
                        $('#up_vote').css('color', '#039be5');
                        $('#total_upv')[0].innerHTML=${problem.upVotes+1}+" upVotes";
                        Materialize.toast('You have upvoted the problem', 4000)
                    }
                }
            });
        });

        $(function(){
            $('#down_vote').click(function() {
                if($('#up_vote').css("color")==="rgb(3, 155, 229)") {
                    Materialize.toast('You cannot upvote and downvote at the same time', 4000)
                }
                else{
                    if($('#down_vote').css("color")==="rgb(3, 155, 229)"){
                        $('#down_vote').css('color', '#757575');
                        $('#total_dnv')[0].innerHTML=${problem.downVotes}+" downVotes";
                        Materialize.toast('You have removed your downvote', 4000)
                    }
                    else{
                        $('#down_vote').css('color', '#039be5');
                        $('#total_dnv')[0].innerHTML=${problem.downVotes+1}+" downVotes";
                        Materialize.toast('You have downvoted the problem', 4000)
                    }
                }
            });
        });

        $(function(){
            $('#comment').click(function() {
                if($('#comment').css("color")==="rgb(3, 155, 229)") {
                    $('#comment_section').fadeOut(800);
                    $('#comment').css('color', '#757575');
                }

                else{
                    $('#comment_section').fadeIn(800);
                    $('#comment').css('color', '#039be5');
                }
            });
        });
    });
</script>

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

</html>
