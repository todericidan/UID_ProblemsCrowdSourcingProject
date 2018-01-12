<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>

<head>
    <title>New Problem</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="clujsolver.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/clujsolver.css" />
</head>
<jsp:include page="../../resources/components/navbar.jsp"/>

<body class="blue-grey lighten-5">
<div class="row">
    <div class="card container grey lighten-5">

        <div class="card-content card-top-title">
            <span class="card-title  activator grey-text text-darken-4">Choose the location</span>
        </div>

        <div class="card-image waves-effect waves-block waves-light">
            <div id="map" style="height:450px"></div>
        </div>
    </div>
</div>

<div class="row">
    <div class="card container-form grey lighten-5">

        <div class="card-content card-top-title">
            <span class="card-title  activator grey-text text-darken-4">Describe the problem</span>
        </div>

        <div class="row">
            <div class="input-field col s3 problem-title">
                <input id="title" type="text" class="validate">
                <label for="title">Title</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s4">
                <select class="filter-drop">
                    <option value="" disabled selected>Category</option>
                    <c:forEach items="${problemCategories}" var="category">
                        <option value="${category}">${category.title()}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <textarea id="description" class="materialize-textarea"></textarea>
                        <label for="description">Description</label>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col s12">
                <div class="file-field input-field problem-media">
                    <div class="btn">
                        <span>Browse</span>
                        <input type="file" multiple>
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path validate" type="text" placeholder="Upload one or more media files">
                    </div>
                </div>
            </div>
        </div>

        <div class="row problem-urgency">
            <span>Urgency level</span>
            <p>
                <input name="urgency" type="radio" id="high" />
                <label for="high">Needs to be addressed immediately</label>
            </p>
            <p>
                <input name="urgency" type="radio" id="medium" />
                <label for=medium>Should be taken care of soon</label>
            </p>

            <p>
                <input name="urgency" type="radio" id="low" />
                <label for=low>It can wait</label>
            </p>
        </div>
        <div class="row">
            <p class="terms-check">
                <input type="checkbox" id="terms" />
                <label for="terms">I agree with the terms and conditions</label>
            </p>
        </div>

        <div class="row">
            <div class="col">
                <button type="submit" name="action" class="waves-effect waves-light btn btn-right amber darken-4">Signal problem</button>
            </div>


            <div class="col">
                <button type="submit" name="action" class="waves-effect waves-light btn btn-right cyan darken-3">Save draft</button>
            </div>

            <div class="col">
                <button type="submit" name="action" class="waves-effect waves-light btn btn-right grey lighten-3 btn-faded">Cancel</button>
            </div>
        </div>

    </div>
</div>



<script>
    var map;

    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: {
                lat: 46.7712,
                lng: 23.6236
            },
            zoom: 14
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
                    '<a>Click here to signal a problem in your current location</a>' +
                    '<br>' +
                    'or click anywhere on the map to signal a problem there.');
                infoWindow.open(map);
                map.setCenter(pos);

                //create current location marker
                var marker = new google.maps.Marker({
                    position: pos,
                    icon: {
                        url: 'https://hitchplanet.s3.amazonaws.com/static/pop/webui/common/images/icon-location-l-h.cd20fd65cade.png',
                        scaledSize: new google.maps.Size(25, 25)
                        },
                    map: map
                });
            }, function() {
                handleLocationError(true, infoWindow, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }


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

    });
</script>

</body>




</html>
