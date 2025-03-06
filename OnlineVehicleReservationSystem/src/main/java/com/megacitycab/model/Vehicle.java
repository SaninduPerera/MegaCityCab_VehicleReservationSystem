package com.megacitycab.model;

public class Vehicle {
    private int id;
    private String vehicleNumber;
    private String model;
    private String type;
    private int numberOfSeats;
    private boolean availability;

    // Constructor with all parameters
    public Vehicle(int id, String vehicleNumber, String model, String type, int numberOfSeats, boolean availability) {
        this.id = id;
        this.vehicleNumber = vehicleNumber;
        this.model = model;
        this.type = type;
        this.numberOfSeats = numberOfSeats;
        this.availability = availability;
    }

    // Constructor without id (for inserting new records)
    public Vehicle(String vehicleNumber, String model, String type, int numberOfSeats, boolean availability) {
        this.vehicleNumber = vehicleNumber;
        this.model = model;
        this.type = type;
        this.numberOfSeats = numberOfSeats;
        this.availability = availability;
    }

    public int getId() {
        return id;
    }

    public String getVehicleNumber() {
        return vehicleNumber;
    }

    public String getModel() {
        return model;
    }

    public String getType() {
        return type;
    }

    public int getNumberOfSeats() {
        return numberOfSeats;
    }

    public boolean isAvailable() {
        return availability;
    }

    public void setAvailable(boolean availability) {
        this.availability = availability;
    }
}
