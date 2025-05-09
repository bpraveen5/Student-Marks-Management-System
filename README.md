# Student Marks Management System

A full-stack web application for managing student records and their academic performance. This system allows users to perform CRUD operations on student data and track their marks efficiently.

## 🚀 Features

- Add new student records with marks
- Update or delete existing student entries
- View individual or all students’ marks
- Calculate average marks
- Filter students based on performance
- User-friendly web interface

## 🛠️ Technologies Used

### Backend
- **Java**
- **Spring Boot**
- **Spring MVC**
- **Spring Data JPA**
- **Hibernate**

### Frontend
- **JSP / Thymeleaf** (depending on your template engine)
- **HTML5 / CSS3 / JavaScript**
- **Bootstrap** (for responsive design)

### Database
- **MySQL**

### Tools & Server
- **Apache Tomcat (Embedded)**
- **Spring Tool Suite (STS) / IntelliJ IDEA / Eclipse**

---

## 🗂️ Project Structure
Student-Marks-Management-System/
- src/
  - main/
    - java/               # Java source code
    - resources/          # Application properties, templates, static files
  - test/                 # Test cases (if any)
- pom.xml                # Maven dependencies
- README.md              # Project documentation


---

## ⚙️ Setup & Installation

### Prerequisites

- Java 8 or higher
- Maven
- MySQL Server
- Spring Tool Suite / IntelliJ / Eclipse

### Steps
**1. Create MySQL Database**
CREATE DATABASE student_db;

**2.Run the Application**
spring.datasource.url=jdbc:mysql://localhost:3306/student_db
spring.datasource.username=your_mysql_username
spring.datasource.password=your_mysql_password
spring.jpa.hibernate.ddl-auto=update

**3.Run the Application**
mvn spring-boot:run

**4.Access the Web App**

Open your browser and navigate to:
http://localhost:8080

