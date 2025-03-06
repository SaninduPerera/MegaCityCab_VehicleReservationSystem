package com.megacitycab.model;

import java.sql.Timestamp;

public class Booking {
    private int id;
    private int userId;
    private int vehicleId;
    private String pickupLocation;
    private String dropLocation;
    private Timestamp bookingTime;
    private String status;

    public Booking(int id, int userId, int vehicleId, String pickupLocation, String dropLocation, Timestamp bookingTime, String status) {
        this.id = id;
        this.userId = userId;
        this.vehicleId = vehicleId;
        this.pickupLocation = pickupLocation;
        this.dropLocation = dropLocation;
        this.bookingTime = bookingTime;
        this.status = status;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; } // Added setter method
    public int getUserId() { return userId; }
    public int getVehicleId() { return vehicleId; }
    public String getPickupLocation() { return pickupLocation; }
    public String getDropLocation() { return dropLocation; }
    public Timestamp getBookingTime() { return bookingTime; }
    public String getStatus() { return status; }
}
