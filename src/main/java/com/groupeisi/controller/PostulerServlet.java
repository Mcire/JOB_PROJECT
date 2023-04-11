package com.groupeisi.controller;

import java.io.IOException;
import java.util.Date;

import javax.ejb.EJB;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.groupeisi.dao.ICv;
import com.groupeisi.dao.IOffreEmploi;
import com.groupeisi.dao.IPostuler;
import com.groupeisi.entities.Cv;
import com.groupeisi.entities.EmailSender;
import com.groupeisi.entities.OffreEmploi;
import com.groupeisi.entities.Postuler;

@WebServlet(urlPatterns = {"/postuler/postuler"})
public class PostulerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
    private ICv cvdao;
	@EJB
    private IOffreEmploi offreEmploidao;
	@EJB
    private IPostuler postulerdao;
    
    public PostulerServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		Postuler postuler = new Postuler();
		int CvId = (int) session.getAttribute("id");
		int offreId = Integer.parseInt(request.getParameter("idOffre"));
		Date date = new Date();
		
		Cv cv = new Cv();
		cv = cvdao.get(CvId, cv);
		postuler.setCv(cv);
		
		OffreEmploi offreEmploi = new OffreEmploi();
		offreEmploi = offreEmploidao.get(offreId, offreEmploi);
		postuler.setOffreEmploi(offreEmploi);
		
		postuler.setDatePostulation(date.toString());
		
		postulerdao.add(postuler);
		
		try {
			EmailSender.sendEmail(cv.getEmail(), " Confirmation de réception de votre candidature", 
					"Nous avons bien reçu votre candidature pour le poste de [nom du poste]. "
					+ "Nous vous remercions de l'intérêt que vous portez à notre entreprise et à cette opportunité.");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		try {
			EmailSender.sendEmail(offreEmploi.getEntreprise().getEmail(), "NOUVELLE CANDIDATURE", "Vous avez recu une nouvelle candidature pour le post");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("postuler", "postuler!!!");
		response.sendRedirect("/jobweb/offreEmploi/list");
		//request.getRequestDispatcher("../WEB-INF/view/offreEmploi/list.jsp").forward(request, response);
	}

}
