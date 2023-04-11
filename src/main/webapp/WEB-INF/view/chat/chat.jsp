<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forum de discussion</title>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
    <h1>Forum de discussion</h1>

    <form method="post">
        <textarea class="col-12" rows="3" name="message"></textarea>
        <br>
        <button class="btn btn-primary" type="submit">Poster</button>
    </form>
    <hr>
	<h2>Derniers messages</h2>
	<ul>
	    <%-- <%
	        // Récupération des messages
	        List<String> messages = (List<String>) request.getAttribute("messages");
	
	        // Affichage des messages
	        for (String message : messages) {
	            out.println("<li>" + message + "</li>");
	        }
	    %>  --%>
	   
        <c:forEach var="message" items="${messages}">
            <h6>${message}</h6>
        </c:forEach>
   
	</ul>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>