<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:url var="newProblem" value="/newProblem"/>
<c:url var="cityOverview" value="/problems"/>
<c:url var="problemStats" value="/problemStats"/>
<c:url var="solversChart" value="/chartSolvers"/>
<c:url var="notifiersChart" value="/chartNotifiers"/>
<c:url var="search" value="/searchResults"/>
<c:url var="userProfile" value="/myProfile"/>
<c:url var="help" value="/help"/>
<c:url var="contact" value="/contact"/>
<c:url var="login" value="/login"/>

<style type="text/css">

#chart-options{
    display:none
}
</style>

<nav class="cyan darken-3">
    <div class="navbar-fixed">
        <div class="nav-wrapper navbar">
            <a href="<c:url value="/problems"/>" class="brand-logo logo"><img class="logo-img" src="${pageContext.request.contextPath}/resources/img/logo.png"/>
            </a>

            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a class="waves-effect waves-light btn amber darken-1" href="${newProblem}" >New Problem</a></li>
                <li class="card search-bar grey lighten-5">
                    <form>
                        <div class="input-field">
                            <input id="search" type="search" required>
                            <i class="material-icons cyan-text text-darken-4" id = "searchBtn">search</i>
                        </div>
                    </form>
                </li>

                <li><a href="${cityOverview}">City Overview</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-button" href="#!" data-activates="statistics-dropdown">Statistics</a></li>
                <li><a href="${help}">Help</a></li>
                <li><a href="${contact}">Contact</a></li>
                <li><a href="${userProfile}">Jane Doe</a></li>
                <li><a class="dropdown-button" href="#!" data-activates="logout-dropdown"> <img href="${userProfile}" class="user-img" src="https://cdn3.iconfinder.com/data/icons/business-round-flat-vol-1-1/36/user_account_profile_avatar_person_student_female-512.png"/></a></li>
            </ul>
        </div>
    </div>

</nav>

<!-- Dropdown Structure -->
<ul id="statistics-dropdown" class="dropdown-content">
    <li class="drop-text" id="stats-btn">
        <a href="${problemStats}">Problem Statistics</a>
    </li>
    <li class="divider"></li>

    <li class="drop-text" id="charts-btn" disabled="true"><a href="#!">Community Charts</a></li>
    <ul id="chart-options" >
        <li><a href="${notifiersChart}">Notifiers</a></li>
        <li><a href="${solversChart}">Solvers</a></li>
    </ul>


</ul>

<ul id="logout-dropdown" class="dropdown-content logout-drop">
    <li class="drop-text">
        <a href="${login}">Logout</a>
        <a href="${userProfile}">Profile</a>
    </li>
</ul>


<script language="JavaScript">
    $(".dropdown-button").dropdown();

    document.getElementById("charts-btn").addEventListener("mouseover", showOptions);
    document.getElementById("stats-btn").addEventListener("mouseover", hideOptions);

    function showOptions() {
        document.getElementById("chart-options").style.display = "block";
        document.getElementById("charts-btn").style.backgroundColor="#5a6068";
    }
    function hideOptions() {
        document.getElementById("chart-options").style.display = "none";
        document.getElementById("charts-btn").style.backgroundColor="#ffffff";
    }

    $(document).ready(function() {
        $(function(){
            $('#searchBtn').click(function() {
                var key =  document.getElementById("search").value;
                //console.log(key);
                if(key!=""){
                    Materialize.toast('Searching...', 4000,'green');
                    var rUrl = "/searchResults/" + key;
                    window.location.href =rUrl;
                }else{
                    Materialize.toast('Please input a key word!', 4000,'red');
                }
            });

        });

    });

</script>
