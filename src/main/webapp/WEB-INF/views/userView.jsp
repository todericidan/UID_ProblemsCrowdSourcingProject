<head>
    <title>My Profile</title>
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
    <div class="container grey lighten-5">

        <div class="profile-header grey lighten-5 card row">
            <div class="profile-header-section">
                <img class="user-img profile-picture" src="https://cdn3.iconfinder.com/data/icons/business-round-flat-vol-1-1/36/user_account_profile_avatar_person_student_female-512.png"></img>
            </div>

            <div class="profile-header-section profile-text">
                <h3>Jane Doe</h3>
                <h6>Prolbem Solver of the Month  <i class="material-icons">verified_user</i></h6>
            </div>

            <div class="profile-header-section">
                <h5>To do</h5>
                <ul class="collection">
                    <li>
                        <a class="collection-item avatar avatar-search bar">
                            <i class="material-icons circle">folder</i>

                            <div class="search-result">
                                <span class="title">Problem title</span>
                                <p>Category <br><span class="new badge"></span>
                                    Status: Unsolved, Urgency: Urgent
                                </p>
                            </div>
                            <div class="secondary-content modal-action btn-faded to-do-arrow"><i class="material-icons">arrow_forward</i></div>
                        </a>
                    </li>
                    <li>
                        <a class="collection-item avatar avatar-search">
                            <i class="material-icons circle">folder</i>

                            <div class="search-result">
                                <span class="title">Problem title</span>
                                <p>Category <br>
                                    Status: Unsolved, Urgency: Urgent
                                </p>
                            </div>
                            <div class="secondary-content modal-action btn-faded to-do-arrow"><i class="material-icons">arrow_forward</i></div>
                        </a>
                    </li>
                    <li>
                        <a class="collection-item avatar avatar-search">
                            <i class="material-icons circle">folder</i>

                            <div class="search-result">
                                <span class="title">Problem title</span>
                                <p>Category <br>
                                    Status: Unsolved, Urgency: Urgent
                                </p>
                            </div>
                            <div class="secondary-content modal-action btn-faded to-do-arrow"><i class="material-icons">arrow_forward</i></div>
                        </a>
                    </li>
                    <li>
                        <a class="collection-item avatar avatar-search">
                            <i class="material-icons circle">folder</i>

                            <div class="search-result">
                                <span class="title">Problem title</span>
                                <p>Category <br>
                                    Status: Unsolved, Urgency: Urgent
                                </p>
                            </div>
                            <div class="secondary-content modal-action btn-faded to-do-arrow"><i class="material-icons">arrow_forward</i></div>
                        </a>
                    </li>

                </ul>
            </div>

        </div>


    </div>
    <div class="contributions">
        <div class="card">
            <div class="card-content">
                <h5>My Contributions</h5>
            </div>
            <div class="card-tabs">
                <ul class="tabs tabs-fixed-width">
                    <li class="tab"><a class="active" href="#solvedProblems">Solved Problems</a></li>
                    <li class="tab"><a href="#problemDrafts">Problem Drafts</a></li>
                    <li class="tab"><a href="#comments">Comments and Reactions</a></li>
                </ul>
            </div>
            <div class="card-content grey lighten-4">
                <div id="solvedProblems">
                    <div class="collection">
                        <a href="#!" class="collection-item">
                            <span class="new badge" data-badge-caption="Non Regulatory Parking"></span>
                            <h5>A car is parked here since forever</h5>
                            <i class="material-icons secondary-content btn-faded listing-arrow">arrow_forward</i>
                            Signaled at Ion Matei street, no 12 on January 2, 2016
                            <br>
                            Solved on January 6, 2016 | Validated by 20 people
                        </a>
                        <a href="#!" class="collection-item">
                            <span class="new badge" data-badge-caption="Non Regulatory Parking"></span>
                            <h5>A car is parked here since forever</h5>
                            <i class="material-icons secondary-content btn-faded listing-arrow">arrow_forward</i>
                            Signaled at Ion Matei street, no 12 on January 2, 2016
                            <br>
                            Solved on January 6, 2016 | Validated by 20 people
                        </a>
                        <a href="#!" class="collection-item">
                            <span class="new badge" data-badge-caption="Non Regulatory Parking"></span>
                            <h5>A car is parked here since forever</h5>
                            <i class="material-icons secondary-content btn-faded listing-arrow">arrow_forward</i>
                            Signaled at Ion Matei street, no 12 on January 2, 2016
                            <br>
                            Solved on January 6, 2016 | Validated by 20 people
                        </a>
                        <a href="#!" class="collection-item">
                            <span class="new badge" data-badge-caption="Non Regulatory Parking"></span>
                            <h5>A car is parked here since forever</h5>
                            <i class="material-icons secondary-content btn-faded listing-arrow">arrow_forward</i>
                            Signaled at Ion Matei street, no 12 on January 2, 2016
                            <br>
                            Solved on January 6, 2016 | Validated by 20 people
                        </a>
                    </div>
                </div>

                <div id="problemDrafts">
                    <div class="collection">
                        <a href="#!" class="collection-item">
                            <span class="new badge" data-badge-caption="Road problem"></span>
                            <h5>Broken road problem on Brassai street</h5>
                            <i class="material-icons secondary-content btn-faded listing-arrow"> arrow_forward</i>
                            Found at Brassai street, no 12 on January 2, 2016
                            <br>
                            <h6 class="btn-faded">Edit</h6>
                        </a>
                        <a href="#!" class="collection-item">
                            <span class="new badge" data-badge-caption="Road problem"></span>
                            <h5>Broken road problem on Brassai street</h5>
                            <i class="material-icons secondary-content btn-faded listing-arrow"> arrow_forward</i>
                            Found at Brassai street, no 12 on January 2, 2016
                            <br>
                            <h6 class="btn-faded">Edit</h6>
                        </a>
                        <a href="#!" class="collection-item">
                            <span class="new badge" data-badge-caption="Road problem"></span>
                            <h5>Broken road problem on Brassai street</h5>
                            <i class="material-icons secondary-content btn-faded listing-arrow"> arrow_forward</i>
                            Found at Brassai street, no 12 on January 2, 2016
                            <br>
                            <h6 class="btn-faded">Edit</h6>
                        </a>
                    </div>
                </div>

                <div id="comments">
                    <div class="collection">
                        <a href="#!" class="collection-item">
                            <span class="new badge" data-badge-caption="Comment"></span>
                            <h5>Broken road problem on Brassai street</h5>
                            <i class="material-icons secondary-content btn-faded listing-arrow"> arrow_forward</i>
                            <span class="btn-faded">"I also noticed it today. The problem is still there."</span>
                            <br>
                        </a>
                        <a href="#!" class="collection-item">
                            <span class="new badge" data-badge-caption="Comment"></span>
                            <h5>Manhole at Mihai Viteazu Street</h5>
                            <i class="material-icons secondary-content btn-faded listing-arrow"> arrow_forward</i>
                            <span class="btn-faded">"Finally this problem is fixed"</span>
                            <br>
                        </a>
                        <a href="#!" class="collection-item">
                            <span class="new badge green" data-badge-caption="Validation"></span>
                            <h5>Manhole at Mihai Viteazu Street</h5>
                            <i class="material-icons secondary-content btn-faded listing-arrow"> arrow_forward</i>
                            <br>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>


</body>




</html>