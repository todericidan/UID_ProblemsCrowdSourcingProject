<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Help</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/clujsolver.css" />
</head>
<jsp:include page="../../resources/components/navbar.jsp"/>

<body class="blue-grey lighten-5">
<div class="row">
    <div class="card container grey lighten-5">

        <div class="card-content card-top-title">
            <h3 class="petrol helpSection">Help</h3>
        </div>



        <h4 class="petrol helpSection">Signal a problem</h4>
        <p class="helpSection">You can signal a problem by clicking the orange button in the navigation bar that says 'New Problem'.
            You can also signal a problem by clicking the link on the map in City Overview that says 'Click to signal a problem'
            Then, you should enter the problem details from the form that appears. You can enter the location both by picking a spot
            on the map or typing the address of the place. Not enough time to type everything down? Don't worry, you can always save
            the problem as a draft and find it in your profile page.
        </p>



        <h4 class="petrol helpSection">View a problem's details</h4>

        <p class="helpSection">To view a problem's details, simply click on a problem on the map displayed in City Overview.
            Then, on the popup that apear, you get some problem details. To be able to assign the problem to yourself,
            to express your agreement or disagreement, to validate a solved problem and to join the problem's discussion
            pannel, click on the 'more details' button.
        </p>

        <h4 class="petrol helpSection">Agree or disagree to a problem</h4>
        <p class="helpSection">This makes the problem more visible to problem solvers. If a lot of people agree to some problem, then the level of popularity
            increases. It's more likely that a problem solver chooses to solve a more popular problem because it means it's more necessary
            for the community.
        </p>

        <h4 class="petrol helpSection">Assign a problem to yourself</h4>
        <p class="helpSection">In the problem details page described above, click on 'I will solve this'. Then, you can quickly find that problem
            in your profile page along with the other problems you signed up to solve, on the 'To do' section in the top-right side.
        </p>

        <h4 class="petrol helpSection">Mark a problem as solved</h4>
        <p class="helpSection">
            When you've completed solving a problem, click on the 'Mark as solved' button on that problem's page. You can easily find an assigned
            problem in the 'To Do' section from your profile page. After being mark as solved, the problem is submitted for validation
            for other users.
        </p>
        <h4 class="petrol helpSection">Cancel solving </h4>
        <p>In the problem details page described above, click on 'I am not able to solve this anymore'</p>

        <h4 class="petrol helpSection">Validate a solved problem</h4>
        <p class="helpSection">In the problem details page of a solved problem, click on 'Validate'. You should perform this
            action only when you notice that the problem was actually solved. After a problem gets a
            significant enough number of validations, it is marked as done and will no longer appear on the map.
        </p>

        <h4 class="petrol helpSection">Your Profile Page</h4>
        <p class="helpSection">To see your profile page, click on your name in the navigation bar above.</p>

        <h4 class="petrol helpSection">Badges</h4>
        <p class="helpSection">Badges are achievements you get when you reach certain milestones: both for solving and for notifying problems.
            The badges will be displayed on your profile page.
        </p>

        <h4 class="petrol helpSection">History of your contributions</h4>
        <p class="helpSection">A history of your contributions (Solved Problems, Problem Drafts, Actions and Comments) will be maintained in
            your profile page, below your badges.
        </p>

    </div>

</div>


</body>

</html>