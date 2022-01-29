<%-- 
    Document   : updateMinistryPage
    Created on : Nov 1, 2021, 4:25:12 PM
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
    var="resultMS">
    SELECT * from vsuser WHERE userrole = 'MS'
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Ministry Detail Page</title>
    </head>
    <body>
        <jsp:include page="bannerMinistry.jsp"/>
        <div class="container">
            <form action="updateMinistryProceed.jsp">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="p-3 py-5">
                            <div class="d-flex align-items-center mb-3">
                                <h4 class="text-right">Edit Ministry Account</h4>
                            </div>
                            <div class="row gap-1">
                                <div class="col-md-3">
                                    <label class="labels">Username</label>
                                </div>
                                <div class="col-md-8">    
                                    <select class="form-select" name="selectedId">
                                        <c:forEach items="${resultMS.rows}" var="row">
                                            <option value="${row.id}"><c:out value="${row.id}"/></option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="mt-2 text-center">
                                    <a class="btn btn-secondary" href="manageMinistryAcc.jsp">Back</a>
                                    <!-- Button trigger modal -->
                                    <button type="submit" class="btn btn-primary">Search</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3"></div>
                    </div>
            </form>
        </div>
    </body>
</html>
