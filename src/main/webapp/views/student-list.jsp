<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student List</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            padding: 20px;
        }

        h2 {
            text-align: center;
            font-size: 2em;
            margin-bottom: 20px;
            color: #333;
        }

        a {
            text-decoration: none;
            color:#fff;
            font-size: 1.1em;
            margin-bottom: 20px;
            display: inline-block;
            padding: 8px 16px;
            background-color:darkslategray;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color:midnightblue;
            color: white;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
        }

        th {
            background-color:darkslategray;
            color: white;
        }

        td {
            background-color: #fff;
        }

        .action-buttons a {
            padding: 6px 12px;
            border-radius: 5px;
            font-size: 1em;
            margin: 0 5px;
            text-decoration: none;
            color: white;
        }

        .update-btn {
            background-color:seagreen;
        }

        .delete-btn {
            background-color: #f44336;
        }

        .action-buttons a:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <h2>Student Marks List</h2>
    <a href="/student-form">Add New Student</a>
    <a href="/home">Home Page</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>Subject 1</th>
                <th>Subject 2</th>
                <th>Subject 3</th>
                <th>Total Marks</th>
                <th>Percentage</th>
                <th>Grade</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${students}" var="student">
                <tr>
                    <td>${student.sid}</td>
                    <td>${student.fullName}</td>
                    <td>${student.sub1}</td>
                    <td>${student.sub2}</td>
                    <td>${student.sub3}</td>
                    <td>${fn:escapeXml(student.totalMarks)}</td>
                    <td>${fn:escapeXml(student.percentage)}</td>
                    <td>${fn:escapeXml(student.grade)}</td>
                    <td class="action-buttons">
                        <a href="updateForm?studentId=${student.sid}" class="update-btn">Update</a>
                        <a href="delete?studentId=${student.sid}" class="delete-btn" onclick="return confirm('Are you sure you want to delete this student?')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
