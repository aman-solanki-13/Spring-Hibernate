<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Mentor Landing Page</title>
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
    function showInternDetailDiv(){
        document.getElementById("internDetailDiv").style.display = "block"
        document.getElementById("assignmentStatusDiv").style.display = "none";
        document.getElementById("giveAssignmentDiv").style.display = "none";
        document.getElementById("viewDailyStatusDiv").style.display = "none";
    }
    function showAssignmentStatusDiv(){
        document.getElementById("internDetailDiv").style.display = "none";
        document.getElementById("assignmentStatusDiv").style.display = "block";
        document.getElementById("giveAssignmentDiv").style.display = "none";
        document.getElementById("viewDailyStatusDiv").style.display = "none";
    }
    function showGiveAssignmentDiv(){
        document.getElementById("internDetailDiv").style.display = "none";
        document.getElementById("assignmentStatusDiv").style.display = "none";
        document.getElementById("giveAssignmentDiv").style.display = "block";
        document.getElementById("viewDailyStatusDiv").style.display = "none";
    }
    function showDailyStatusDiv(){
        document.getElementById("internDetailDiv").style.display = "none";
        document.getElementById("assignmentStatusDiv").style.display = "none";
        document.getElementById("giveAssignmentDiv").style.display = "none";
        document.getElementById("viewDailyStatusDiv").style.display = "block";
    }
</script>

<body>
<nav class="navbar navbar-light navbar-expand-md">
    <div class="container-fluid"><a class="navbar-brand" href="#">INTERN TRACK APPLICATION</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link active" href="#">First Item</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Second Item</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Third Item</a></li>
            </ul>
        </div>
    </div>
</nav>
<div id="mentorCenterDiv" class="row">
    <div id="mentorLeftDiv" class="leftCol">
        <button onclick="showInternDetailDiv()" class="btn btn-primary" id="showInternDetails" type="button">intern detail</button>
        <button onclick="showAssignmentStatusDiv()" class="btn btn-primary" id="assignmentStatus" type="button">assginment status</button>
        <button onclick="showGiveAssignmentDiv()" class="btn btn-primary" id="giveAssignment" type="button">give assignment</button>
        <button onclick="showDailyStatusDiv()" class="btn btn-primary" id="viewDailyStatus" type="button">view daily status</button>
        <button onclick="window.location.href='/SpringMVCDemo/'" class="btn btn-primary logoutButton" type="button">logout</button></div>
    <div id="mentorRightDiv" class="rightCol">
        <h1 id="mentorWelcomeHeader">WELCOME:&nbsp;${mentorObject.mentorName}, InternOf:  ${internObject.interName}</h1>
        <div id="internDetailDiv" style="display: none">
            <input type="text" id="nameInput" class="internDetailField" value="${internObject.interName}" disabled>
            <input type="email" id="emailDetail" class="internDetailField" value="${internObject.internId}" disabled>
            <input type="text" id="genderDetail" class="internDetailField" value="${internObject.internGender}" disabled>
        </div>
        <div id="assignmentStatusDiv"  style="display: none">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Given To</th>
                    <th scope="col">Status</th>
                    <th scope="col">Date</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${assignmentList}" var="assignment">
                    <tr>
                        <th scope="row">${assignment.assignmentID}</th>
                        <td>${assignment.assignmentName}</td>
                        <td>${assignment.givenTo}</td>
                        <td>${assignment.assignmentStatus}</td>
                        <td>${assignment.assignmentDateTime}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div id="giveAssignmentDiv"  style="display: none">
            <form id="giveAssignmentForm" action="<c:url value="giveAssignment/${mentorObject.mentorOf}/${mentorObject.mentorName}"/>">
                <label class="form-label" id="assignmentLabel">Assignment:&nbsp;&nbsp;</label>
                <textarea name="assignmentTextArea" class="form-control" id="giveAssignmentTextarea"></textarea>
                <button class="btn btn-primary" id="assignmentSubmitButton" type="submit">submit</button>
            </form>
        </div>
        <div id="viewDailyStatusDiv"  style="display: none">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Status</th>
<%--                    <th scope="col">Status of</th>--%>
                    <th scope="col">Date</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${dailyStatusList}" var="dailyStaus">
                    <tr>
                        <th scope="row">${dailyStaus.id}</th>
                        <td>${dailyStaus.dailyStatus}</td>
<%--                        <td>${dailyStaus.statusOf}</td>--%>
                        <td>${dailyStaus.statusDateTime}</td>
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