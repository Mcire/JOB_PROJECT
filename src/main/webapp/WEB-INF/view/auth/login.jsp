<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>login</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <link href="../ressource/accueil/img/favicon.png" rel="icon">
  <link href="../ressource/accueil/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../ressource/accueil/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../ressource/accueil/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../ressource/accueil/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../ressource/accueil/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="../ressource/accueil/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="../ressource/accueil/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../ressource/accueil/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../ressource/accueil/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.5.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

 <c:choose>
     <c:when test="${error != null}">
	  <script>
	  	window.onload = function() {
	        alert("email ou mot de passe incorrect !!!");
	      }    
	  </script> 
     </c:when>
  </c:choose>
  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.html" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">FindJob</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Se connecter</h5>
                    <p class="text-center small">Entrer votre login && mot de passe</p>
                  </div>

                  <form method="post" class="row g-3 needs-validation" novalidate>

                    <div class="col-12">
                      <label for="yourEmail" class="form-label">Email</label>
                      <input type="email" name="email" class="form-control" id="yourEmail" required>
                      <div class="invalid-feedback">SVP,entrez un adresse emaiul valide!</div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Mot de passe</label>
                      <input type="password" name="password" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">SVP, entrez votre mot de passe!</div>
                    </div>

                    <!-- <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">Remember me</label>
                      </div>
                    </div> -->
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" >Se connecter</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Vous n'avez pas de compte ?<a href="../index.jsp">Créer un compte</a></p>
                    </div>
                  </form>

                </div>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="../ressource/accueil/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="../ressource/accueil/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../ressource/accueil/vendor/chart.js/chart.umd.js"></script>
  <script src="../ressource/accueil/vendor/echarts/echarts.min.js"></script>
  <script src="../ressource/accueil/vendor/quill/quill.min.js"></script>
  <script src="../ressource/accueil/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="../ressource/accueil/vendor/tinymce/tinymce.min.js"></script>
  <script src="../ressource/accueil/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="../ressource/accueil/js/main.js"></script>

</body>

</html>