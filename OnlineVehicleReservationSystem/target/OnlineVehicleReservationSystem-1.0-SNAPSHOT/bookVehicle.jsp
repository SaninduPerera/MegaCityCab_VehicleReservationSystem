<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.megacitycab.model.Vehicle" %>
<%@ page import="com.megacitycab.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("jsp/login.jsp");
        return;
    }

    List<Vehicle> vehicles = null;
    Object vehiclesObj = request.getAttribute("vehicles");
    if (vehiclesObj instanceof List) {
        vehicles = (List<Vehicle>) vehiclesObj;
    }
    
    if (vehicles == null) {
        vehiclesObj = session.getAttribute("vehicles");
        if (vehiclesObj instanceof List) {
            vehicles = (List<Vehicle>) vehiclesObj;
        }
    }
    
    if (vehicles == null) {
        vehicles = new ArrayList<>();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Book a Vehicle</title>
</head>
<body>
    <h2>Book a Vehicle</h2>
    <form action="bookVehicle" method="post">
        <label>Select Vehicle:</label>
        <select name="vehicleId" required>
            <% for (Vehicle vehicle : vehicles) { %>
                <option value="<%= vehicle.getId() %>"><%= vehicle.getModel() %> - <%= vehicle.getVehicleNumber() %></option>
            <% } %>
        </select><br>
        <label>Pickup Location:</label>
        <input type="text" name="pickupLocation" required><br>
        <label>Drop Location:</label>
        <input type="text" name="dropLocation" required><br>
        <input type="submit" value="Book Now">
    </form>
</body>
</html>