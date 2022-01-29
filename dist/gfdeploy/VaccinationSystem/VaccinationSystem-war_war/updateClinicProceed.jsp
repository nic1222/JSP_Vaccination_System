<%-- 
    Document   : updateClinicProceed
    Created on : Nov 2, 2021, 11:14:04 AM
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
    SELECT * from vsuser
    WHERE id = '${param.selectedId}'
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Clinic Page</title>
    </head>
    <body>
        <jsp:include page="updateClinicPage.jsp"/>
        <div class="container">
            <form action="UpdateClinicProceed" method="POST">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="p-3 py-1">
                            <div class="d-flex align-items-center mb-3">
                            </div>
                            <c:forEach items="${result.rows}" var="row">
                                <div class="row gap-1">
                                    <div class="col-md-3">
                                        <label class="labels">Username</label>
                                    </div>
                                    <div class="col-md-8"> 
                                        <input type="text" name="username" class="form-control" value="${row.id}" readonly>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="labels">Password</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="password" class="form-control" value="${row.password}" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="labels">Clinic Id</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="clinicId" class="form-control" value="${row.clinicId}" readonly>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="labels">Clinic Name</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="clinicName" class="form-control" value="${row.clinicName}" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="labels">Clinic Address</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="clinicAddress" class="form-control" value="${row.clinicAddress}" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="labels">State/Federal Territory</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="state" class="form-control" value="${row.clinicState}" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="labels">Name</label>
                                    </div>
                                    <div class="col-md-8"> 
                                        <input type="text" name="name" class="form-control" value="${row.name}" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="labels">Gender(Male/Female)</label>
                                    </div>
                                    <div class="col-md-8"> 
                                        <input type="text" name="gender" class="form-control" value="${row.gender}" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="labels">Phone Number</label>
                                    </div>
                                    <div class="col-md-8"> 
                                        <input type="text" name="phone" class="form-control" value="${row.phone}" pattern="\d*" maxlength="12" placeholder="Number Only" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="labels">IC</label>
                                    </div>
                                    <div class="col-md-8"> 
                                        <input type="text" name="ic" class="form-control" value="${row.ic}" pattern="\d*" maxlength="12" placeholder="Number Only" readonly>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="labels">Email</label>
                                    </div>
                                    <div class="col-md-8"> 
                                        <input type="email" name="email" class="form-control" value="${row.email}" required>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="labels">Address</label>
                                    </div>
                                    <div class="col-md-8"> 
                                        <input type="text" name="address" class="form-control" value="${row.address}" required>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="mt-5 text-center">
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                    Save Changes
                                </button>
                            </div>

                            <!-- Modal -->
                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">Are you sure you want to save the changes?</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Click yes to continue.
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">No</button>
                                            <button type="submit" class="btn btn-primary">Yes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </form>
        </div>
    </body>
</html>
