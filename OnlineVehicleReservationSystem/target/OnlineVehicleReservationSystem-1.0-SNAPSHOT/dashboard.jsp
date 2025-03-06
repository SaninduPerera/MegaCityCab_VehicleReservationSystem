<%@ page import="com.megacitycab.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <h1>Welcome, <%= user.getFullName() %>!</h1>
    <a href="logout.jsp">Logout</a>
</body>
</html>
