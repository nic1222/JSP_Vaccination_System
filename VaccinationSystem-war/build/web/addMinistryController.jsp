<%-- 
    Document   : addMinistryController
    Created on : Oct 31, 2021, 4:53:27 PM
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

<sql:update             
    dataSource="${data}"             
    var="new">            
    INSERT INTO vsuser VALUES ('${param.id}','Ministry','${param.address}','${param.email}',
    '${param.gender}','${param.ic}','${param.name}','${param.password}','${param.phone}','MS',null,null,null)        
</sql:update>

<sql:query             
    dataSource="${data}" 
    var="result">
    SELECT * from vsuser
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Ministry Account Page</title>
    </head>
    <body>
        <jsp:include page="addMinistryPage.jsp"/>
        <h5 class="text-center">Successfully added '${param.name}'</h5>
    </body>
</html>
