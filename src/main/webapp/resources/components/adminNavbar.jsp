<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:url var="newProblem" value="/newProblem"/>
<c:url var="cityOverview" value="/admin"/>
<c:url var="recurrent" value="/recurrent"/>
<c:url var="export" value="/exportStatistics"/>

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

                <li><a href="${cityOverview}">Admin dashboard</a></li>
                <li><a href="${recurrent}">Handle recurrent problems</a></li>
                <li><a href="${export}">Export Statistics</a></li>
            </ul>
        </div>
    </div>

</nav>

