<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.megacitycab.model.Booking" %>

<%
    List<Booking> bookings = (List<Booking>) session.getAttribute("bookings");
    if (bookings == null) {
        bookings = new ArrayList<>();
    }
%>

<table>
    <tr>
        <th>Pickup Location</th>
        <th>Drop Location</th>
        <th>Booking Time</th>
        <th>Status</th>
    </tr>
    <% for (Booking booking : bookings) { %>
        <tr>
            <td><%= booking.getPickupLocation() %></td>
            <td><%= booking.getDropLocation() %></td>
            <td><%= booking.getBookingTime() %></td>
            <td><%= booking.getStatus() %></td>
        </tr>
    <% } %>
</table>