<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:url var="newProblem" value="/newProblem"/>
<c:url var="cityOverview" value="/problems"/>
<c:url var="problemStats" value="/problemStats"/>
<c:url var="solversChart" value="/chartSolvers"/>
<c:url var="notifiersChart" value="/chartNotifiers"/>
<c:url var="search" value="/searchResults"/>

<style type="text/css">

#chart-options{
    display:none
}
</style>

<nav class="cyan darken-3">
    <div class="navbar-fixed">
        <div class="nav-wrapper navbar">
            <a href="${cityOverview}" class="brand-logo logo"><img class="logo-img" src="${pageContext.request.contextPath}/resources/img/logo.png"></img>
            </a>

            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a class="waves-effect waves-light btn amber darken-1" href="${newProblem}" >New Problem</a></li>
                <li class="card search-bar grey lighten-5">
                    <form>
                        <div class="input-field">
                            <input id="search" type="search" required>
                            <i class="material-icons cyan-text text-darken-4">search</i>
                        </div>
                    </form>
                </li>

                <li><a href="${cityOverview}">City Overview</a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-button" href="#!" data-activates="statistics-dropdown">Statistics</a></li>
                <li><a>Help</a></li>
                <li><a>Contact</a></li>
                <li><a>Jane Doe</a></li>
                <img class="user-img" src="https://cdn3.iconfinder.com/data/icons/business-round-flat-vol-1-1/36/user_account_profile_avatar_person_student_female-512.png"></img>
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

</script>
