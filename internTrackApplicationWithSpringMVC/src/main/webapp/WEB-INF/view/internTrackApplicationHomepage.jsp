<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Intern Track Application</title>
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
<script>
    function resetLoginForm(){
        document.getElementById("mentorLoginForm").reset();
        document.getElementById("internLoginForm").reset();

    }
    <%--function internDetailVerify(){--%>
    <%--    const internList = [${internList}];--%>
    <%--    var internID = document.getElementById("inputEmail");--%>
    <%--    var internPass = document.getElementById("inputPassword");--%>

    <%--    <c:forEach items="${internList}" var="internObject">--%>
    <%--        <c:if test="${internObject.interName} == "--%>
    <%--    </c:forEach>--%>
    <%--}--%>

</script>

<body>
<nav class="navbar navbar-light navbar-expand-md border rounded-0">
    <div class="container-fluid"><a class="navbar-brand" href="#"><strong>Intern Track Application</strong></a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link active" href="#">&nbsp;About</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Second Item</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Third Item</a></li>
            </ul>
        </div>
    </div>
</nav>
<div id="centerDiv" class="row">
    <div id="leftDiv" class="leftCol">
        <div class="login-card">
            <img class="profile-img-card" src="<c:url value="/resources/img/mentorICCCON.jpeg"/>"/>
            <form class="form-signin" id="mentorLoginForm" action="internTrackApplication/processMentorLogin" method="post">
                <span class="reauth-email"> </span>
                <input name="mentorId" class="form-control" type="email" id="inputEmail-1" required="" placeholder="Mentor Login ID" autofocus="">
                <input name="mentorPassword" class="form-control" type="password" id="inputPassword-1" required="" placeholder="Password">
                <div class="checkbox">
                </div><button class="btn btn-primary btn-lg d-block btn-signin w-100" type="submit">LOGIN</button>
            </form>
            <div class="row">
                <div class="col"><button class="btn btn-primary fs-6" id="newMentorButton" type="button"  onclick="window.location.href='internTrackApplication/openMentorRegistrationPage'">NEW MENTOR ?</button>
                    <button class="btn btn-primary fs-6" id="mentorResetButton" type="reset" onclick="resetLoginForm()">RESET</button></div>
            </div>
        </div>
    </div>
    <div id="rightDiv" class="rightCol">
        <div class="login-card">
            <img class="profile-img-card" src="<c:url value="/resources/img/internICOOOON.png"/>"/>
            <form class="form-signin" id="internLoginForm" action="internTrackApplication/processInternLogin" method="get">
                <span class="reauth-email"> </span>
                <input name="internId" class="form-control" type="email" id="inputEmail" required="" placeholder="Intern Login ID" autofocus="">
                <input name="internPassword" class="form-control" type="password" id="inputPassword" required="" placeholder="Password">
                <div class="checkbox"></div>
                <button class="btn btn-primary btn-lg d-block btn-signin w-100" type="submit">LOGIN</button>
            </form>
            <div class="row">
                <div class="col">
                    <button class="btn btn-primary fs-6" id="newIntern" type="button" onclick="window.location.href='internTrackApplication/openInternRegistrationPage'">NEW INTERN ?</button>
                    <button class="btn btn-primary fs-6" id="internResetButton" type="reset" onclick="resetLoginForm()">RESET</button></div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/Minimalistic--Responsive-Login.js"/>"></script>
</body>

</html>