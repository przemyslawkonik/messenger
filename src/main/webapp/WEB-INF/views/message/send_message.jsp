<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Warsztat 6</title>
</head>
<body>
 <form:form action="${pageContext.request.contextPath}/messages/send" method="post" modelAttribute="message">
 <form:hidden path="sender" value="${sessionScope.user.id}"/>
 <form:hidden path="receiver" value="${receiver.id}"/>
 <form:textarea path="text" placeholder="insert text..."/><form:errors path="text"></form:errors><br>
 <input type="submit" value="Send to ${receiver.username}"/>
</form:form>
</body>
</html>