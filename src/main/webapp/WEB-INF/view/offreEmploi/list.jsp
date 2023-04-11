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
			<c:choose>
		     <c:when test="${postuler != null}">
			  <script>
			  	window.onload = function() {
			        alert("Confirmation de candidature !!! ");
			      }    
			  </script> 
		     </c:when>
		  </c:choose>
   			<div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                               <!--  <div class="d-md-flex">
                                    <h4 class="card-title col-md-10 mb-md-0 mb-3 align-self-center text-center">Liste des entreprises</h4>
                               		<div class="col-md-2 ms-auto">
                                        <select class="form-select shadow-none col-md-2 ml-auto">
                                            <option selected>January</option>
                                            <option value="1">February</option>
                                            <option value="2">March</option>
                                            <option value="3">April</option>
                                        </select>
                                    </div> 
                                </div> -->
                                <div class="table-responsive mt-5">
                                    <table class="table stylish-table no-wrap">
                                        <tbody>
                                        	<c:forEach var="offre" items="${offreEmplois}">
	                                            <tr>
	                                                <td style="width:50px;"><span class="round"><img src="../ressource/menu/images/users/bilding.jpg" alt="user" style="width:50px;"/></span></td>
	                                                <td class="align-middle">
	                                                    <h6><c:out value="${offre.titre}" /></h6>
	                                                    <small class="text-muted"><i class="me-2 fas fa-map-marker-alt"></i><c:out value="${offre.lieu}" /></small>
	                                                </td>
													<td>
														<h6><i class="me-2 fas fa-code-branch" ></i>
														<c:out value="${offre.categorie.nomCategorie}" /></h6>
													</td> 
													<td>
														<a class="btn btn-primary" href="details?id=${offre.id}" >Ouvrir</a>
													</td>
	                                            </tr>
                                            </c:forEach> 
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
           <jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>