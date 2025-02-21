<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer List Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        #wrapper {
            width: 80%;
            margin: auto;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        #header {
            background: #007bff;
            color: white;
            text-align: center;
            padding: 15px;
            border-radius: 8px 8px 0 0;
        }
        h2 {
            margin: 0;
        }
        .button-container {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 10px;
        }
        .add-button {
            background: #ff5733;
            color: white;
            border: none;
            padding: 12px 18px;
            cursor: pointer;
            border-radius: 4px;
            font-size: 16px;
            font-weight: bold;
        }
        .add-button:hover {
            background: #c44124;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background: #f2f2f2;
        }
        a {
            color: #007bff;
            text-decoration: none;
            margin-right: 10px;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>CUSTOMER RELATIONSHIP MANAGER</h2>
    </div>
    <div id="container">
        <div id="content">
            <div class="button-container">
                <input type="button" value="Add Customer" onclick="window.location.href='showForm';return false;" class="add-button"/>
            </div>
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
                <c:forEach var="customer" items="${customerList}">
                    <c:url var="updateLink" value="/customer/showFormUpdate">
                        <c:param name="customerId" value="${customer.getId()}"/>
                    </c:url>
                    <c:url var="deleteLink" value="/customer/deleteCustomer">
                        <c:param name="customerId" value="${customer.getId()}"/>
                    </c:url>
                    <tr>
                        <td>${customer.getFirstName()}</td>
                        <td>${customer.getLastName()}</td>
                        <td>${customer.getEmail()}</td>
                        <td>
                            <a href="${updateLink}">Update</a> |
                            <a href="${deleteLink}" onclick="return confirm('Are you sure you want to delete this customer?');">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>