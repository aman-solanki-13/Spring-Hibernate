<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Intern Registration Page</title>
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
                <li class="nav-item"><a class="nav-link active" href="#">First Item</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Second Item</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Third Item</a></li>
            </ul>
        </div>
    </div>
</nav>
<div>
    <div class="row register-form">
        <div class="col-md-8 offset-md-2">
            <form class="custom-form" method="post" action="processInternRegistration">
                <h1>intern Register Form</h1>
                <div class="row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" id="internName">Name </label></div>
                    <div class="col-sm-6 input-column"><input name="internName" class="form-control" type="text"></div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" id="internID">INTERN ID</label></div>
                    <div class="col-sm-6 input-column"><input name="internId" class="form-control" type="email"></div>
                </div>
                <div class="row form-group">
                    <div class="col col-sm-4 label-column">
                        <label class="col-form-label" id="internGender">Gender</label>
                    </div>
                    <div class="col col-sm-6 input-column" >
                        <input type="radio" name="internGender" value="Male" id="maleRadio" style="position: relative; width: 15px; height: 15px">
                        <label for="maleRadio" style="position: initial">Male</label>
                        <input type="radio" id="femaleRadio" name="internGender" value="Female" style="position:relative; width: 15px; height: 15px">
                        <label for="femaleRadio" style="position: initial">Female</label>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" id="internPassword">Password </label></div>
                    <div class="col-sm-6 input-column"><input name="internPassword" class="form-control" type="password"></div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-4 label-column"><label class="col-form-label" id="internRePassword">Re-Enter Password </label></div>
                    <div class="col-sm-6 input-column"><input name="internReEnterPassword" class="form-control" type="password"></div>
                </div><button class="btn btn-light submit-button" id="sumitButton" type="submit">Submit Form</button>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/Minimalistic--Responsive-Login.js"/>"></script>
</body>

</html>