<%-- src/main/webapp/jsp/login.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - MegaCityCab</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
    <div class="city-backdrop"></div>
    <div class="login-container">
        <div class="login-header">
            <h1>Mega City Cab</h1>
            <h2>Welcome Back</h2>
            <p>Login to continue to your account</p>
        </div>
        
        <div class="login-form">
            <% if (request.getAttribute("errorMessage") != null) { %>
                <div class="error-message">
                    <%= request.getAttribute("errorMessage") %>
                </div>
            <% } %>
            
            <form action="${pageContext.request.contextPath}/login" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" placeholder="Enter your username" required>
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required>
                </div>
                
                <div class="form-group">
                    <button type="submit">Login</button>
                </div>
            </form>
            
            <div class="footer-text">
                © 2025 MegaCityCab. All rights reserved.
            </div>
        </div>
    </div>
</body>
</html>