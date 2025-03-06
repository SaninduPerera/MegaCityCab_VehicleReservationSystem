package com.megacitycab.dao;

import com.megacitycab.model.Vehicle;
import com.megacitycab.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class VehicleDAO {

    // Add new vehicle method
    public boolean addVehicle(Vehicle vehicle) {
        String sql = "INSERT INTO vehicles (vehicle_number, model, type, number_of_seats, available) VALUES (?, ?, ?, ?, ?)";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, vehicle.getVehicleNumber());
            stmt.setString(2, vehicle.getModel());
            stmt.setString(3, vehicle.getType());
            stmt.setInt(4, vehicle.getNumberOfSeats());
            stmt.setBoolean(5, vehicle.isAvailable());
            
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Get all vehicles
    public List<Vehicle> getAllVehicles() {
        List<Vehicle> vehicles = new ArrayList<>();
        String sql = "SELECT * FROM vehicles";

        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Vehicle vehicle = new Vehicle(
                    rs.getInt("id"),
                    rs.getString("vehicle_number"),
                    rs.getString("model"),
                    rs.getString("type"),
                    rs.getInt("number_of_seats"),
                    rs.getBoolean("available")
                );
                vehicles.add(vehicle);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vehicles;
    }
    
    // Get available vehicles
    public List<Vehicle> getAvailableVehicles() {
        List<Vehicle> vehicles = new ArrayList<>();
        String sql = "SELECT * FROM vehicles WHERE available = true";

        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Vehicle vehicle = new Vehicle(
                    rs.getInt("id"),
                    rs.getString("vehicle_number"),
                    rs.getString("model"),
                    rs.getString("type"),
                    rs.getInt("number_of_seats"),
                    rs.getBoolean("available")
                );
                vehicles.add(vehicle);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vehicles;
    }
    
    // Get vehicle by ID
    public Vehicle getVehicleById(int id) {
        String sql = "SELECT * FROM vehicles WHERE id = ?";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, id);
            
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new Vehicle(
                        rs.getInt("id"),
                        rs.getString("vehicle_number"),
                        rs.getString("model"),
                        rs.getString("type"),
                        rs.getInt("number_of_seats"),
                        rs.getBoolean("available")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}