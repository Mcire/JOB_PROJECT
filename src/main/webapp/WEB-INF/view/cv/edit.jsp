<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:include page="../header.jsp"></jsp:include>
		<!-- ---------------------------------------------------------body -------------------->
            <div class="container-fluid">
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-body profile-card">
                                <center class="mt-4"> <img src="../ressource/menu/images/users/5.jpg"
                                        class="rounded-circle" width="150" />
                                    <h4 class="card-title mt-2"><c:out value="${cv.prenom}" /> <c:out value="${cv.nom}" /></h4>
                                    <h6 class="card-subtitle"><c:out value="${cv.age}" /> ans</h6>
                                    <div class="row justify-content-center">
                                        <div class="col-4">
                                            <a href="javascript:void(0)" class="link">
                                                <i class="icon-people" aria-hidden="true"></i>
                                                <span class="font-normal">254</span>
                                            </a></div>
                                        <div class="col-4">
                                            <a href="javascript:void(0)" class="link">
                                                <i class="icon-picture" aria-hidden="true"></i>
                                                <span class="font-normal">54</span>
                                            </a></div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <form method="post" class="form-horizontal form-material mx-2">
                                	<div class="form-group">
                                        <label class="col-md-12 mb-0">Nom</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="Johnathan Doe" name="nom"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${cv.nom}" />">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Prenom</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="Johnathan Doe" name="prenom"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${cv.prenom}" />">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Adresse</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="Johnathan Doe" name="adresse"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${cv.adresse}" />">
                                        </div>
                                    </div>
                                    <div class="form-group" hidden="true">
                                        <label class="col-md-12 mb-0">Age</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="Johnathan Doe" name="age"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${cv.age}" />">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Email</label>
                                        <div class="col-md-12">
                                            <input type="email" placeholder="johnathan@admin.com"
                                                class="form-control ps-0 form-control-line" name="email"
                                                id="example-email" value="<c:out value="${cv.email}" />">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Niveau d'etude</label>
                                        <div class="col-md-12">
                                            <input type="text"  name="niveauEtude"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${cv.niveauEtude}" />">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Specialite</label>
                                        <div class="col-md-12">
                                            <input type="text"  name="specialite"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${cv.specialite}" />">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">telephone</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="123 456 7890"  name="telephone"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${cv.telephone}" />">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Experience Professionnelle</label>
                                        <div class="col-md-12">
                                            <textarea rows="5"  name="experienceProfessionnelle" class="form-control ps-0 form-control-line"><c:out value="${cv.experienceProfessionnelle}" /></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group" hidden="true">
                                        <label class="col-md-12 mb-0">Password</label>
                                        <div class="col-md-12">
                                            <input type="password" placeholder="Johnathan Doe" name="password"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${cv.password}" />">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 d-flex">
                                            <button class="btn btn-success mx-auto mx-md-0 text-white" type="submit" >Modifier</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
            </div>
			
		<!-- ----------------------------------------------------------body----------------- -->	
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>