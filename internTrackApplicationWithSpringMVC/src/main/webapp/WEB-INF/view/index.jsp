<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<body>
<a href="showForm">Hello World Form</a>
<br>
<a href="student/loadFormPage">Open Student Form</a>
<br>
<a href="${pageContext.request.contextPath}/internTrackApplication/openHomepage">OPEN HOME PAGE FOR INTERN APP</a>
<br>
<a href="${pageContext.request.contextPath}/TestServlet">TESTING</a>
<button onclick="window.location.href='internTrackApplication/loadMentorRegistrationPage'">HELLO BUTTON</button>
</body>
</html>
