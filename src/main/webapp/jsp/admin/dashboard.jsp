<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - MegaCityCab</title>
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
                <h1>Admin Dashboard</h1>
                <div class="header-right">
                    <span class="date-time"><i class="far fa-clock"></i> March 14, 2025</span>
                </div>
            </header>
            
            <div class="dashboard-cards">
                <section id="employee" class="card">
                    <div class="card-header">
                        <h3><i class="fas fa-users"></i> Employee Management</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/admin/employee/add"><i class="fas fa-plus-circle"></i> Add New Employee</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/employee"><i class="fas fa-list"></i> View All Employees</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/employee"><i class="fas fa-trash-alt"></i> Update/Delete Employee</a></li>
                        </ul>
                    </div>
                </section>
                
                <section id="system" class="card">
                    <div class="card-header">
                        <h3><i class="fas fa-cogs"></i> System Management</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/admin/system-log"><i class="fas fa-clipboard-list"></i> View System Logs</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/roles"><i class="fas fa-user-shield"></i> Manage Roles and Permissions</a></li>
                        </ul>
                    </div>
                </section>
                
                <section id="customer" class="card">
                    <div class="card-header">
                        <h3><i class="fas fa-user-friends"></i> Customer Management</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/customer"><i class="fas fa-list"></i> View All Customers</a></li>
                            <li><a href="${pageContext.request.contextPath}/customer/add"><i class="fas fa-plus-circle"></i> Add New Customer</a></li>
                            <li><a href="${pageContext.request.contextPath}/customer"><i class="fas fa-edit"></i> Update/Delete Customer</a></li>
                        </ul>
                    </div>
                </section>
                
                <section id="booking" class="card">
                    <div class="card-header">
                        <h3><i class="fas fa-calendar-check"></i> Booking Management</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/booking"><i class="fas fa-list"></i> View All Bookings</a></li>
                            <li><a href="${pageContext.request.contextPath}/booking/add"><i class="fas fa-plus-circle"></i> Create New Booking</a></li>
                            <li><a href="${pageContext.request.contextPath}/booking"><i class="fas fa-edit"></i> Update Booking</a></li>
                        </ul>
                    </div>
                </section>
                
                <section id="vehicle" class="card">
                    <div class="card-header">
                        <h3><i class="fas fa-car"></i> Vehicle Management</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/vehicle"><i class="fas fa-list"></i> View All Vehicles</a></li>
                            <li><a href="${pageContext.request.contextPath}/vehicle/add"><i class="fas fa-plus-circle"></i> Add New Vehicle</a></li>
                            <li><a href="${pageContext.request.contextPath}/vehicle"><i class="fas fa-edit"></i> Update/Delete Vehicle</a></li>
                        </ul>
                    </div>
                </section>
                
                <section id="driver" class="card">
                    <div class="card-header">
                        <h3><i class="fas fa-id-card"></i> Driver Management</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/driver"><i class="fas fa-list"></i> View All Drivers</a></li>
                            <li><a href="${pageContext.request.contextPath}/driver/add"><i class="fas fa-plus-circle"></i> Add New Driver</a></li>
                            <li><a href="${pageContext.request.contextPath}/driver"><i class="fas fa-edit"></i> Update/Delete Driver</a></li>
                        </ul>
                    </div>
                </section>
                
                <section id="billing" class="card">
                    <div class="card-header">
                        <h3><i class="fas fa-file-invoice-dollar"></i> Billing</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/bill"><i class="fas fa-list"></i> View All Bills</a></li>
                            <li><a href="${pageContext.request.contextPath}/bill/generate"><i class="fas fa-plus-circle"></i> Generate New Bill</a></li>
                            <li><a href="${pageContext.request.contextPath}/bill"><i class="fas fa-edit"></i> Update Payment Status</a></li>
                        </ul>
                    </div>
                </section>
                
                <section id="reports" class="card">
                    <div class="card-header">
                        <h3><i class="fas fa-chart-bar"></i> Reports</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/admin/reports/bookings"><i class="fas fa-file-alt"></i> Booking Reports</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/reports/revenue"><i class="fas fa-money-bill-wave"></i> Revenue Reports</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/reports/vehicles"><i class="fas fa-car"></i> Vehicle Reports</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/reports/drivers"><i class="fas fa-id-card"></i> Driver Reports</a></li>
                        </ul>
                    </div>
                </section>
            </div>
        </div>
    </div>
</body>
</html>
