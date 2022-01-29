<%-- 
    Document   : login
    Created on : Oct 14, 2021, 4:09:46 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">   
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">
                                <div class="mb-md-5 mt-md-4 pb-5">
                                    <form action="Login" method="POST">
                                        <h2 class="fw-bold mb-2 ">VaccinationƧ</h2>
                                        <p class="text-white-50 mb-5">Please enter your username and password</p>

                                        <div class="form-outline form-white mb-4">
                                            <input type="text" name="username" class="form-control form-control-lg" placeholder="Username" required/>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <input type="password" name="password" class="form-control form-control-lg" placeholder="Password" required/>
                                        </div>

                                        <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
                                    </form>
                                </div>
                                <div>
                                    <p class="mb-0">Don't have an account yet? </p>
                                    <p class="mb-0"><a href="register.jsp" class="text-white-50 fw-bold">Register for Public User</a></p>
                                    <p class="mb-0"><a href="registerClinic.jsp" class="text-white-50 fw-bold">Register for Clinic</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
