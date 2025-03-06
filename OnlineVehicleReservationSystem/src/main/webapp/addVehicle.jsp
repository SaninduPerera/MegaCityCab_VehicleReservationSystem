<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.megacitycab.model.User" %>
<%
    User adminUser = (User) session.getAttribute("user");
    if (adminUser == null || !"Admin".equals(adminUser.getRole())) {
        response.sendRedirect("jsp/login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Vehicle</title>
</head>
<body>
    <h2>Add a New Vehicle</h2>
    <form action="addVehicle" method="post">
        <label>Vehicle Number:</label>
        <input type="text" name="vehicleNumber" required><br>
        <label>Model:</label>
        <input type="text" name="model" required><br>
        <label>Seats:</label>
        <input type="number" name="numberOfSeats" required><br>
        <label>Availability:</label>
        <select name="availability">
            <option value="Available">Available</option>
            <option value="Unavailable">Unavailable</option>
        </select><br>
        <input type="submit" value="Add Vehicle">
    </form>
</body>
</html>
