package com.groupeisi.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupeisi.dao.ICategorie;
import com.groupeisi.dao.IEntreprise;
import com.groupeisi.dao.IOffreEmploi;
import com.groupeisi.entities.Categorie;
import com.groupeisi.entities.Entreprise;
import com.groupeisi.entities.OffreEmploi;


@WebServlet(urlPatterns = {"/offreEmploi/list", "/offreEmploi/add", "/offreEmploi/edit","/offreEmploi/details"})
public class OffreEmploiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
    private IOffreEmploi offreEmploidao;
	@EJB
	private ICategorie categoriedao;
	@EJB
	private IEntreprise entreprisedao;
    public OffreEmploiServlet() {
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
		} else /* if(session.getAttribute("profile").equals("DEMANDEUR")) */ {
	String action = request.getServletPath(); 
	switch (action) { 
		case "/offreEmploi/add":
			Categorie categorie = new Categorie();
			request.setAttribute("categories",categoriedao.list(categorie));
			request.getRequestDispatcher("../WEB-INF/view/offreEmploi/add.jsp").forward(request,response); 
			break; 
		case "/offreEmploi/list":
			OffreEmploi offreEmploi = new OffreEmploi();
			request.setAttribute("offreEmplois", offreEmploidao.list(offreEmploi));
			request.getRequestDispatcher("../WEB-INF/view/offreEmploi/list.jsp").forward(request, response); 
		  	break; 
		case "/offreEmploi/edit":
			OffreEmploi offreEmploi2 = new OffreEmploi();
			id = Integer.parseInt(request.getParameter("id"));
			request.setAttribute("offreEmplois", offreEmploidao.get(id, offreEmploi2));
			request.getRequestDispatcher("../WEB-INF/view/offreEmploi/edit.jsp").forward(request, response); 
		  	break;
		case "/offreEmploi/details":
			OffreEmploi offreEmploi3 = new OffreEmploi();
			id = Integer.parseInt(request.getParameter("id"));
			request.setAttribute("OffreEmplois", offreEmploidao.get(id, offreEmploi3));
			request.getRequestDispatcher("../WEB-INF/view/offreEmploi/details.jsp").forward(request, response); 
		  	break;  	
		 default:
			OffreEmploi offreEmploi4 = new OffreEmploi();
			request.setAttribute("offreEmplois", offreEmploidao.list(offreEmploi4));
			request.getRequestDispatcher("../WEB-INF/view/offreEmploi/list.jsp").forward(request, response); 
			break;
			}
        }
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		OffreEmploi offreEmploi = new OffreEmploi();
		
		String titre = request.getParameter("titre");
		String description = request.getParameter("description");
		String missions = request.getParameter("missions");
		String dureeContrat = request.getParameter("contrat");
		String lieu = request.getParameter("lieu");
		String date = request.getParameter("date");
		int salaire = Integer.parseInt(request.getParameter("salaire"));
		int categorie_id = Integer.parseInt(request.getParameter("categorie"));
		
		
		offreEmploi.setTitre(titre);
		offreEmploi.setDescription(description);
		offreEmploi.setMissions(missions);
		offreEmploi.setDureeContrat(dureeContrat);
		offreEmploi.setLieu(lieu);
		offreEmploi.setSalaire(salaire);
		offreEmploi.setDateLimiteDepot(date);
		
		Categorie categorie = new Categorie();
		categorie = categoriedao.get(categorie_id, categorie);
		offreEmploi.setCategorie(categorie);
		
		Entreprise entreprise = new Entreprise();
		entreprise = entreprisedao.get(1, entreprise);
		offreEmploi.setEntreprise(entreprise);
		
		offreEmploidao.add(offreEmploi);
	}

}
