<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!-- searchTicket.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search Ticket</title>
</head>
<body>
    <h2>Search Ticket</h2>
    <form action="/searchTicket" method="get">
        <label for="ticketId">Ticket ID:</label>
        <input type="text" id="ticketId" name="ticketId" required>
        <button type="submit">Search</button>
    </form>

    <!-- Display ticket details if available -->
    <c:if test="${not empty ticket}">
        <h3>Ticket Details</h3>
        <p><strong>Ticket ID:</strong> ${ticket.id}</p>
        <p><strong>Name:</strong> ${ticket.name}</p>
        <p><strong>Age:</strong> ${ticket.age}</p>
        <p><strong>From:</strong> ${ticket.from}</p>
        <p><strong>To:</strong> ${ticket.to}</p>
        <p><strong>Cost:</strong> ${ticket.cost}</p>
        <!-- Add more fields as necessary -->
    </c:if>

    <!-- Display message if ticket not found -->
    <c:if test="${empty ticket}">
        <p>Ticket not found with ID: ${search}</p>
    </c:if>
</body>
</html>
