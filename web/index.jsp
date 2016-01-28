<%-- 
    Document   : index
    Created on : 08.01.2016, 4:14:17
    Author     : Sasha
<c:set var="language" value="en" scope="session" />
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" /> 
<fmt:setBundle basename="controller.properties.text" />

<!DOCTYPE html>
<html>
    <head>
        <title>Tulip</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <jsp:forward page="/servlet" >
            <jsp:param name="getAction" value="home" />
            <jsp:param name="language" value="en" />
        </jsp:forward>
    </body>
</html>
