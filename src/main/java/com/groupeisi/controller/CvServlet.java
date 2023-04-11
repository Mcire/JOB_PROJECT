package com.groupeisi.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupeisi.dao.ICv;
import com.groupeisi.dao.IProfil;
import com.groupeisi.entities.Cv;
import com.groupeisi.entities.Profil;



@WebServlet(urlPatterns = {"/cv/list", "/cv/details", "/cv/edit"})
public class CvServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	private ICv cvdao;
	@EJB
	private IProfil profildao;
   
    public CvServlet() {
        super();
        
    }

	
	public void init(ServletConfig config) throws ServletException {

	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id ;
		HttpSession session = request.getSession(false);
	        if (session == null) {
	        	response.sendRedirect("../index.jsp");
	        } 

	        if (session.getAttribute("username") == null) {
	        	response.sendRedirect("../index.jsp");
	        } else /*if(session.getAttribute("profile").equals("DEMANDEUR"))*/ {
		String action = request.getServletPath(); 
		switch (action) { 
			case "/cv/details":
				Cv cv2= new Cv();
				id = Integer.parseInt(request.getParameter("id"));
				request.setAttribute("cv",cvdao.get(id, cv2));
				request.getRequestDispatcher("../WEB-INF/view/cv/add.jsp").forward(request,response); 
				break; 
			case "/cv/list":
				Cv cv = new Cv();
				request.setAttribute("cvs", cvdao.list(cv));
				request.getRequestDispatcher("../WEB-INF/view/cv/list.jsp").forward(request, response); 
			  	break; 
			case "/cv/edit":
				Cv cv3= new Cv();
				id = Integer.parseInt(request.getParameter("id"));
				request.setAttribute("cv",cvdao.get(id, cv3));
				request.getRequestDispatcher("../WEB-INF/view/cv/edit.jsp").forward(request, response); 
			  	break; 
			 default:
				Cv cv1 = new Cv();
				request.setAttribute("cvs", cvdao.list(cv1));
				request.getRequestDispatcher("../WEB-INF/view/cv/list.jsp").forward(request, response); 
				break;
			}
	      }
		
		/*}else {
			response.sendRedirect("/jobweb/entreprise/list");
		}*/
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
        if (session == null) {
        	response.sendRedirect("../index.jsp");
        } 

        if (session.getAttribute("username") == null) {
        	response.sendRedirect("../index.jsp");
        } else if(session.getAttribute("profile").equals("DEMANDEUR")) 
        {
        	int id = Integer.parseInt(request.getParameter("id"));
			Cv cv = new Cv();
			cv = cvdao.get(id, cv);
			
			String nomc = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String adressec = request.getParameter("adresse");
			String emailc = request.getParameter("email");
			int age = Integer.parseInt(request.getParameter("age"));
			String telephonec = request.getParameter("telephone");
			String niveauEtude = request.getParameter("niveauEtude");
			String specialite = request.getParameter("specialite");
			String experienceProfessionnelle = request.getParameter("experienceProfessionnelle");
			String passwordc = request.getParameter("password");
			
			cv.setNom(nomc);
			cv.setPrenom(prenom);
			cv.setAdresse(adressec);
			cv.setEmail(emailc);
			cv.setAge(age);
			cv.setTelephone(telephonec);
			cv.setNiveauEtude(niveauEtude);
			cv.setSpecialite(specialite);
			cv.setExperienceProfessionnelle(experienceProfessionnelle);
			cv.setPassword(passwordc);
			
			Profil profil2 = new Profil();
			profil2 = profildao.get(2, profil2);
			cv.setProfil(profil2);
			cvdao.update(cv);
			
			
			request.setAttribute("che","guevara");
			response.sendRedirect("/jobweb/cv/list");
        }
	}

}
