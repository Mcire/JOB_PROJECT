<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>job</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
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
  <link href="../ressource/accueil/css/style.css" rel="stylesheet">
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-8 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.html" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">OfferJoB</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Créer un compte</h5>
                    <p class="text-center small">Entrez les informations de votre entreprises</p>
                  </div>

                  <form method="post" class="row g-3 needs-validation" novalidate >
                  	<div class="row">
	                    <div class="col-6">
	                      <label for="yourName" class="form-label">Nom</label>
	                      <input type="text" name="nom" class="form-control" id="yourName" required>
	                      <div class="invalid-feedback">SVP, entrez votre nom!</div>
	                    </div>
	     				<div class="col-6">
	                      <label for="adresse" class="form-label">Adresse</label>
	                      <input type="text" name="adresse" class="form-control" id="adresse" required>
	                      <div class="invalid-feedback">SVP, entrez  votre adresse</div>
	                    </div>
	                </div>
                    <div class="col-12">
                      <label for="yourEmail" class="form-label">Email</label>
                      <input type="email" name="email" class="form-control" id="yourEmail" required>
                      <div class="invalid-feedback">SVP,entrez un adresse emaiul valide!</div>
                    </div>
					<div class="col-12">
                      <label for="telephone" class="form-label">Telephone</label>
                      <input type="tel" name="telephone" class="form-control" id="telephone" placeholder="Ex: 77 740 09 30" required>
                      <div class="invalid-feedback">SVP, donnez votre numero de telephone</div>
                    </div>
                    <div class="col-12">
                      <label for="seceurActivite" class="form-label">Secteur d'activite</label>
                      <input type="text" name="secteurActivite" class="form-control" id="secteurActivite" required>
                      <div class="invalid-feedback">svp, donnez votre secteur d'activite</div>
                    </div>
                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password" name="password" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Please enter your password!</div>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" name="terms" type="checkbox" value="" id="acceptTerms" required>
                        <label class="form-check-label" for="acceptTerms">Je suis d'accord et j'accepte les <a href="#">termes et conditions</a></label>
                        <div class="invalid-feedback">Vous devez accepter avant de soumettre.</div>
                      </div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Vous devez accepter avant de soumettre.</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Vous avez déjà un compte?<a href='<c:url value="/auth/login"/>'>Se connecter</a></p>
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