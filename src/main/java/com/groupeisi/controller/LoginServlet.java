package com.groupeisi.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupeisi.dao.ICv;
import com.groupeisi.dao.IEntreprise;
import com.groupeisi.entities.Cv;
import com.groupeisi.entities.Entreprise;

import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/auth/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	private IEntreprise loginDao;
	@EJB
	private ICv loginDao1;
	 
	public LoginServlet() {
		super();

	}

	public void init(ServletConfig config) throws ServletException {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("../WEB-INF/view/auth/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String useremail = request.getParameter("email");
		String password = request.getParameter("password");

		if (loginDao.login(useremail, password)) {
			Entreprise entreprise = new Entreprise();
			HttpSession session = request.getSession();
			entreprise = loginDao.byEmail(useremail);
			session.setAttribute("id", entreprise.getId());
			session.setAttribute("username",entreprise.getName() );
			session.setAttribute("email", entreprise.getEmail());
			session.setAttribute("profile", entreprise.getProfil().getNomProfil());
			session.setAttribute("idProfil", entreprise.getProfil().getId());
			response.sendRedirect("/jobweb/cv/list");

		} else if (loginDao1.login(useremail, password)) {
			Cv cv = new Cv();
			cv = loginDao1.byEmail(useremail);
			HttpSession session = request.getSession();
			session.setAttribute("id", cv.getId());
			session.setAttribute("username", cv.getPrenom()+" "+cv.getNom());
			session.setAttribute("email", cv.getEmail());
			session.setAttribute("profile", cv.getProfil().getNomProfil());
			session.setAttribute("idProfil", cv.getProfil().getId());
			response.sendRedirect("/jobweb/offreEmploi/list");
		} else {
			request.setAttribute("error", "erreur!!!");
			request.getRequestDispatcher("../WEB-INF/view/auth/login.jsp").forward(request, response);
		}

	}

}
