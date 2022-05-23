<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Student Form</title>
</head>
<body>
<form:form action="processForm" modelAttribute="studentModel">
    First Name: <form:input path="studentFirstName"/>
    <br>
    Last Name: <form:input path="studentLastName"/>
    <br>
    Student Age: <form:input path="studentAge"/>
    <br>
    Select State:
    <form:select path="stateNames">
        <form:options items="${studentModel.stateNames}"/>
</form:select>
    <br>
    <input type="submit"/>
</form:form>
</body>
</html>
