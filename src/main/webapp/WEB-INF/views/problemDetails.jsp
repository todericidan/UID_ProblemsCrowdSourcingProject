<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>



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

        <div class="row details">
            <div>
                <img id="modal-image" class="img-details" src="${problem.imageUrls.get(0)}" alt="" />
            </div>

            <h4 id="modal-title" class="details-title">${problem.title} </h4>
            <span id="assigned" style="visibility: hidden;" class="new badge" data-badge-caption="I'm solving this"></span>
            <span>at ${problem.address}</span><span id="modal-address"></span>

            <span>on ${problem.date}</span><span id="modal-date"></span>

            <div>
                <span>
                    <span class="span-details">Signaled under <span class="petrol span-category">${problem.category.title()}</span></span>
                    <span class="span-details">Status: <span class="petrol" id="problem_status">${problem.status.title()}</span></span>
                    <span class="span-details">Urgency: <span class="petrol">${problem.urgencyLevel.title()}</span></span>
                </span>
            </div>
            <div>
                <p id="modal-description">${problem.description}</p>
            </div>
            <div>
                <span>Up-votes: <span id="up_votes_no">${problem.upVotes}</span></span><span class="span-details" id="modal-upvotes"></span>
                <span>Down-votes: <span id="down_votes_no">${problem.downVotes}</span></span><span id="modal-downvotes"></span>
            </div>
            <div class="details-actions">
                <a href="#!" id="up_vote" class="modal-action waves-effect waves-green btn-flat"><i class="material-icons">thumb_up</i> I agree</a>
                <a href="#!" id="down_vote" class="modal-action waves-effect waves-red btn-flat"><i class="material-icons">thumb_down</i> I don't agree</a>
                <c:if test="${problem.status.title().equals('Solved')}">
                    <button id="validate_btn" class="waves-effect waves-light btn amber darken-4">Validate</button>
                </c:if>
                <c:if test="${problem.status.title().equals('Unsolved') && user.equals('solver')}">
                    <button id="take_btn" class="waves-effect waves-light btn amber darken-4">I will solve this!</button>
                </c:if>

                    <button style="display: none" id="cancel_btn" class="waves-effect waves-light btn btn-faded grey lighten-3">I am not able to solve this anymore</button>
                    <button style="display: none" id="mark_solved" class="waves-effect waves-light btn amber darken-4">Mark as solved</button>

            </div>

        </div>

        <ul class="collapsible" data-collapsible="expandable">
            <li>
                <div class="collapsible-header active"><i class="material-icons">location_on</i>Location</div>
                <div class="collapsible-body details-map">
                    <div id="map" style="height:220px">

                    </div>
                </div>
            </li>
            <li>
                <div class="collapsible-header"><i class="material-icons">comment</i>Discussion</div>
                <div class="collapsible-body details-map">
                    <ul class="collection">
                        <li class="collection-item" style="background-color: #f5f5f5">
                            <div class="input-field col s12">
                                <textarea id="comment_field" class="materialize-textarea" required="" aria-required="true"></textarea>
                                <label for="comment_field">Add a comment</label>
                                <button id ="comment_btn" class="btn waves-effect waves-light btn-faded grey lighten-3" type="submit" name="action">Submit
                                    <i class="material-icons right">send</i>
                                </button>
                            </div>
                        </li>
                        <li id="new_comment_field" class="collection-item" style="display: none;">
                            <div class="input-field col s12">
                                <span class="title">Jane Doe</span>
                                <p id="new_comment_field_text">

                                </p>

                            </div>
                        </li>
                        <c:forEach items="${problem.comments}" var="comment">
                            <li class="collection-item">
                                <span class="title">${comment.username}</span>
                                <p>
                                    ${comment.text}
                                </p>

                            </li>
                        </c:forEach>


                    </ul>
                </div>
            </li>

        </ul>

    </div>

    <div id="modal" class="modal">
        <div class="modal-content">
            <h4>Confirmation</h4>
            <p>Are you sure you are committed to solve the problem?</p>
        </div>
        <div class="modal-footer">
            <a id="confirm-solve" href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Yes</a>
            <a href="#!" class="modal-action modal-close waves-effect waves-red btn-flat">No</a>
        </div>
    </div>

    <div id="modal1" class="modal">
        <div class="modal-content">
            <h4>Confirmation</h4>
            <p>Are you sure you want to give up solving the problem?</p>
        </div>
        <div class="modal-footer">
            <a id="confirm-cancel" href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Yes</a>
            <a href="#!" class="modal-action modal-close waves-effect waves-red btn-flat">No</a>
        </div>
    </div>

    <div id="modal2" class="modal">
        <div class="modal-content">
            <h4>Confirmation</h4>
            <p>Are you sure the problem is solved?</p>
        </div>
        <div class="modal-footer">
            <a id="confirm-mark-solved" href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Yes</a>
            <a href="#!" class="modal-action modal-close waves-effect waves-red btn-flat">No</a>
        </div>
    </div>

