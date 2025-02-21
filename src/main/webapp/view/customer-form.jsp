<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Details Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        #wrapper {
            width: 50%;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        #header {
            background: #0073e6;
            color: #fff;
            text-align: center;
            padding: 15px;
            border-radius: 8px 8px 0 0;
        }
        h2, h3 {
            text-align: center;
        }
        table {
            width: 100%;
            margin-top: 20px;
        }
        td {
            padding: 10px;
        }
        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .save {
            background: #0073e6;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        .save:hover {
            background: #005bb5;
        }
        p {
            text-align: center;
            margin-top: 20px;
        }
        a {
            text-decoration: none;
            color: #0073e6;
            font-weight: bold;
        }
        a:hover {
            color: #005bb5;
        }
    </style>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>CUSTOMER RELATIONSHIP MANAGER</h2>
    </div>
    <div id="container">
        <h3>Save Customer</h3>
        <form:form action="saveCustomer" method="post" modelAttribute="customer">
            <form:hidden path="id"/>
            <table>
                <tbody>
                <tr>
                    <td>First Name</td>
                    <td><form:input path="firstName"/></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><form:input path="lastName"/></td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td><form:input path="email"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Save" class="save"></td>
                </tr>
                </tbody>
            </table>
        </form:form>
    </div>
</div>
<div style="clear: both">
    <p>
        <a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
    </p>
</div>
</body>
</html>
