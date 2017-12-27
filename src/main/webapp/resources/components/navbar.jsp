<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<nav class="cyan darken-3">
    <div class="nav-wrapper navbar">
        <a href="#" class="brand-logo logo"><img class="logo-img" src="${pageContext.request.contextPath}/resources/img/logo.png"></img>
        </a>

        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a class="waves-effect waves-light btn amber darken-1">New Problem</a></li>
            <li class="card search-bar grey lighten-5">
                <form>
                    <div class="input-field">
                        <input id="search" type="search" required>
                        <i class="material-icons cyan-text text-darken-4">search</i>
                    </div>
                </form>
            </li>

            <li class="active"><a>City Overview</a></li>
            <li><a>Statistics</a></li>
            <li><a>Help</a></li>
            <li><a>Contact</a></li>
            <li><a>Jane Doe</a></li>
            <img class="user-img" src="https://cdn3.iconfinder.com/data/icons/business-round-flat-vol-1-1/36/user_account_profile_avatar_person_student_female-512.png"></img>
        </ul>
    </div>
</nav>
