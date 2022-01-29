<%-- 
    Document   : vaccinationClinic
    Created on : Nov 8, 2021, 4:38:51 PM
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
    SELECT * from vaccination WHERE clinicid = '${clinicId}' AND status != 'Reject' AND status != 'Pending for approval'
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vaccination Schedule Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
    </head>
    <body>
        <jsp:include page="bannerClinic.jsp"/>
        <div class="container p-3">
            <h1>My Clinic Vaccination</h1>
            <form action="VaccinationClinic" method="POST">
                <div class="row">
                    <table class="table table-striped" id="clinicTable">
                        <thead>
                            <tr>
                                <th scope="col">*</th>
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
                                    <td><input class="form-check-input" type="checkBox" name="checkBox" value="${row.publicUserId}"></td>
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
                <div class="row">
                    <div class="col text-center">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="inlineRadio1" value="First Dose">
                            <label class="form-check-label" for="inlineRadio1">First Dose</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="status" id="inlineRadio2" value="Second Dose">
                            <label class="form-check-label" for="inlineRadio2">Second Dose</label>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row text-center">
                    <div class="col">
                        <input class="btn btn-primary" type="submit" value="Update">
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
