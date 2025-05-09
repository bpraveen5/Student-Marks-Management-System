<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Form</title>
    <style>
        /* Reset some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body and layout */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 2em;
            color: #333;
        }

        label {
            display: block;
            font-size: 1.1em;
            margin-bottom: 8px;
            color: #555;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            box-sizing: border-box;
        }

        button[type="submit"] {
            width: 100%;
            padding: 12px;
            font-size: 1.1em;
            background-color:darkblue;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color:navy;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            h2 {
                font-size: 1.8em;
            }

            input[type="text"] {
                font-size: 1em;
                padding: 8px;
            }

            button[type="submit"] {
                font-size: 1em;
                padding: 10px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Student Form</h2>
        <form action="/save" method="post">
            <!-- <input type="hidden" name="sid" value="${student.sid}" /> -->

            <label for="sid">Student Id:</label>
            <input type="text" id="sid" name="sid" value="${student.sid}" />

            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" value="${student.firstName}" />

            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" value="${student.lastName}" />

            <label for="sub1">Subject 1:</label>
            <input type="text" id="sub1" name="sub1" value="${student.sub1}" />

            <label for="sub2">Subject 2:</label>
            <input type="text" id="sub2" name="sub2" value="${student.sub2}" />

            <label for="sub3">Subject 3:</label>
            <input type="text" id="sub3" name="sub3" value="${student.sub3}" />

            <button type="submit">Save</button>
        </form>
    </div>

</body>
</html>
