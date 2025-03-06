<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <h2>Login</h2>
    <% if(request.getParameter("error") != null) { %>
        <p style="color: red;">Invalid Username or Password</p>
    <% } %>
    <form action="../login" method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
