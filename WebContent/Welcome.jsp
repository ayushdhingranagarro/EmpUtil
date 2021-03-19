<%@page import="java.util.List"%>
<%@page import="org.json.JSONObject"%>
<%@page import="com.apiConnector.ApiConnector"%>
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
            background-color: white;
        }
        header{
            height:5vh;
            color: #e3e2df;
            align-items: center;
            display: flex;
            justify-content: space-between;
            padding: 10px;
            background-color: #0b0c10;
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
        .employeeListing{
            margin-top: 50px;
        }
        table{
            margin: auto;
        }
        th{
            border: 1px solid black;
            padding: 8px 15px;
            background-color: navy;
            color: white;
        }
        td{
            border: 1px solid black;
            padding: 8px 15px;
            text-align: center;
        }
        .edit{
            padding: 3px 9px;
            border: black 1px solid;
            background-color:#25274d ;
            color: white;
               }
               .upload{
					text-align: center;
					margin-top: 50px;
               }
               #upload{
                padding: 3px 9px;
	            border: white 1px solid;
	            background-color:green ;
	            font-size: 1.2rem;
	            color: white;
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
    <div class="upload">
        <button id="upload"><a href="Upload.jsp">Upload Employee Details</a></button>
        <button id="upload" onclick="window.print()">Download Employee Details</button>
    </div>
    <div class="employeeListing">
        <table>
            <thead>
                <th>Employee Code</th>
                <th>Employee Name</th>
                <th>Location</th>
                <th>Email</th>
                <th>Date Of Birth</th>
                <th>Action</th>
            </thead>
            
    <%
	List<JSONObject> emplist=(List)session.getAttribute("EmpList");
	if(emplist!=null){
	for(JSONObject emp:emplist){%>
		<tbody>
				<td><%=emp.get("empId") %></td>
                <td><%=emp.get("name") %></td>
                <td><%=emp.get("location") %></td>
                <td><%=emp.get("email") %></td>
                <td><%=emp.get("dob") %></td>
                <td><form action="Edit.jsp">
                <input type="hidden" name="id" value=<%=emp.get("empId") %>>
                <input type="submit" class="edit" value="Edit">
                </form></td>
            </tbody>
	<%}} %>
                
        </table>
    </div>
</body>
</html>