<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
Hello World of Spring!!!
<br><br>

<!-- READING THE FORM DATA... THE PAGE helloworld-form.jsp will send it's data to the url /processForm i.e this page-->
<!-- RETRIEVING THE DATA -->
Student Name: ${param.studentName}
<br><br>
Message for student: ${message} <!-- Reading the data of the field with name studentName -->
</body>
</html>
