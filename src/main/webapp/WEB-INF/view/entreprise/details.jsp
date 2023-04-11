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
                                <form class="form-horizontal form-material mx-2">
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Secteur d'activite</label>
                                       	<h6 class="form-control ps-0 form-control-line"><c:out value="${entreprise.secteurActivite}" /></h6>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Email</label>
                                        <div class="col-md-12">
                                            <h6 class="form-control ps-0 form-control-line"><c:out value="${entreprise.email}" /></h6>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Telephone</label>
                                        <div class="col-md-12">
                                            <h6 class="form-control ps-0 form-control-line"><c:out value="${entreprise.telephone}" /></h6>
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