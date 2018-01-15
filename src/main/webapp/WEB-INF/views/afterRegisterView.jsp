<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Cluj Solver Login</title>
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
<c:url var="loginAction" value="/login"/>
<c:url var="register" value="/register"/>
<div class="navbar-fixed">
    <nav class="cyan darken-3">
        <div class="nav-wrapper navbar">
            <a href="#" class="brand-logo logo"><img class="logo-img" src="${pageContext.request.contextPath}/resources/img/logo.png">
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
        <h5 class="header">Sign in</h5>
        <span class="grey-text text-darken-1 lighten-3">Account created successfully! After the clicking the confirmation link sent to your email, enter your password below.</span>
        <br>
        <span class="grey-text text-darken-1 lighten-3">Didn't receive a confirmation email? </span><a id="send-confirmation">Click here to resend.</a>

        <div class="row">
            <form method="POST" action="${loginAction}">
                <div class="input-field col s3">
                    <input id="email" value="${email}" name="email" type="email" class="validate" class="validate" required="" aria-required="true">
                    <label for="email">Email</label>
                </div>
                <div class="input-field col s3">
                    <input id="password" name="password" type="password" class="validate" required="" aria-required="true">
                    <label for="password">Password</label>
                </div>

                <div class="col s3">
                    <button type="submit" name="action" class="waves-effect waves-light btn-large amber darken-4">Sign in</button>
                </div>
            </form>
        </div>
        <c:if test="${loginOutcome.equals(\"failed\")}">
            <div class="row">
                <p class="error-message">The username or password are incorrect.</p>
            </div>
        </c:if>
        <div class="row">
            <div class="col">
                <p class="grey-text text-darken-3 lighten-3">Don't have an account?</p>
            </div>
            <div class="col">
                <a class="waves-effect waves-light btn grey lighten-3 btn-faded" href="${register}">Register here</a>
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
        Materialize.toast('Account confirmation email was sent to '+$('#email').val(), 4000)

        $('#send-confirmation').click( function(){
            Materialize.toast('Resent account confirmation email', 4000)
        });
    });
</script>

</body>
</html>