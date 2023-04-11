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
		  <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- column -->
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <h3 class="card-title"> Listes des cvs</h3>
                                <div class="table-responsive">
                                    <table class="table user-table no-wrap">
                                        <thead>
                                            <tr>
                                                <th class="border-top-0">ID</th>
                                                <th class="border-top-0">Nom</th>
                                                <th class="border-top-0">Prenom</th>
                                                <th class="border-top-0">Niveau d'etude</th>
                                                <th class="border-top-0">Specialite</th>
                                                <th class="border-top-0">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach var="cv" items="${cvs}">
												<tr>
													<td><c:out value="${cv.id}" /></td>
													<td><c:out value="${cv.nom}" /></td>
													<td><c:out value="${cv.prenom}" /></td>
													<td><c:out value="${cv.niveauEtude}" /></td>
													<td><c:out value="${cv.specialite}" /></td>
													<td>
														<c:choose>
														    <c:when test="${idProfil == 3}">
														       	<a class="btn btn-light" href="details?id=${cv.id}" ><i class="fas fa-edit"></i></a>
														    </c:when>
														    <c:when test="${idProfil == 1}">
														       	<a class="btn btn-light" href="details?id=${cv.id}" ><i class="fas fa-edit"></i></a>
														    </c:when>
														    <c:otherwise>
														      	<a class="btn btn-success" href="edit?id=${cv.id}"><i class="fas fa-pencil-alt fas-white"></i></a>
																<a class="btn btn-light" href="details?id=${cv.id}" ><i class="fas fa-edit"></i></a>
																<a class="btn btn-danger" href="delete?id=${cv.id}" ><i class="fas fa-archive"></i></a>
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
           </div>
  
           <jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>

