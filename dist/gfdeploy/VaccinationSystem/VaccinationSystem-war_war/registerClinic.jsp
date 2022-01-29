<%-- 
    Document   : registerClinic
    Created on : Nov 6, 2021, 10:17:05 PM
    Author     : user
--%>

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
                                <h1 class="text-right">Register Clinic Account</h1>
                            </div>
                            <div class="row gap-1">
                                <div class="col-md-3">
                                    <label class="labels">User Type</label>
                                </div>
                                <div class="col-md-8">                                   
                                    <select class="form-select" name="userRole">
                                        <option value="CS">Clinic</option>
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
                                <div class="col-md-3">
                                    <label class="labels">Clinic Id</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="clinicId" class="form-control" placeholder="enter clinic id">
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Clinic Name</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="clinicName" class="form-control" placeholder="enter clinic name">
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Clinic Address</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="clinicAddress" class="form-control" placeholder="enter clinic address">
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">State/Federal Territory</label>
                                </div>
                                <div class="col-md-8"> 
                                    <select class="form-select" name="state">
                                        <option value="Johor">Johor</option>
                                        <option value="Kedah">Kedah</option>
                                        <option value="Kelantan">Kelantan</option>
                                        <option value="Malacca">Malacca</option>
                                        <option value="Negeri Sembilan">Negeri Sembilan</option>
                                        <option value="Pahang">Pahang</option>
                                        <option value="Penang">Penang</option>
                                        <option value="Perak">Perak</option>
                                        <option value="Perlis">Perlis</option>
                                        <option value="Sabah">Sabah</option>
                                        <option value="Sarawak">Sarawak</option>
                                        <option value="Selangor">Selangor</option>
                                        <option value="Terengganu">Terengganu</option>
                                        <option value="Kuala Lumpur">Kuala Lumpur</option>
                                        <option value="Labuan">Labuan</option>
                                        <option value="Putrajaya">Putrajaya</option>
                                    </select>
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
