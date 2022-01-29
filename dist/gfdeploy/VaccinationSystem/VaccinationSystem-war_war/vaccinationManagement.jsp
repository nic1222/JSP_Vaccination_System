<%-- 
    Document   : vaccinationManagement
    Created on : Nov 7, 2021, 10:06:14 PM
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
    var="resultCS">
    SELECT * from vsuser WHERE userrole = 'CS'
</sql:query>

<sql:query             
    dataSource="${data}" 
    var="resultPU">
    SELECT * from vsuser WHERE userrole = 'PU'
</sql:query>

<sql:query             
    dataSource="${data}" 
    var="result">
    SELECT * from vaccination
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vaccination Schedule Management</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
    </head>
    <body>
        <jsp:include page="bannerMinistry.jsp"/>
        <div class="container p-3">
            <h1>Vaccination Schedule Management</h1>
            <form action="VaccinationManagement" method="POST">
                <div class="row">
                    <h3></h3>
                    <table class="table table-striped" id="vaccine">
                        <thead>
                            <tr>
                                <th scope="col">Public User Id</th>
                                <th scope="col">Clinic Id</th>
                                <th scope="col">First Dose Date</th>
                                <th scope="col">First Dose Time Slot</th>
                                <th scope="col">Second Dose Date</th>
                                <th scope="col">Second Dose Time Slot</th>
                                <th scope="col">Brand</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="width: 7%">
                                    <select class="form-select" name="publicUserId">
                                        <c:forEach items="${resultPU.rows}" var="row">
                                            <option value="${row.id}"><c:out value="${row.id}"/></option>
                                        </c:forEach>
                                    </select>
                                </td>
                                <td style="width: 7%">
                                    <select class="form-select" name="clinicId">
                                        <c:forEach items="${resultCS.rows}" var="row">
                                            <option value="${row.clinicId}"><c:out value="${row.clinicId}"/></option>
                                        </c:forEach>
                                    </select>
                                </td>
                                <td style="width: 10%">
                                    <input type="date" class="form-control" id="firstDate" name="firstDate" required>
                                </td>
                                <td style="width: 10%">
                                    <select class="form-select" name="firstTime">
                                        <option value="0900-1200">0900-1200</option>
                                        <option value="1300-1600">1300-1600</option>
                                        <option value="1600-1800">1600-1800</option>
                                    </select>
                                </td>
                                <td style="width: 10%">
                                    <input type="date" class="form-control" id="secondDate" name="secondDate" required>
                                </td>
                                <td style="width: 10%">
                                    <select class="form-select" name="secondTime">
                                        <option value="0900-1200">0900-1200</option>
                                        <option value="1300-1600">1300-1600</option>
                                        <option value="1600-1800">1600-1800</option>
                                    </select>
                                </td>
                                <td style="width: 10%">
                                    <select class="form-select" name="brand">
                                        <option value="AstraZeneca">AstraZeneca</option>
                                        <option value="Pfizer">Pfizer</option>
                                        <option value="Sinovac">Sinovac</option>
                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="row text-center">
                    <div class="col">
                        <input class="btn btn-primary" type="submit" value="Submit">
                    </div>
                </div>
            </form>
            <br>
            <div class="row">
                <h3>Schedule</h3>
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
        </div>
    </body>
</html>
