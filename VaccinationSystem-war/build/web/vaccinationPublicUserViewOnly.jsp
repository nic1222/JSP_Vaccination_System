<%-- 
    Document   : vaccinationPublicUser
    Created on : Nov 8, 2021, 11:39:14 AM
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
    SELECT * from vaccination WHERE publicuserid = '${id}'
</sql:query>

<sql:query             
    dataSource="${data}" 
    var="resultCS">
    SELECT * from vsuser WHERE userrole = 'CS'
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vaccination Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
    </head>
    <body>
        <jsp:include page="bannerPublicUser.jsp"/>
        <div class="container p-3">
            <h1>My Vaccination</h1>
            <div class="row">
                <table class="table table-striped" id="publicUserTable">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Public User Id</th>
                            <th scope="col">Clinic Id</th>
                            <th scope="col">First Dose Date</th>
                            <th scope="col">First Dose Time Slot</th>
                            <th scope="col">Second Dose Date</th>
                            <th scope="col">Second Dose Time Slot</th>
                            <th scope="col">Brand</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${result.rows}" var="row">
                            <tr>
                                <td style="width: 5%"><c:out value="${row.vaccinationId}"/></td>
                                <td style="width: 10%"><c:out value="${row.publicUserId}"/></td>
                                <td style="width: 8%"><c:out value="${row.clinicId}"/></td>
                                <td style="width: 12%"><c:out value="${row.firstDoseDate}"/></td>
                                <td style="width: 15%"><c:out value="${row.firstDoseTime}"/></td>
                                <td style="width: 12%"><c:out value="${row.secondDoseDate}"/></td>
                                <td style="width: 15%"><c:out value="${row.secondDoseTime}"/></td>
                                <td style="width: 8%"><c:out value="${row.vaccineBrand}"/></td>
                                <td style="width: 15%"><c:out value="${row.status}"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <br>
            <div class="row text-center">
                <div class="col">
                    <a class="btn btn-secondary" href="Home">Back</a>
                </div>
            </div>
            <br>
            <div class="row">
                <br>
                <div class="col-md-2"></div>
                <div class="col-md-8"><h3>Clinic Detail</h3></div>
                <div class="col-md-2"></div>
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <table class="table table-success table-striped table-hover" id="clinicTable">
                        <thead>
                            <tr>
                                <th scope="col">Clinic Id</th>
                                <th scope="col">Clinic Name</th>
                                <th scope="col">Clinic Address</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${resultCS.rows}" var="row">
                                <tr>
                                    <td style="width: 10%"><c:out value="${row.clinicId}"/></td>
                                    <td style="width: 10%"><c:out value="${row.clinicName}"/></td>
                                    <td style="width: 23%"><c:out value="${row.clinicAddress}"/></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </body>
</html>
