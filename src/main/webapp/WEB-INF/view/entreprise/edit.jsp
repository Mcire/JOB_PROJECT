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
                                <center class="mt-4"> <img src="../ressource/menu/images/users/bilding.jpg"
                                        class="rounded-circle" width="150" />
                                    <h4 class="card-title mt-2"><c:out value="${entreprise.name}" /> <c:out value="${cv.nom}" /></h4>
                                    <h6 class="card-subtitle"><c:out value="${entreprise.adresse}" /> ans</h6>
                                    <div class="row justify-content-center">
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
                                            <input type="text" placeholder="Johnathan Doe" name="name"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${entreprise.name}" />">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Adresse</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="Johnathan Doe" name="adresse"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${entreprise.adresse}" />">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Email</label>
                                        <div class="col-md-12">
                                            <input type="email" placeholder="johnathan@admin.com"
                                                class="form-control ps-0 form-control-line" name="email"
                                                id="example-email" value="<c:out value="${entreprise.email}" />">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Secteur d'Activite</label>
                                        <div class="col-md-12">
                                            <input type="text"  name="secteurActivite"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${cv.niveauEtude}" />">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">telephone</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="123 456 7890"  name="telephone"
                                                class="form-control ps-0 form-control-line" value="<c:out value="${cv.telephone}" />">
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