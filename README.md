# MegaCityCab Vehicle Reservation System

![Java](https://img.shields.io/badge/Java-17-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)
![Apache Tomcat](https://img.shields.io/badge/Apache%20Tomcat-9.0-green)
![Maven](https://img.shields.io/badge/Maven-3.8.1-red)

The **MegaCityCab Vehicle Reservation System** is a comprehensive web-based application designed to streamline the operations of a cab service in Colombo City. It allows employees (Admin, Manager, and Receptionist) to manage customer bookings, vehicles, drivers, and billing efficiently.

---

## Features

- **Role-Based Access Control**:
  - **Admin**: Full access to all functionalities.
  - **Manager**: Manage bookings, vehicles, and drivers.
  - **Receptionist**: Add and view customer bookings.

- **Customer Management**:
  - Register new customers.
  - View and update customer details.

- **Booking Management**:
  - Create, update, and view bookings.
  - Assign vehicles and drivers to bookings.

- **Vehicle Management**:
  - Add, update, and view vehicle details.
  - Track vehicle availability.

- **Driver Management**:
  - Add, update, and view driver details.
  - Track driver availability.

- **Billing**:
  - Generate bills for completed bookings.
  - Apply discounts and taxes.

- **Reports**:
  - Generate booking and revenue reports.

---

## Technologies Used

- **Backend**: Java (Servlet, JSP)
- **Database**: MySQL
- **Frontend**: HTML, CSS, Bootstrap
- **Build Tool**: Maven
- **Web Server**: Apache Tomcat 9.0

---

## Prerequisites

Before running the project, ensure you have the following installed:

1. **Java Development Kit (JDK)**: Version 17 or higher.
2. **MySQL**: Version 8.0 or higher.
3. **Apache Tomcat**: Version 9.0 or higher.
4. **Maven**: Version 3.8.1 or higher.

---

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/SaninduPerera/MegaCityCab_VehicleReservationSystem.git
cd MegaCityCab
```

### 2. Set Up the Database

1. Open MySQL and create a new database:
   ```sql
   CREATE DATABASE MegaCityCab_DB;
   USE MegaCityCab_DB;
   ```

2. Run the SQL script provided in the `MegaCityCab_DB.sql` file to create the necessary tables and insert sample data.

### 3. Configure Database Connection

Update the `DBConnection.java` file with your MySQL credentials:

```java
private String url = "jdbc:mysql://localhost:3306/MegaCityCab_DB";
private String username = "your_mysql_username";
private String password = "your_mysql_password";
```

### 4. Build the Project

Run the following Maven command to build the project:

```bash
mvn clean install
```

### 5. Deploy the Application

1. Copy the generated `.war` file from the `target` directory to the `webapps` directory of your Tomcat server.
2. Start the Tomcat server.

### 6. Access the Application

Open your browser and navigate to:

```
http://localhost:8080/MegaCityCab
```

---

## Default Login Credentials

- **Admin**:
  - **Username**: `admin`
  - **Password**: `admin123`

- **Manager**:
  - **Username**: `manager1`
  - **Password**: `manager123`

- **Receptionist**:
  - **Username**: `receptionist1`
  - **Password**: `recep123`

---

## Screenshots

### Login Page
![image](https://github.com/user-attachments/assets/2e990740-e397-49b0-8435-82628e473e97)

### Admin Dashboard
![image](https://github.com/user-attachments/assets/8cbcc6ce-551c-4650-b369-ca3e36d474e6)

### Add Customer
![image](https://github.com/user-attachments/assets/242ccaef-ae8e-49d7-a607-0bea30e5867a)

### View Customers
![image](https://github.com/user-attachments/assets/a8814a76-401a-4283-a834-9cb82469d44a)

### Add Booking
![image](https://github.com/user-attachments/assets/4e8ce25f-8df9-421a-b6cd-33ae7a1e6642)

---
