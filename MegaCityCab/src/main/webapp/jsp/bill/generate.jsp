<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generate Bill - MegaCityCab</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/customer-form.css">
    <style>
        .checkbox-container {
            display: flex;
            align-items: center;
        }
        
        .custom-checkbox {
            appearance: none;
            -webkit-appearance: none;
            width: 20px;
            height: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-right: 8px;
            cursor: pointer;
            position: relative;
            background-color: white;
        }
        
        .custom-checkbox:checked {
            background-color: #4a90e2;
            border-color: #4a90e2;
        }
        
        .custom-checkbox:checked:after {
            content: '✓';
            position: absolute;
            color: white;
            font-size: 14px;
            top: 0px;
            left: 4px;
        }
        
        .checkbox-label {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Generate Bill</h1>
        <!-- Error Message Display -->
        <c:if test="${not empty param.error}">
            <div class="error">${param.error}</div>
        </c:if>
        <form action="${pageContext.request.contextPath}/bill/generate" method="post">
            <div class="form-group">
                <label>Booking:</label>
                <select id="bookingId" name="bookingId" required>
                    <option value="">Select Booking</option>
                    <c:forEach items="${bookings}" var="booking">
                        <option value="${booking.bookingId}">${booking.bookingNumber} - ${booking.pickupLocation} to ${booking.destination}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label>Waiting Hours:</label>
                <input type="number" name="waitingHours" step="0.1" value="0" required>
            </div>
            <div class="form-group">
                <label>Night Trip:</label>
                <div class="checkbox-container">
                    <input type="checkbox" name="isNightTrip" id="isNightTrip" class="custom-checkbox">
                    <label for="isNightTrip" class="checkbox-label">Yes, this is a night trip</label>
                </div>
            </div>
            <div class="form-group">
                <label>Discount Amount:</label>
                <input type="number" name="discountAmount" step="0.01" value="0">
            </div>
            <div class="form-group">
                <label>Discount Reason:</label>
                <input type="text" name="discountReason">
            </div>
            <div class="form-group">
                <label>Payment Method:</label>
                <select name="paymentMethod" required>
                    <option value="CASH">Cash</option>
                    <option value="CREDIT_CARD">Credit Card</option>
                    <option value="DEBIT_CARD">Debit Card</option>
                    <option value="MOBILE_PAYMENT">Mobile Payment</option>
                    <option value="CORPORATE_ACCOUNT">Corporate Account</option>
                </select>
            </div>
            <div class="form-group">
                <button type="submit" class="btn">Generate Bill</button>
                <a href="${pageContext.request.contextPath}/bill" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
    </div>
</body>
</html>