<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Register - Vehicle Reservation System</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <h2>Register Here</h2>
    
    <% if(request.getParameter("error") != null) { %>
        <p style="color: red;">Registration failed. Try again.</p>
    <% } %>

    <form action="../register" method="post">
        Full Name: <input type="text" name="fullname" required><br>
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        Email: <input type="email" name="email" required><br>
        Role: 
        <select name="role">
            <option value="User">User</option>
            <option value="Admin">Admin</option>
        </select><br>
        <input type="submit" value="Register">
    </form>

    <br>
    <a href="login.jsp">Already have an account? Login here</a>
</body>
</html>
