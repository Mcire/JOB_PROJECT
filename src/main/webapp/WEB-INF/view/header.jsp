<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- <html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
	</body>
</html> -->

<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Monsterlite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Monster admin lite design, Monster admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description" content="Monster Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>che</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/monster-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../ressource/menu/images/favicon.png">
    <!-- Custom CSS -->
    <link href="../ressource/menu/css/style.min.css" rel="stylesheet">
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
   <!--  <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div> -->
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="../ressource/menu/images/logo-icon.png" alt="homepage" class="dark-logo" />

                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                            <!-- dark Logo text -->
                            <img src="../ressource/menu/images/logo-text.png" alt="homepage" class="dark-logo" />

                        </span>
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav me-auto mt-md-0 ">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->

                        <li class="nav-item hidden-sm-down">
                            <form class="app-search ps-3">
                                <input type="text" class="form-control" placeholder="Search for..."> <a
                                    class="srh-btn"><i class="ti-search"></i></a>
                            </form>
                        </li>
                    </ul>

                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav">
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark" href='<c:url value="/auth/logout"/>'  role="button" >
                                <img src="../ressource/menu/images/users/che.png" alt="user" class="profile-pic me-2"><c:out value="${username}" />
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <c:choose>
			 <c:when test="${idProfil == 2}">
				<aside class="left-sidebar" data-sidebarbg="skin6">
		            <div class="scroll-sidebar">
		                <nav class="sidebar-nav">
		                    <ul id="sidebarnav">
		                        <li class="sidebar-item"> 
		                        	<a class="sidebar-link waves-effect waves-dark sidebar-link"
		                               href='<c:url value="/cv/details?id=${id}"/>' aria-expanded="false">
		                               <i class="me-3  fas fa-paper-plane"
		                                    aria-hidden="true"></i>
		                                    <span class="hide-menu">Imprimer mon cv</span>
		                             </a>
		                        </li>
		                        <li class="sidebar-item">
		                        	<a class="sidebar-link waves-effect waves-dark sidebar-link"
		                                href='<c:url value="/entreprise/list"/>' aria-expanded="false">
		                             <i class="me-3 fas fa-building" aria-hidden="true"></i>
		                             <span class="hide-menu">Listes des entreprise</span></a>
		                        </li>
		                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
		                                href='<c:url value="/offreEmploi/list"/>' aria-expanded="false">
		                                <i class="me-3 fa fa-table" aria-hidden="true"></i>
		                                <span class="hide-menu">Liste des offres d'emplois</span></a>
		                        </li>
		                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
		                                href='<c:url value="/cv/edit?id=${id }"/>' aria-expanded="false">
		                                <i class="me-3 fa fa-font" aria-hidden="true"></i>
		                                <span class="hide-menu">Mon profile</span></a>
		                        </li>
		             			<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
					                  href='<c:url value="/chat/chat"/>' aria-expanded="false">
					                  <i class="me-3 fa fa-table" aria-hidden="true"></i>
					               	  <span class="hide-menu">Forum de discussion</span></a>
					    		</li>
		                    </ul>
		                </nav>
		            </div>
		        </aside>
			 </c:when>
			 <c:when test="${idProfil == 3}">
			 	<aside class="left-sidebar" data-sidebarbg="skin6">
		            <div class="scroll-sidebar">
		                <nav class="sidebar-nav">
		                    <ul id="sidebarnav">
						  	 	<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
					                  href='<c:url value="/offreEmploi/add"/>' aria-expanded="false">
					                  <i class="me-3 fa fa-table" aria-hidden="true"></i>
					               	  <span class="hide-menu">Ajouter une offre d'emplois</span></a>
					    		</li>
					    		<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
					                  href='<c:url value="/offreEmploi/list"/>' aria-expanded="false">
					                  <i class="me-3 fa fa-table" aria-hidden="true"></i>
					               	  <span class="hide-menu">Liste des offre d'emplois</span></a>
					    		</li>
					    		<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
					                  href='<c:url value="/cv/list"/>' aria-expanded="false">
					                  <i class="me-3 fa fa-table" aria-hidden="true"></i>
					               	  <span class="hide-menu">Liste des cvs</span></a>
					    		</li>
					    		<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
		                                href='<c:url value="/entreprise/edit?id=${id }"/>' aria-expanded="false">
		                                <i class="me-3 fa fa-font" aria-hidden="true"></i>
		                                <span class="hide-menu">Le profile de l'entreprise</span></a>
		                        </li>
		                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
					                  href='<c:url value="/chat/chat"/>' aria-expanded="false">
					                  <i class="me-3 fa fa-table" aria-hidden="true"></i>
					               	  <span class="hide-menu">Forum de discussion</span></a>
					    		</li>
			  				</ul>
		                </nav>
		            </div>
		        </aside>
			 </c:when>
			 <c:otherwise>
			 		<aside class="left-sidebar" data-sidebarbg="skin6">
		            <div class="scroll-sidebar">
		                <nav class="sidebar-nav">
		                    <ul id="sidebarnav">
						  	 	<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
					                  href='<c:url value="/cv/list"/>' aria-expanded="false">
					                  <i class="me-3 fa fa-table" aria-hidden="true"></i>
					               	  <span class="hide-menu">Liste des cvs</span></a>
					    		</li>
					    		<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
					                  href='<c:url value="/entreprise/list"/>' aria-expanded="false">
					                  <i class="me-3 fa fa-table" aria-hidden="true"></i>
					               	  <span class="hide-menu">Liste des entreprises</span></a>
					    		</li>
					    		<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
					                  href='<c:url value="/offreEmploi/list"/>' aria-expanded="false">
					                  <i class="me-3 fa fa-table" aria-hidden="true"></i>
					               	  <span class="hide-menu">Liste des offres d'emploi</span></a>
					    		</li>
					    		<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
					                  href='<c:url value="/chat/chat"/>' aria-expanded="false">
					                  <i class="me-3 fa fa-table" aria-hidden="true"></i>
					               	  <span class="hide-menu">Forum de discussion</span></a>
					    		</li>
			  				</ul>
		                </nav>
		            </div>
		        </aside>
			 </c:otherwise>
		</c:choose> 										   
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-md-6 col-8 align-self-center">
                        <h3 class="page-title mb-0 p-0">Blank Page</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Blank Page</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-6 col-4 align-self-center">
                        <div class="text-end upgrade-btn">
                            <a href="https://www.wrappixel.com/templates/monsteradmin/"
                                class="btn btn-success d-none d-md-inline-block text-white" target="_blank">Upgrade to
                                Pro</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown"></ul>
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                
           