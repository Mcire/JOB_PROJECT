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
		<!-- ======================================================================= -->
			<div class="col-lg-9 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <form method="post" class="form-horizontal form-material mx-2">
                                	<div class="form-group">
                                        <label class="col-md-12 mb-0">Titre</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="Developpeur Web et mobile" name="titre"
                                                class="form-control ps-0 form-control-line">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Description</label>
                                        <div class="col-md-12">
                                           <textarea rows="5"  name="description" class="form-control ps-0 form-control-line"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Missions</label>
                                        <div class="col-md-12">
                                             <textarea rows="5"  name="missions" class="form-control ps-0 form-control-line"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group" hidden="true">
                                        <label class="col-md-12 mb-0">Duree du contrat</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="Johnathan Doe" name="contrat"
                                                class="form-control ps-0 form-control-line" >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Lieu</label>
                                        <div class="col-md-12">
                                            <input type="text" placeholder="Dakar"
                                                class="form-control ps-0 form-control-line" name="lieu">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Salaire</label>
                                        <div class="col-md-12">
                                            <input type="number"  name="salaire"
                                                class="form-control ps-0 form-control-line">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Date limite de depot</label>
                                        <div class="col-md-12">
                                            <input type="date" placeholder=""  name="date"
                                                class="form-control ps-0 form-control-line" >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12">Categorie</label>
                                        <div class="col-sm-12 border-bottom">
                                            <select class="form-select shadow-none border-0 ps-0 form-control-line" name="categorie">
                                             	<c:forEach var="cat" items="${categories}">
												  	<option value='<c:out value="${cat.id}" />'>
												  		<c:out value="${cat.nomCategorie} " />
												  	</option>
												</c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 d-flex">
                                            <button class="btn btn-info mx-auto mx-md-0 text-white" type="submit" >Ajourter</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
		<!-- ======================================================================= -->	
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>