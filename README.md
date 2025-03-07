# MegaCityCab Vehicle Reservation System

The **MegaCityCab Vehicle Reservation System** is a Java-based web application designed to manage vehicle bookings efficiently. It allows users to book vehicles, view their bookings, and make payments. Administrators can manage vehicles, users, and bookings. The system is built using **Java Servlets**, **JSP**, and **MySQL**, and follows a 3-tier architecture with the DAO pattern for database interactions.

---

## Features

### **User Features**
- **User Registration and Login**: Users can register and log in to the system.
- **Book a Vehicle**: Users can book available vehicles by selecting a vehicle, pickup location, and drop location.
- **View Bookings**: Users can view their booking history.
- **Make Payments**: Users can make payments for their bookings.
- **Cancel Bookings**: Users can cancel bookings before confirmation.

### **Admin Features**
- **Manage Vehicles**: Admins can add, edit, and remove vehicles.
- **Manage Users**: Admins can view and manage user accounts.
- **Manage Bookings**: Admins can view and manage all bookings.
- **Generate Reports**: Admins can generate reports for bookings and payments.

---

## Technologies Used

- **Frontend**: HTML, CSS, JSP
- **Backend**: Java Servlets
- **Database**: MySQL
- **Build Tool**: Maven
- **Server**: Apache Tomcat 9
- **Password Hashing**: BCrypt

---

## Setup Instructions

### **Prerequisites**
1. **Java Development Kit (JDK)**: Install JDK 8 or later.
2. **Apache Tomcat**: Install Apache Tomcat 9 or later.
3. **MySQL**: Install MySQL and create a database named `vehicle_reservation_system`.
4. **Maven**: Install Maven for building the project.

### **Steps to Run the Project**
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/SaninduPerera/MegaCityCab_VehicleReservationSystem.git
   cd OnlineVehicleReservationSystem
   ```

2. **Set Up the Database**:
   - Run the SQL script `database.sql` file to create the tables and insert sample data.

3. **Configure Database Connection**:
   - Update the `DBConnection.java` file with your MySQL credentials:
     ```java
     private static final String URL = "jdbc:mysql://localhost:3306/vehicle_reservation_system";
     private static final String USER = "your_username";
     private static final String PASSWORD = "your_password";
     ```

4. **Build the Project**:
   ```bash
   mvn clean install
   ```

5. **Deploy to Tomcat**:
   - Copy the generated `.war` file from the `target` folder to the `webapps` directory of your Tomcat installation.
   - Start Tomcat:
     ```bash
     ./bin/startup.sh  # Linux/macOS
     bin\startup.bat   # Windows
     ```

6. **Access the Application**:
   - Open your browser and navigate to:
     ```
     http://localhost:8080/OnlineVehicleReservationSystem
     ```

---

## Default Admin Credentials
- **Username**: `admin`
- **Password**: `admin123`

---

## Screenshots

![image](https://github.com/user-attachments/assets/b2beacc9-26c7-4cdc-b658-2585478abbf5)

### **Login Page**

![image](https://github.com/user-attachments/assets/d225ba40-51ec-4a85-92e1-74873c85838a)

### **User Dashboard**

![image](https://github.com/user-attachments/assets/8f9a41a4-2772-4041-b594-a5c19509c9de)

### **Admin Dashboard**
![Admin Dashboard](screenshots/admin_dashboard.png)

---
