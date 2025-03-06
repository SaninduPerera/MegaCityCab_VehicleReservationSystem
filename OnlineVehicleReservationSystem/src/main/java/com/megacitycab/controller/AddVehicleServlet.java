package com.megacitycab.controller;

import com.megacitycab.dao.VehicleDAO;
import com.megacitycab.model.Vehicle;
import com.megacitycab.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/addVehicle")
public class AddVehicleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private VehicleDAO vehicleDAO;

    public void init() {
        vehicleDAO = new VehicleDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User adminUser = (User) session.getAttribute("user");

        if (adminUser == null || !"Admin".equals(adminUser.getRole())) {
            response.sendRedirect("jsp/login.jsp");
            return;
        }

        String vehicleNumber = request.getParameter("vehicleNumber");
        String model = request.getParameter("model");
        String type = request.getParameter("type");
        int numberOfSeats = Integer.parseInt(request.getParameter("numberOfSeats"));
        boolean available = Boolean.parseBoolean(request.getParameter("available"));

        Vehicle vehicle = new Vehicle(0, vehicleNumber, model, type, numberOfSeats, available);

        if (vehicleDAO.addVehicle(vehicle)) {
            response.sendRedirect("manageVehicles");
        } else {
            request.setAttribute("errorMessage", "Failed to add vehicle");
            request.getRequestDispatcher("jsp/addVehicle.jsp").forward(request, response);
        }
    }
}