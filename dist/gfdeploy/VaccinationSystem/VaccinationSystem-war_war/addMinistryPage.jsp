<%-- 
    Document   : addMinistryPage
    Created on : Oct 31, 2021, 4:53:00 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Ministry Account Page</title>
    </head>
    <body>
        <jsp:include page="bannerMinistry.jsp"/>
        <div class="container">
            <form action="AddMinistryPage" method="POST">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="p-3 py-5">
                            <div class="d-flex align-items-center mb-3">
                                <h4 class="text-right">Add New Ministry Staff Account</h4>
                            </div>
                            <div class="row gap-1">
                                <div class="col-md-3">
                                    <label class="labels">Username</label>
                                </div>
                                <div class="col-md-8">                                   
                                    <input type="text" name="username" class="form-control" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Password</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" name="password" class="form-control" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Name</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="name" class="form-control" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Gender(Male/Female)</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="gender" class="form-control" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Phone Number</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="phone" class="form-control" pattern="\d*" maxlength="12" placeholder="Number Only" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">IC</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="ic" class="form-control" pattern="\d*" maxlength="12" placeholder="Number Only" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Email</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="email" name="email" class="form-control" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Address</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="address" class="form-control" required>
                                </div>
                            </div>
                            <div class="mt-5 text-center">
                                <a class="btn btn-secondary" href="manageMinistryAcc.jsp">Back</a>
                                <!-- Button trigger modal -->
                                <button type="submit" class="btn btn-primary">Add</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </form>
        </div>
    </body>
</html>
