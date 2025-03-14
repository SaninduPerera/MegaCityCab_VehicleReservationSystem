<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Receptionist Dashboard - MegaCityCab</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="dashboard-container">
        <div class="sidebar">
            <div class="logo">
                <h2>Mega City Cab</h2>
            </div>
            <div class="user-info">
                <div class="avatar">
                    <i class="fas fa-user-circle"></i>
                </div>
                <p>Welcome, ${sessionScope.employeeName}!</p>
            </div>
            
            <div class="logout-section">
                <a href="${pageContext.request.contextPath}/logout" class="logout-btn"><i class="fas fa-sign-out-alt"></i> Logout</a>
            </div>
        </div>
        
        <div class="main-content">
            <header class="dashboard-header">
                <h1>Receptionist Dashboard</h1>
                <div class="header-right">
                    <span class="date-time"><i class="far fa-clock"></i> March 14, 2025</span>
                </div>
            </header>
            
            <div class="dashboard-cards">
                <section id="customer" class="card">
                    <div class="card-header">
                        <h3><i class="fas fa-user-friends"></i> Customer Management</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/customer/add"><i class="fas fa-plus-circle"></i> Add New Customer</a></li>
                            <li><a href="${pageContext.request.contextPath}/customer"><i class="fas fa-list"></i> View Customers</a></li>
                        </ul>
                    </div>
                </section>
                
                <section id="booking" class="card">
                    <div class="card-header">
                        <h3><i class="fas fa-calendar-check"></i> Booking Management</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/booking/add"><i class="fas fa-plus-circle"></i> Create New Booking</a></li>
                            <li><a href="${pageContext.request.contextPath}/booking"><i class="fas fa-list"></i> View Bookings</a></li>
                        </ul>
                    </div>
                </section>
                
                <section id="billing" class="card">
                    <div class="card-header">
                        <h3><i class="fas fa-file-invoice-dollar"></i> Billing</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/bill"><i class="fas fa-file-invoice"></i> Manage Bills</a></li>
                        </ul>
                    </div>
                </section>
            </div>
        </div>
    </div>
</body>
</html>
