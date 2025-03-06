package com.megacitycab.dao;

import com.megacitycab.model.Booking;
import com.megacitycab.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookingDAO {
    private Connection conn;

    public BookingDAO() {
        conn = DBConnection.getConnection();
    }

    public boolean bookVehicle(Booking booking) {
        String sql = "INSERT INTO bookings (user_id, vehicle_id, pickup_location, drop_location, booking_date, status) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, booking.getUserId());
            stmt.setInt(2, booking.getVehicleId());
            stmt.setString(3, booking.getPickupLocation());
            stmt.setString(4, booking.getDropLocation());
            stmt.setTimestamp(5, booking.getBookingTime());
            stmt.setString(6, booking.getStatus());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Booking> getAllBookings() {
        List<Booking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM bookings";
        try (PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                bookings.add(new Booking(
                    rs.getInt("id"),
                    rs.getInt("user_id"),
                    rs.getInt("vehicle_id"),
                    rs.getString("pickup_location"),
                    rs.getString("drop_location"),
                    rs.getTimestamp("booking_date"),
                    rs.getString("status")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }

    // **FIX: Add missing method getBookingsByUserId(int userId)**
    public List<Booking> getBookingsByUserId(int userId) {
        List<Booking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM bookings WHERE user_id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                bookings.add(new Booking(
                    rs.getInt("id"),
                    rs.getInt("user_id"),
                    rs.getInt("vehicle_id"),
                    rs.getString("pickup_location"),
                    rs.getString("drop_location"),
                    rs.getTimestamp("booking_date"),
                    rs.getString("status")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }
}
