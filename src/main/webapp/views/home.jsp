<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Marks Management System</title>
    <style>
        /* Reset some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Basic styles */
        body {
            font-family: Arial, sans-serif;
            line-height: 1.5;
            background-color: #f4f4f9;
            overflow-x: hidden; /* Prevent horizontal scrolling */
        }

        /* Header styles */
        header {
            background-color: midnightblue;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        header .logo h1 {
            font-size: 2.5em;
        }

        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 10px;
        }

        nav ul li {
            display: inline-block;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 1.2em;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        nav ul li a:hover {
            background-color: honeydew;
            color: black;
        }

        /* Main section styles */
        .hero {
            color: #333;
            padding: 60px;
            text-align: center;
        }

        .hero h2 {
            font-size: 3em;
        }

        .hero p {
            font-size: 1.2em;
            margin-top: 10px;
        }

        .features {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 30px;
            padding: 50px;
            margin: 0 auto; /* Center-align content */
            max-width: 1200px; /* Restrict the width of the section */
        }

        .feature-box {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .feature-box h3 {
            font-size: 1.8em;
            margin-bottom: 20px;
        }

        .feature-box p {
            font-size: 1.1em;
            margin-bottom: 20px;
        }

        .feature-box .btn {
            text-decoration: none;
            padding: 10px 20px;
            background-color: navy;
            color: white;
            font-size: 1.2em;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .feature-box .btn:hover {
            background-color: rgb(60, 60, 134);
        }

        /* Footer styles */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 50px;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .hero h2 {
                font-size: 2.5em;
            }

            .hero p {
                font-size: 1em;
            }

            .features {
                grid-template-columns: 1fr;
                gap: 20px;
            }

            .feature-box h3 {
                font-size: 1.5em;
            }

            .feature-box p {
                font-size: 1em;
            }
        }
    </style>
</head>
<body>

    <header>
        <div class="logo">
            <h1>Student Marks Management</h1>
        </div>
        <nav>
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="/student-form">Student Form</a></li>
                <li><a href="/student-list">Student List</a></li>
                <li><a href="/login">Login</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="hero">
            <h2>Welcome to the Student Marks Management System</h2>
            <p>Manage student details, marks, and grades efficiently!</p>
        </section>

        <section class="features">
            <div class="feature-box">
                <h3>Student Form</h3>
                <p>Submit and manage student information.</p>
                <a href="/student-form" class="btn">Go to Form</a>
            </div>
            <div class="feature-box">
                <h3>Student List</h3>
                <p>View and manage all student details and marks.</p>
                <a href="/student-list" class="btn">View Students</a>
            </div>
            <div class="feature-box">
                <h3>Login</h3>
                <p>Login to access admin features and student management.</p>
                <a href="/login" class="btn">Login</a>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Praveen | All Rights Reserved</p>
    </footer>

</body>
</html>
