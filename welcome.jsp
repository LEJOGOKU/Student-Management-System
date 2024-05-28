<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Management System</title> 
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        h1 {
            text-align: center;
            color: #007bff;
        }
        
        form {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        input[type="text"] {
            width: 300px;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            outline: none;
        }
        
        input[type="submit"] {
            width: 150px;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        
        .info {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>  

<body>
    <div class="container">
        <h1>Welcome to Student Management System</h1>

        <h2>Add Student</h2>
        <form action="addStudent">
            <input type="text" name="studentName" placeholder="Enter Name">
            <input type="text" name="rollNo" placeholder="Enter RollNo">
            <input type="submit" value="Add Student">
        </form>

        <h2>Delete Student</h2>
        <form action="deleteStudent">
            <input type="text" name="rollNo" placeholder="Enter RollNo">
            <input type="submit" value="Delete Student">
        </form>

        <h2>View Student</h2>
        <form action="viewStudent">
            <input type="text" name="rollNo" placeholder="Enter RollNo">
            <input type="submit" value="View Student">
        </form>
        
        <p class="info">*Enter the Student's RollNo to perform the action</p>
    </div>
</body>
</html>
