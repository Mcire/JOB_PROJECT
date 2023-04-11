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
		  <%-- <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- column -->
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <h3 class="card-title"> Listes des entreprises</h3>
                                <div class="table-responsive">
                                    <table class="table user-table no-wrap">
                                        <thead>
                                            <tr>
                                                <th class="border-top-0">ID</th>
                                                <th class="border-top-0">Nom</th>
                                                <th class="border-top-0">Adresse</th>
                                                <th class="border-top-0">Secteur Activite</th>
                                                <th class="border-top-0">Telephone</th>
                                                <th class="border-top-0">Email</th>
                                                <th class="border-top-0">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach var="en" items="${cvs}">
												<tr>
													<td><c:out value="${en.id}" /></td>
													<td><c:out value="${en.name}" /></td>
													<td><c:out value="${en.adresse}" /></td>
													<td><c:out value="${en.secteurActivite}" /></td>
													<td><c:out value="${en.telephone}" /></td>
													<td><c:out value="${en.email}" /></td>
													<td>
														<a class="btn btn-success" href="edit?id=${cv.id}"><i class="fas fa-pencil-alt fas-white"></i></a>
														<a class="btn btn-light" href="details" ><i class="fas fa-edit"></i></a>
														<a class="btn btn-danger" href="delete" ><i class="fas fa-archive"></i></a>
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
           </div>
   --%>
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
                                        <!-- <thead>
                                            <tr>
                                                <th class="border-top-0" colspan="2">Id</th>
                                                <th class="border-top-0">Secteur Activite</th>
                                                <th class="border-top-0">Telephone</th>
                                                <th class="border-top-0">Email</th>
                                                <th class="border-top-0">Action</th>
                                            </tr>
                                        </thead> -->
                                        <tbody>
                                        	<c:forEach var="en" items="${cvs}">
	                                            <tr>
	                                                <td style="width:50px;"><span class="round"><img src="../ressource/menu/images/users/bilding.jpg" alt="user" style="width:50px;"/></span></td>
	                                                <td class="align-middle">
	                                                    <h6><c:out value="${en.name}" /></h6>
	                                                    <small class="text-muted"><i class="me-2 fas fa-map-marker-alt"></i><c:out value="${en.adresse}" /></small>
	                                                </td>
													<td><c:out value="${en.secteurActivite}" /></td>
													<td><i class="me-2 fas fa-phone"></i><c:out value="${en.telephone}" /></td>
													<td><i class="me-2 fas fa-paper-plane"></i><c:out value="${en.email}" /></td>
													<td>
														<h6 class="text-center">Action</h6>
														<c:choose>
														    <c:when test="${idProfil == 2}">
														       	<a class="btn " href="details?id=${en.id}"><i class="fas fa-pencil-alt fas-white"></i></a>
														    </c:when>
														    <c:otherwise>
														      	<a class="btn " href="edit?id=${en.id}"><i class="fas fa-pencil-alt fas-white"></i></a>
																<a class="btn " href="details?id=${en.id}" ><i class="fas fa-edit "></i></a>
																<a class="btn " href="delete?id=${en.id}" ><i class="fas fa-archive"></i></a>
														    </c:otherwise>
														</c:choose>
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