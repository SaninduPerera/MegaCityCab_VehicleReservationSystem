package com.megacitycab.controller;

import com.megacitycab.dao.BookingDAO;
import com.megacitycab.dao.VehicleDAO;
import com.megacitycab.model.Booking;
import com.megacitycab.model.User;
import com.megacitycab.model.Vehicle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;

@WebServlet("/bookVehicle")
public class BookVehicleServlet extends HttpServlet {
    private BookingDAO bookingDAO;
    private VehicleDAO vehicleDAO;

    public void init() {
        bookingDAO = new BookingDAO();
        vehicleDAO = new VehicleDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        int vehicleId = Integer.parseInt(request.getParameter("vehicleId"));
        Vehicle vehicle = vehicleDAO.getVehicleById(vehicleId);

        if (vehicle == null || !vehicle.isAvailable()) {
            request.setAttribute("errorMessage", "Vehicle is not available.");
            request.getRequestDispatcher("bookVehicle.jsp").forward(request, response);
            return;
        }

        String pickupLocation = request.getParameter("pickupLocation");
        String dropLocation = request.getParameter("dropLocation");

        Booking booking = new Booking(
            0, 
            user.getId(),  // Use user ID instead of username
            vehicleId, 
            pickupLocation, 
            dropLocation, 
            new Timestamp(System.currentTimeMillis()), 
            "Pending"
        );

        if (bookingDAO.bookVehicle(booking)) {
            response.sendRedirect("viewBookings");
        } else {
            request.setAttribute("errorMessage", "Booking failed. Try again.");
            request.getRequestDispatcher("bookVehicle.jsp").forward(request, response);
        }
    }
}
