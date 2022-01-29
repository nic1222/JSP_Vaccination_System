<%-- 
    Document   : register
    Created on : Oct 14, 2021, 7:42:49 PM
    Author     : user
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">   
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div class="container">
            <form action="Register" method="POST">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="p-3 py-5">
                            <div class="d-flex align-items-center mb-3">
                                <h1 class="text-right">Register New Account</h1>
                            </div>
                            <div class="row gap-1">
                                <div class="col-md-3">
                                    <label class="labels">User Type</label>
                                </div>
                                <div class="col-md-8">                                   
                                    <select class="form-select" name="userRole">
                                        <option value="PU">Public User</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Username</label>
                                </div>
                                <div class="col-md-8">                                   
                                    <input type="text" name="username" class="form-control" placeholder="enter username" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Password</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" name="password" class="form-control" placeholder="enter password" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Name</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="name" class="form-control" placeholder="enter name" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Gender</label>
                                </div>
                                <div class="col-md-8"> 
                                    <select class="form-select" name="gender">
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Phone Number</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="phone" class="form-control" pattern="\d*" maxlength="12" placeholder="enter phone number" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">IC</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="ic" class="form-control" pattern="\d*" maxlength="12" placeholder="enter ic number" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Email</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="email" name="email" class="form-control" placeholder="enter email id" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Address</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="address" class="form-control" placeholder="enter address" required>
                                </div>
                            </div>
                            <div class="mt-5 text-center">
                                <a class="btn btn-secondary" href="login.jsp">Back</a>
                                <button type="submit" class="btn btn-primary">Register</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </form>
        </div>
    </body>
</html>
