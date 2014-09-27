<%-- 
    Document   : list
    Created on : Sep 26, 2014, 12:27:56 AM
    Author     : Pratiksha
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Record Analysis</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link href="../src/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../src/lib/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../src/main.css" rel="stylesheet" type="text/css"/>
        <style>
            .table {
                 background-color: #FFF;
            }
            
            th {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                url="jdbc:mysql://localhost/sample"
                user="root"  password="root"/>

            <sql:query dataSource="${snapshot}" var="result">
                SELECT * from Person;
            </sql:query>
        <h3 class="title">All available persons</h3>
        <div class="container">
            <div class="col-md-12 operations">                
                <table  class="table table-bordered">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Gender</th>
                            <th>Date Of Birth</th>
                            <th>Email ID</th>
                            <th>Nationality</th>
                            <th>Mobile No</th>
                            <th>Occupation</th>
                        </tr>  
                    </thead>
                    <tbody>
                        <c:forEach var="row" items="${result.rows}">
                        <tr>
                           <td><c:out value="${row.first_name}"/></td>
                           <td><c:out value="${row.last_name}"/></td>
                           <td><c:out value="${row.gender}"/></td>
                           <td><fmt:formatDate value="${row.dob}" pattern="yyyy-MM-dd" /></td>
                           <td><c:out value="${row.email_id}"/></td>
                           <td><c:out value="${row.nationality}"/></td>
                           <td><c:out value="${row.mobile_no}"/></td>
                           <td><c:out value="${row.occupation}"/></td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <script src="../src/lib/jquery.min.js" type="text/javascript"></script>
        <script src="../src/lib/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
