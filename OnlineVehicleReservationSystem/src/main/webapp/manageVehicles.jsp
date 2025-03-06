<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.megacitycab.model.Vehicle" %>
<%@ page import="com.megacitycab.model.User" %>
<%
    User adminUser = (User) session.getAttribute("user");
    if (adminUser == null || !"Admin".equals(adminUser.getRole())) {
        response.sendRedirect("jsp/login.jsp");
        return;
    }

    List<Vehicle> vehicles = (List<Vehicle>) request.getAttribute("vehicles");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Vehicles</title>
</head>
<body>
    <h2>Vehicle Management</h2>
    <table border="1">
        <tr>
            <th>Vehicle Number</th>
            <th>Model</th>
            <th>Seats</th>
            <th>Availability</th>
        </tr>
        <% for (Vehicle vehicle : vehicles) { %>
            <tr>
                <td><%= vehicle.getVehicleNumber() %></td>
                <td><%= vehicle.getModel() %></td>
                <td><%= vehicle.getNumberOfSeats() %></td>
                <td><%= vehicle.isAvailable() ? "Available" : "Unavailable" %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>