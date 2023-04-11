package com.groupeisi.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.mail.MessagingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupeisi.dao.ICv;
import com.groupeisi.dao.IEntreprise;
import com.groupeisi.dao.IProfil;
import com.groupeisi.entities.Cv;
import com.groupeisi.entities.EmailSender;
import com.groupeisi.entities.Entreprise;
import com.groupeisi.entities.Profil;

@WebServlet(urlPatterns = { "/auth/register", "/auth/offer" })
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	private ICv cvdao;

	@EJB
	private IEntreprise entreprisedao;

	@EJB
	private IProfil profildao;

	public RegisterController() {
		super();

	}

	public void init(ServletConfig config) throws ServletException {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		switch (action) {
		case "/auth/offer":
			request.getRequestDispatcher("../WEB-INF/view/auth/RegisterEntreprise.jsp").forward(request, response);
			break;
		case "/auth/register":
			request.getRequestDispatcher("../WEB-INF/view/auth/RegisterUser.jsp").forward(request, response);
			break;
		default:
			request.getRequestDispatcher("../WEB-INF/view/auth/list.jsp").forward(request, response);
			break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// =========== Register entrreprise ==============
		String action = request.getServletPath();
		if(action.equals("/auth/offer")) {
			Entreprise entreprise = new Entreprise();
			String nom = request.getParameter("nom");
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
	
			entreprisedao.add(entreprise);
			try {
				EmailSender.sendEmail(email, "INSCRIPTION", "L'entreprise a ete ajouter avec succees!!");
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	
			}else {
			 //=========== Register User ============== 
			 Cv cv = new Cv(); 
			 String nomc =request.getParameter("nom"); 
			 String prenom = request.getParameter("prenom");
			 String adressec = request.getParameter("adresse"); 
			 String emailc =request.getParameter("email"); 
			 int age = Integer.parseInt(request.getParameter("age")); 
			 String telephonec =request.getParameter("telephone"); 
			 String niveauEtude =request.getParameter("niveauEtude"); 
			 String specialite =request.getParameter("specialite"); 
			 String experienceProfessionnelle =request.getParameter("experienceProfessionnelle");
			 String passwordc =request.getParameter("password");
			 
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
			 cv.setProfil(profil2); cvdao.add(cv);
			 try {
					EmailSender.sendEmail(emailc, "Confirmation d'ajout de votre CV", "Nous vous confirmons que nous avons bien reçu votre CV que vous avez ajouté sur notre site rosario.com . Nous vous remercions pour l'intérêt que vous portez à notre entreprise.");
				} catch (MessagingException e) {
					e.printStackTrace();
				}
			
		}
		 
		response.sendRedirect("/jobweb/auth/login");
	}

}
