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
import java.util.List;

@WebServlet("/manageVehicles")
public class ManageVehiclesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private VehicleDAO vehicleDAO;

    public void init() {
        vehicleDAO = new VehicleDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("jsp/login.jsp");
            return;
        }
        
        // Only admin can see all vehicles
        if (!"Admin".equals(user.getRole())) {
            response.sendRedirect("dashboard.jsp");
            return;
        }

        List<Vehicle> vehicles = vehicleDAO.getAllVehicles();
        request.setAttribute("vehicles", vehicles);
        request.getRequestDispatcher("jsp/manageVehicles.jsp").forward(request, response);
    }
}