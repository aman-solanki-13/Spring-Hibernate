<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Intern Landing Page</title>
    <!--
    <link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;600&amp;display=swap">
    <link rel="stylesheet" href="<c:url value="/resources/css/Login-Form-Clean.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/loginCenter2.css"/>">
     ADD Login-Center.css -- NOT WORKING WHY ?
    <link rel="stylesheet" href="<c:url value="/resources/css/login-form-1.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/login-form.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/Login-Red.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/Minimalistic--Responsive-Login.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/Navigation-Clean.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/Navigation-with-Button.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/sidebar-1.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/sidebar.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/trelyco-login-vertical-horizontal-1.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/trelyco-login-vertical-horizontal.css"/>">
    -->
    <link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;600&amp;display=swap">
    <link rel="stylesheet" href="<c:url value="/resources/css/loginFormClean.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/loginCenter2.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/loginForm1.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/loginForm3.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/loginRed.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/minRespLogin.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/navigationClean.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/navigationCleanButton.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/sidebar3.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/sidebar4.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/trelycoLoginVerticalHorizontal.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/trelycoLoginVerticalHorizontal1.css"/>">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<script>
    function showDailyStatusDiv(){
        document.getElementById("completedAssignmentDiv").style.display = "none";
        document.getElementById("incompleteAssignmentDiv").style.display = "none"
        document.getElementById("dailyStatusDiv").style.display = "block";
    }
    function showCompletedAssignmentDiv(){
        document.getElementById("dailyStatusDiv").style.display = "none";
        document.getElementById("incompleteAssignmentDiv").style.display = "none"
        document.getElementById("completedAssignmentDiv").style.display = "block";
    }
    function showIncompleteAssignmentDiv(){
        document.getElementById("dailyStatusDiv").style.display = "none";
        document.getElementById("completedAssignmentDiv").style.display = "none";
        document.getElementById("incompleteAssignmentDiv").style.display ="block";
    }
</script>

<body>
<nav class="navbar navbar-light navbar-expand-md">
    <div class="container-fluid"><a class="navbar-brand" href="#">intern track application</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link active" href="#">First Item</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Second Item</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Third Item</a></li>
            </ul>
        </div>
    </div>
</nav>

<div id="internCenterDiv" class="row">
    <div id="internLeftDiv" class="leftCol">
        <button onclick="showDailyStatusDiv()" class="btn btn-primary asideButtons" type="button">Daily status</button>
        <button onclick="showCompletedAssignmentDiv()" class="btn btn-primary asideButtons" type="button">completed assigns</button>
        <button onclick="showIncompleteAssignmentDiv()"  class="btn btn-primary asideButtons" type="button">incomplete assigns</button>
        <button onclick="window.location.href='/SpringMVCDemo/'" class="btn btn-primary logoutButton" type="button">logout</button></div>
    <div id="internRightDiv" class="rightCol">

        <h1 id="internWelcomeHeader">Welcome:&nbsp;${internObject.interName}</h1>
        <div id="dailyStatusDiv" style="display: none">
            <form action="<c:url value="uploadDailyStatus/${internObject.internId}"/>">
                <label class="form-label" id="dailyStatusLabel">Daily Status :&nbsp;</label>
                <textarea name="uploadDailyStatus" id="dailyStatusFieldLabel" style="height: 20vh"></textarea>
                <!-- WORK TO BE DONE BELOW -->
                <button class="btn btn-primary" id="statusSubmitButton" type="submit">Submit</button>
            </form>
        </div>
        <div id="completedAssignmentDiv" style="display:none;">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Given By</th>
                    <th scope="col">Status</th>
                    <th scope="col">Date</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${completedAssignmentsList}" var="assignment">
                    <tr>
                        <th scope="row">${assignment.assignmentID}</th>
                        <td>${assignment.assignmentName}</td>
                        <td>${assignment.givenBy}</td>
                        <td>${assignment.assignmentStatus}</td>
                        <th>${assignment.assignmentDateTime}</th>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div id="incompleteAssignmentDiv" style="display: none" class="displayDiv">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
<%--                    <th scope="col">Given By</th>--%>
                    <th scope="col">Status</th>
                    <th scope="col">Date</th>
                    <th scope="col">Change Status</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${incompleteAssignmentList}" var="assignment">
                    <tr>
                        <th scope="row">${assignment.assignmentID}</th>
                        <td>${assignment.assignmentName}</td>
<%--                        <td>${assignment.givenBy}</td>--%>
                        <td>${assignment.assignmentStatus}</td>
                        <td>${assignment.assignmentDateTime}</td>
                        <td><a href="<c:url value="markAssignmentComplete/${assignment.assignmentID}"/>">Mark Complete</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/Minimalistic--Responsive-Login.js"/>"></script>

</body>

</html>