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
                                    <h4 class=" mt-2"><c:out value="${OffreEmplois.titre}" /> <c:out value="${cv.nom}" /></h4>
                                </center>
                            </div>
                            <div>
                            	<center>
	                            	<h6 class=" m-2 card-title"><c:out value="${OffreEmplois.categorie.nomCategorie}" /></h6>
	                            	<h6 class=" m-2 card-title ">Entreprise: <c:out value="${OffreEmplois.entreprise.name}" /></h6>
                            	</center>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <form class="form-horizontal form-material mx-2"  method="post" action="/jobweb/postuler/postuler" >
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Description</label>
                                       	<textarea rows="5" class="form-control ps-0 form-control-line"><c:out value="${OffreEmplois.description}" /></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Missions</label>
                                        <div class="col-md-12">
                                         <textarea rows="5" class="form-control ps-0 form-control-line"><c:out value="${OffreEmplois.missions}" /></textarea>  
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Lieu</label>
                                        <div class="col-md-12">
                                            <h6 class="form-control ps-0 form-control-line"><c:out value="${OffreEmplois.lieu}" /></h6>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Duree du contrat</label>
                                        <div class="col-md-12">
                                            <h6 class="form-control ps-0 form-control-line"><c:out value="${OffreEmplois.dureeContrat}" /></h6>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Salaire</label>
                                        <div class="col-md-12">
                                            <h6 rows="5" class="form-control ps-0 form-control-line"><c:out value="${OffreEmplois.salaire}" /></h6>
                                        </div>
                                    </div>
          							 <div class="form-group">
                                        <label class="col-md-12 mb-0">Date Limite de depot</label>
                                        <div class="col-md-12">
                                            <h6 rows="5" class="form-control ps-0 form-control-line"><c:out value="${OffreEmplois.dateLimiteDepot}" /></h6>
                                        </div>
                                    </div>
                                     <div class="form-group" hidden="true">
                                        <label class="col-md-12 mb-0">id</label>
                                        <div class="col-md-12">
                                            <textarea class="form-control ps-0 form-control-line" name="idOffre"><c:out value="${OffreEmplois.id}" /></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 d-flex">
                                            <button type="submit" class="btn btn-info mx-auto mx-md-0 text-white" >Postuler</button>
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