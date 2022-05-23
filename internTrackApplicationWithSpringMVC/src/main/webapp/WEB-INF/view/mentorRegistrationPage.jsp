<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Mentor Registration</title>
    <!--
    <link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;600&amp;display=swap">
    <link rel="stylesheet" href="<c:url value="/resources/css/Login-Center.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/login-form-1.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/Login-Form-Clean.css"/>">
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

<body>
<nav class="navbar navbar-light navbar-expand-md">
    <div class="container-fluid"><a class="navbar-brand" href="#"><strong>INTERN TRACK APPLICATION</strong></a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link active" href="#">About</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Second Item</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Third Item</a></li>
            </ul>
        </div>
    </div>
</nav><div id="registerRow" class="row register-form" background = "<c:url value="/resources/img/background-2.jpg"/>" width = "100%" height="100%">
    <div class="col-md-8 offset-md-2">
        <form class="custom-form" action="processMentorRegistration" method="get">
            <h1>Mentor Register Form</h1>
            <div class="row form-group">
                <div class="col-sm-4 label-column"><label id="mentorNameFieldLabel" class="col-form-label" style="position: initial;">NAME</label></div>
                <div class="col-sm-6 input-column"><input name="mentorName" class="form-control" type="text" /></div>
            </div>
            <div class="row form-group">
                <div class="col-sm-4 label-column" style="position: initial;"><label id="mentorIdFieldLabel" class="col-form-label">MENTOR ID</label></div>
                <div class="col-sm-6 input-column"><input name="mentorId" class="form-control" type="email" /></div>
            </div>
            <div class="row form-group">
                <div id="mentorPassLabel" class="col-sm-4 label-column"><label id="mentorPasswordLabel" class="col-form-label">PASSWORD</label></div>
                <div class="col-sm-6 input-column"><input name="mentorPassword" class="form-control" type="password" /></div>
            </div>
            <div class="row form-group">
                <div class="col-sm-4 label-column"><label id="mentorRePasswordLabel" class="col-form-label">RE-ENTER PASSWORD</label></div>
                <div class="col-sm-6 input-column"><input name="mentorRePassword" class="form-control" type="password" /></div>
            </div>
            <div class="row">
                <div class="col col-sm-4 label-column"><label id="mentorOfLabel" class="col-form-label">MENTOR OF</label></div>
                <div class="col col-sm-6 input-column">
                    <div class="dropdown">
                        <button id="mentorOfDropdown" class="btn btn-primary dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button">Select intern </button>
                        <div class="dropdown-menu">
                            <select name="mentorOf" class="dropdown-item" >
<%--                                <select name="mentorOf" id="mentorOfDropdown" class="dropdown-item">--%>
                                <c:forEach items="${internList}" var="internName">
                                    <option class="dropdown-item" value="${internName.internId}">${internName.interName}</option>
                                </c:forEach>
                            </select>
<%--                            <a class="dropdown-item" href="#">Intern 1</a>--%>
<%--                            <a class="dropdown-item" href="#">Intern 2</a>--%>
<%--                            <a class="dropdown-item" href="#">Intern 3</a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <button id="submitButton" class="btn btn-primary" type="submit">Submit Form</button>
        </form>
    </div>
    <div class="col"></div>
</div>
<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/Minimalistic--Responsive-Login.js"/>"></script>
</body>

</html>