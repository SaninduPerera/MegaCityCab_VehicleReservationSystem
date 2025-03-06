
# Mega City Cab Vehicle Reservation System 🚗

## Overview
The **Vehicle Reservation System** is a web-based application designed to allow users to browse available vehicles, make bookings, process payments, and manage reservations. Admin users can oversee the system, manage users, vehicles, and generate reports. This system follows **Test-Driven Development (TDD)** principles and incorporates automated testing for robustness.

---

## **Features**
### **For Users (Customers)**
✔ **User Registration & Login**  
✔ **Browse Available Vehicles**  
✔ **Book a Vehicle**  
✔ **View Booking Details**  
✔ **Make Payments** (Card / Bank Transfer)  
✔ **Modify / Cancel Bookings**  
✔ **Contact Support**  

### **For Admin**
✔ **Manage Users** (Add, Remove, Update)  
✔ **Manage Vehicles** (Add, Update Availability, Remove)  
✔ **Manage Bookings** (Confirm / Decline Reservations)  
✔ **Generate Reports** (Booking & Payment Reports)  
✔ **Oversee Payments**  

---

## **Technologies Used**
- **Java 8**
- **JSP & Servlets**
- **MySQL (Database)**
- **Apache Tomcat 9**
- **JUnit (Testing)**
- **Selenium (Automated UI Testing)**
- **JMeter (Performance Testing)**
- **HTML, CSS (Frontend UI)**

---

## **Installation & Setup**
### **1. Clone the Repository**
```sh
git clone https://github.com/SaninduPerera/MegaCityCab_VehicleReservationSystem.git
cd OnlineVehicleReservationSystem
```

### **2. Configure the Database**
- Import the provided **`vehicle_reservation_system.sql`** into MySQL.
- Update `DBConnection.java` with your MySQL credentials:
```java
private static final String URL = "jdbc:mysql://localhost:3306/vehicle_reservation_system";
private static final String USER = "root";
private static final String PASSWORD = "yourpassword";
```

### **3. Build & Run**
- Open the project in **Eclipse / IntelliJ / NetBeans**.
- Build the project using **Maven**:
```sh
mvn clean install
```
- Deploy the `.war` file to **Apache Tomcat** and start the server.

### **4. Access the Application**
- **User Portal:** `http://localhost:8080/vehicle-reservation-system/`
- **Admin Portal:** `http://localhost:8080/vehicle-reservation-system/admin`

---

## **Project Structure**
```
/vehicle-reservation-system
├── src/main/java/com/megacitycab
│   ├── controller       # Servlets (Login, Register, Booking, Admin)
│   ├── dao              # Database Access Objects (UserDAO, VehicleDAO, BookingDAO)
│   ├── model            # Java Classes (User, Vehicle, Booking, Payment)
│   ├── util             # Utility classes (DBConnection, PasswordUtils)
│
├── src/main/webapp
│   ├── WEB-INF          # Configuration files (web.xml)
│   ├── jsp              # Views (login.jsp, register.jsp, bookVehicle.jsp, dashboard.jsp)
│   ├── css              # Stylesheets
│
├── pom.xml              # Maven dependencies
└── README.md            # Documentation
```

---

## **Testing**
✔ **Unit Testing** – JUnit  
✔ **Integration Testing** – JUnit + Mockito  
✔ **UI Testing** – Selenium  
✔ **Performance Testing** – JMeter  

Run tests:
```sh
mvn test
```

---

🚀 Happy Coding! 🚗💨
