<%-- 
    Document   : reportPage
    Created on : Nov 18, 2021, 6:58:04 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="bannerMinistry.jsp"/>
        <div class="container p-3">
            <h1>Report</h1>
            <br>
            <div class="row">
                <h4>Vaccination Status</h4>
                <table class="table table-bordered" style="width: 75%">
                    <thead>
                        <tr>
                            <th style="width: 22%" scope="col"></th>
                            <th style="width: 26%" scope="col">Not Vaccinated</th>
                            <th style="width: 26%" scope="col">First Dose</th>
                            <th style="width: 26%" scope="col">Second Dose</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Number of public user</th>
                            <td style="color: red">${notVac}</td>
                            <td style="color: red">${firstDose}</td>
                            <td style="color: red">${secondDose}</td>
                        </tr>
                    </tbody>
                </table> 
            </div>
            <div class="row">
                <h4>Vaccine Brand</h4> 
                <table class="table table-bordered" style="width: 75%">
                    <thead>
                        <tr>
                            <th style="width: 22%" scope="col"></th>
                            <th style="width: 26%" scope="col">Pfizer</th>
                            <th style="width: 26%" scope="col">Sinovac</th>
                            <th style="width: 26%" scope="col">AstraZeneca</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Number of public user</th>
                            <td style="color: red">${pfizer}</td>
                            <td style="color: red">${sinovac}</td>
                            <td style="color: red">${az}</td>
                        </tr>
                    </tbody>
                </table> 
            </div>
            <div class="row">
                <h4>Scheduled Appointment Status</h4>
                <table class="table table-bordered" style="width: 75%">
                    <thead>
                        <tr>
                            <th style="width: 22%" scope="col"></th>
                            <th style="width: 26%" scope="col">Approved</th>
                            <th style="width: 26%" scope="col">Rejected</th>
                            <th style="width: 26%" scope="col">Pending for Approval</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Number of appointment</th>
                            <td style="color: red">${approved}</td>
                            <td style="color: red">${rejected}</td>
                            <td style="color: red">${pending}</td>
                        </tr>
                    </tbody>
                </table> 
            </div>
            <div class="row">
                <h4>Gender</h4>
                <table class="table table-bordered" style="width: 75%">
                    <thead>
                        <tr>
                            <th style="width: 22%" scope="col"></th>
                            <th style="width: 39%" scope="col">Male User</th>
                            <th style="width: 39%" scope="col">Female User</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Number of user</th>
                            <td style="color: red">${male}</td>
                            <td style="color: red">${female}</td>
                        </tr>
                    </tbody>
                </table> 
            </div>
            <div class="row">
                <h4>User</h4>
                <table class="table table-bordered" style="width: 75%">
                    <thead>
                        <tr>
                            <th style="width: 22%" scope="col"></th>
                            <th style="width: 26%" scope="col">Ministry Staff</th>
                            <th style="width: 26%" scope="col">Clinic Staff</th>
                            <th style="width: 26%" scope="col">Public User</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Number of user</th>
                            <td style="color: red">${ms}</td>
                            <td style="color: red">${cs}</td>
                            <td style="color: red">${pu}</td>
                        </tr>
                    </tbody>
                </table> 
            </div>
        </div>
    </body>
</html>
