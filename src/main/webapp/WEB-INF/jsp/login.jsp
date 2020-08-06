<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>CMED</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/-Login-form-Page-BS4-.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Dark-NavBar-1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Dark-NavBar-2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Dark-NavBar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Footer-Dark.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Header-Dark.css">
</head>

<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-9 col-lg-12 col-xl-10">
            <div class="card shadow-lg o-hidden border-0 my-5">
                <div class="card-body p-0">
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-flex">
                            <div
                                    class="flex-grow-1 bg-login-image"
                                    style="background-image: url('img/login.jpg');"
                            ></div>
                        </div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h4 class="text-dark mb-4">Welcome To CMED</h4>
                                </div>
                                <form class="user">
                                    <div class="form-group">
                                        <input
                                                class="form-control form-control-user"
                                                type="email"
                                                id="exampleInputEmail"
                                                aria-describedby="emailHelp"
                                                placeholder="Enter Email Address..."
                                                name="email"
                                        />
                                    </div>
                                    <div class="form-group">
                                        <input
                                                class="form-control form-control-user"
                                                type="password"
                                                id="exampleInputPassword"
                                                placeholder="Password"
                                                name="password"
                                        />
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <div class="form-check">
                                                <input
                                                        class="form-check-input custom-control-input"
                                                        type="checkbox"
                                                        id="formCheck-1"
                                                />
                                            </div>
                                        </div>
                                    </div>
                                    <button
                                            class="btn btn-primary btn-block text-white btn-user"
                                            type="submit"
                                    >
                                        Login
                                    </button>
                                    <hr/>
                                    <hr/>
                                </form>
                                <div class="text-center"></div>
                                <div class="text-center"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/datePicker.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>

</html>