</body>

<script language="Javascript">

    $(document).ready(function () {
        $('.modal').modal();
        $('select').material_select();

            $('#take_btn').click(function(){
                $('#modal').modal('open');
            });
            $('#confirm-solve').click(function() {
                $('#problem_status').text("Currently solving");
                $('#take_btn').hide();
                $('#assigned').css("visibility","visible");
                $('#cancel_btn').css("display","inline");
                $('#mark_solved').css("display","inline");
                Materialize.toast('The problem was assigned to you', 4000)
            });

            $('#cancel_btn').click( function(){
                $('#modal1').modal('open');
            });

            $("#confirm-cancel").click(function(){
                $("#cancel_btn").css("display","none");
                $('#problem_status').text("Unsolved");
                $('#assigned').css("visibility","hidden");
                $('#take_btn').show();
                $('#mark_solved').css("display","none");

                Materialize.toast('You are not signed up for solving this anymore', 5000)

            });
            $("#mark_solved").click(function(){
                $('#modal2').modal('open');
            });

            $("#confirm-mark-solved").click(function(){
                $('#problem_status').text("Solved by you");
                $('#assigned').css("visibility","hidden");
                $('#cancel_btn').css("display","none");
                $('#mark_solved').css("display","none");
                $('#validate_btn').show();
                Materialize.toast('The problem was marked as solved', 4000)

            });


            $('#comment_btn').click(function() {
                var newComment = $('#comment_field').val();
                $('#new_comment_field_text').text(newComment);
                $('#new_comment_field').css("display","block");
                $('#comment_field').val('');
            });


        $(function(){
            $('#validate_btn').click(function() {
                $('#validate_btn').fadeOut(800);
                Materialize.toast('You have validated the problem', 4000)
            });
        });

        $('#up_vote').click(function() {
                if($('#down_vote').css("color")==="rgb(0, 131, 143)") {
                    $('#down_vote').css("color","rgb(52, 52, 52)");
                    $('#down_votes_no').text(${problem.downVotes});

                }

                if($('#up_vote').css("color")=="rgb(0, 131, 143)"){
                        Materialize.toast('You have already agreed on this problem.', 3000)
                    }
                    else{
                        $('#up_vote').css('color', 'rgb(0, 131, 143)');
                        $('#up_votes_no').text(${problem.upVotes}+1);
                        Materialize.toast('You have agreed on the problem.', 4000)
                    }

            });


            $('#down_vote').click(function() {
                if($('#up_vote').css('color')==="rgb(0, 131, 143)") {
                    $('#up_vote').css("color","rgb(52, 52, 52)");
                    $('#up_votes_no').text(${problem.upVotes});
                }

                    if($('#down_vote').css("color")==="rgb(0, 131, 143)"){
                        Materialize.toast('You have already disagreed on this problem.', 3000)
                    }
                    else{
                        $('#down_vote').css('color', 'rgb(0, 131, 143)');
                        $('#down_votes_no').text(${problem.downVotes}+1);
                        Materialize.toast('You have disagreed on the problem.', 4000)
                    }

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

    function initMap() {

        map = new google.maps.Map(document.getElementById('map'), {
            center: {
                lat: ${problem.latitude},
                lng: ${problem.longitude}
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

        // Create marker for problem.

            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(${problem.latitude}, ${problem.longitude}),
                icon: icons.${problem.status},
                map: map
            });


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
