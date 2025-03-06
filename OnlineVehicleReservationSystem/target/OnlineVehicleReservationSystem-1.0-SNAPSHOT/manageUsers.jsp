<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.megacitycab.model.User" %>
<%
    User adminUser = (User) session.getAttribute("user");
    if (adminUser == null || !"Admin".equals(adminUser.getRole())) {
        response.sendRedirect("jsp/login.jsp");
        return;
    }

    List<User> users = (List<User>) request.getAttribute("users");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Users</title>
</head>
<body>
    <h2>User Management</h2>
    <table border="1">
        <tr>
            <th>Full Name</th>
            <th>Username</th>
            <th>Email</th>
            <th>Role</th>
        </tr>
        <% for (User user : users) { %>
            <tr>
                <td><%= user.getFullName() %></td>
                <td><%= user.getUsername() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getRole() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
