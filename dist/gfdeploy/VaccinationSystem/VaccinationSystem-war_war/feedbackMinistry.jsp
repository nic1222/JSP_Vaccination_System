<%-- 
    Document   : feedbackMinistry
    Created on : Nov 8, 2021, 10:17:51 AM
    Author     : user
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 

<sql:setDataSource 
    var="data" 
    driver="org.apache.derby.jdbc.ClientDriver"     
    url="jdbc:derby://localhost:1527/sample"
    user="app"  
    password="app"/> 

<sql:query             
    dataSource="${data}" 
    var="result">
    SELECT * from vsuser WHERE userrole = 'PU' AND feedback != ''
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Feedback Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">   
    </head>
    <body>
        <jsp:include page="bannerMinistry.jsp"/>
        <div class="container p-3">
            <div class="row">
                <h1>Feedback from User</h1>
                <table class="table table-striped" id="publicUserTable">
                    <thead>
                        <tr>
                            <th scope="col">User Id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Feedback</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${result.rows}" var="row">
                            <tr>
                                <td style="width: 15%"><c:out value="${row.id}"/></td>
                                <td style="width: 15%"><c:out value="${row.name}"/></td>
                                <td style="width: 70%"><c:out value="${row.feedback}"/></td>
                            </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="row text-center">
                <div class="col">
                    <a class="btn btn-secondary" href="Home">Back</a>
                </div>
            </div>
        </div>
    </body>
</html>
