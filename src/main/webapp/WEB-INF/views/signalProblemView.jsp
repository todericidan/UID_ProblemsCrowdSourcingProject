<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
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
            <div class="input-field col s3">
                <select class="filter-drop">
                    <option value="" disabled selected>Type</option>
                    <option value="1">Illegal Parking</option>
                    <option value="2">Disturbing Public Order</option>
                    <option value="3">Water networks</option>
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
