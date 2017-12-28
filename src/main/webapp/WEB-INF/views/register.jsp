<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Cluj Solver Register</title>
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

<body>
<c:url var="registerAction" value="/register"/>
<c:url var="login" value="/login"/>

<div class="navbar-fixed">
    <nav class="cyan darken-3">
        <div class="nav-wrapper navbar">
            <a href="#" class="brand-logo logo"><img class="logo-img" src="${pageContext.request.contextPath}/resources/img/logo.png"></img>
            </a>

            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a>Contact</a></li>
            </ul>
        </div>
    </nav>
</div>


<div class="parallax-container paralax-custom">
    <div class="parallax"><img class="para-img" src="${pageContext.request.contextPath}/resources/img/Picture1.jpg"></div>
</div>
<div class="section white">
    <div class="row container">
        <h5 class="header">Register</h5>
        <span class="grey-text text-darken-1 lighten-3">One more step before we start. Enter your personal information below.</span>
        <form method="POST" action="${registerAction}">

        <div class="row">
                <div class="input-field col s3">
                    <input id="email" name="email" type="text" class="validate">
                    <label for="email">Email</label>
                </div>

                <div class="input-field col s3">
                    <input id="name" name="name" type="text" class="validate">
                    <label for="name">Name</label>
                </div>

                <div class="input-field col s3">
                    <input id="password" name="password" type="password" class="validate">
                    <label for="password">Password</label>
                </div>

                <div class="input-field col s3">
                    <input id="passwordConfirm" name="passwordConfirm" type="password" class="validate">
                    <label for="passwordConfirm">Password Confirmation</label>
                </div>
        </div>
        <div class="row">
                <h5 class="header">What are you up to?</h5>
                <p>
                    <input name="accountType" type="radio" id="simpleUser" />
                    <label for="simpleUser">I only want to signal community problems</label>
                </p>
                <p>
                    <input name="accountType" type="radio" id="solverUser" />
                    <label for=solverUser>I want to both signal and solve problems</label>
                </p>
        </div>

            <div class="row">
                <button type="submit" name="action" class="waves-effect waves-light btn-large amber darken-4">Register</button>
            </div>


        </form>
        <div class="row">
            <div class="col">
                <p class="grey-text text-darken-3 lighten-3">Already have an account?</p>
            </div>
            <div class="col">
                <a class="waves-effect waves-light btn grey lighten-3 btn-faded" href="${login}">Sign in here</a>
            </div>
        </div>
    </div>
</div>
<div class="parallax-container paralax-small">
    <div class="parallax"><img class="para-img" src="${pageContext.request.contextPath}/resources/img/Picture2.jpg"></div>
</div>


<script language="Javascript">
    $(document).ready(function() {
        $('.parallax').parallax();
    });
</script>

</body>
</html>