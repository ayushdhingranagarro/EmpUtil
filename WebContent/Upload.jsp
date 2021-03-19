<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            padding: 0%;
            margin: 0%;
        }
        body{
            font-family: "Open Sans", sans-serif;
        }
        header{
            height:5vh;
            align-items: center;
            display: flex;
            justify-content: space-between;
            padding: 10px;
            background-color: #0b0c10;
            color: white;
        }
        a{
            text-decoration: none;
	color: white;
        }
        .User{
            display: flex;
            align-items: center;
        }
        #logout{
            margin-left: 10px;
            border: none;
            padding: 5px 10px;
            font-size: 16px;
            background-color: #25274d;
        }
input{
    width: 250px;
    height: 30px;
    border-radius: 5px;
    border: 1px solid black;
}
textarea{
	width: 250px;
    height: 30px;
    border-radius: 5px;
    border: 1px solid black;
}
.input{
    
    display: flex;
    justify-content: space-between;
    width: 500px;
    margin: auto;
    margin-bottom: 20px;
}
form{
    padding: 20px 0;
    width: 50%;
    margin: auto;
    margin-top: 50px;
    text-align: center;
}
fieldset{
	padding: 20px;
}
.submit{
    width: 150px;
	color: white;
    height: 40px;
    border-radius: 0%;
    text-align: center;
    margin-top: 30px;
    background-color: #25296b;
    cursor: pointer;
}


    </style>
</head>
<body>
    <header>
        <div class="Heading">
            <h2>Employee Management</h2>
        </div>
        <div class="User">
            <h3>Welcome <%=session.getAttribute("username") %></h3>
            <button id="logout"><a href="logout">Logout</a></button>
        </div>
    </header>
    <h1 style="
    text-align: center;margin-top: 30px;">Upload Employee Details</h1>
    <br>
    <hr>
    <div class="empinput">
        <form action="upload">
        <fieldset>
            <div class="input">
            Employee Code : <input type="text" name="empcode" required>
        </div>
    <div class="input">
            Employee Name : <input type="text" name="name" maxlength="100" required>
        </div>
         <div class="input">Location : <textarea name="location" maxlength="500" required></textarea>
        </div>
        <div class="input">Email : <input type="email" name="email" maxlength="100" required>
        </div>
        <div class="input">Date of birth : <input type="date" name="dob" required>
        </div>
        <input type="submit" value="Upload" class="submit">
        <button class="submit"><a href="Welcome.jsp">Cancle</a></button>
        </fieldset>
        </form>
         
    </div>
</body>
</html>