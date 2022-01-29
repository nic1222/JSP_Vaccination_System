<%-- 
    Document   : editPublicUserAcc
    Created on : Oct 30, 2021, 10:16:27 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My User Account</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">   
    </head>
    <body>
        <jsp:include page="bannerPublicUser.jsp"/>
        <div class="container">
            <form action="EditPublicUserAccProceed" method="POST">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="p-3 py-5">
                            <div class="d-flex align-items-center mb-3">
                                <h4 class="text-right">My Account</h4>
                            </div>
                            <div class="row gap-1">
                                <div class="col-md-3">
                                    <label class="labels">Username</label>
                                </div>
                                <div class="col-md-8">                                   
                                    <input type="text" name="id" class="form-control" placeholder="name" value="${id}" readonly>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Password</label>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" name="password" class="form-control" placeholder="name" value="${password}" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Name</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="name" class="form-control" placeholder="name" value="${name}" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Gender(Male/Female)</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="gender" class="form-control" placeholder="name" value="${gender}" readonly>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Phone Number</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="phone" class="form-control" placeholder="enter phone number" value="${phone}" pattern="\d*" maxlength="12" placeholder="Number Only" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">IC</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="ic" class="form-control" placeholder="ic number" value="${ic}" pattern="\d*" maxlength="12" placeholder="Number Only" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Email</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="email" name="email" class="form-control" placeholder="enter email id" value="${email}" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Address</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="address" class="form-control" placeholder="enter address" value="${address}" required>
                                </div>
                                <div class="col-md-3">
                                    <label class="labels">Vaccination Status</label>
                                </div>
                                <div class="col-md-8"> 
                                    <input type="text" name="vaccinationStatus" class="form-control" value="${vaccinationStatus}" readonly>
                                </div>
                            </div>
                            <div class="mt-5 text-center">
                                <a class="btn btn-secondary" href="Home">Back</a>
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
