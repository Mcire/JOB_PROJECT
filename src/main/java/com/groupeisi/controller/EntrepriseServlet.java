package com.groupeisi.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupeisi.dao.IEntreprise;
import com.groupeisi.dao.IProfil;
import com.groupeisi.entities.Cv;
import com.groupeisi.entities.Entreprise;
import com.groupeisi.entities.Profil;

@WebServlet(urlPatterns = {"/entreprise/list", "/entreprise/details", "/entreprise/edit"})
public class EntrepriseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private IEntreprise entreprisedao;
	@EJB
	private IProfil profildao;
    public EntrepriseServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id;
		HttpSession session = request.getSession(false);
        if (session == null) {
        	response.sendRedirect("../index.jsp");
        } 

        if (session.getAttribute("username") == null) {
        	response.sendRedirect("../index.jsp");
        } else /*if(session.getAttribute("profile").equals("ANNONCEUR"))*/ {
	String action = request.getServletPath(); 
	switch (action) { 
		case "/entreprise/details":
			Entreprise entreprise = new Entreprise();
			id = Integer.parseInt(request.getParameter("id"));
			request.setAttribute("entreprise",entreprisedao.get(id, entreprise));
			request.getRequestDispatcher("../WEB-INF/view/entreprise/details.jsp").forward(request,response); 
			break; 
		case "/entreprise/list":
			Entreprise entreprise2 = new Entreprise();
			request.setAttribute("cvs", entreprisedao.list(entreprise2));
			request.getRequestDispatcher("../WEB-INF/view/entreprise/list.jsp").forward(request, response); 
		  	break; 
		case "/entreprise/edit":
			Entreprise entreprise3 = new Entreprise();
			id = Integer.parseInt(request.getParameter("id"));
			request.setAttribute("entreprise",entreprisedao.get(id, entreprise3));
			request.getRequestDispatcher("../WEB-INF/view/entreprise/edit.jsp").forward(request, response); 
		  	break; 
		 default:
			 Entreprise entreprise4 = new Entreprise();
			request.setAttribute("cvs", entreprisedao.list(entreprise4));
			 request.getRequestDispatcher("../WEB-INF/view/entreprise/list.jsp").forward(request, response); 
			 break;
			}
	
		} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
        if (session == null) {
        	response.sendRedirect("../index.jsp");
        } 

        if (session.getAttribute("username") == null) {
        	response.sendRedirect("../index.jsp");
        } else {
		Entreprise entreprise = new Entreprise();
		int id = Integer.parseInt(request.getParameter("id"));
		entreprise = entreprisedao.get(id, entreprise);
		
		String nom = request.getParameter("name");
		String adresse = request.getParameter("adresse");
		String email = request.getParameter("email");
		String telephone = request.getParameter("telephone");
		String secteurActivite = request.getParameter("secteurActivite");
		String password = request.getParameter("password");

		entreprise.setName(nom);
		entreprise.setAdresse(adresse);
		entreprise.setEmail(email);
		entreprise.setTelephone(telephone);
		entreprise.setSecteurActivite(secteurActivite);
		entreprise.setPassword(password);
		
		Profil profil = new Profil();
		profil = profildao.get(3, profil);
		entreprise.setProfil(profil);
		
		entreprisedao.update(entreprise);
		
		response.sendRedirect("/jobweb/entreprise/list");
       }
	}

}
