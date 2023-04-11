package com.groupeisi.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itextpdf.io.font.FontProgram;
import com.itextpdf.io.font.FontProgramFactory;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import java.text.NumberFormat;
import java.util.Locale;

import com.groupeisi.dao.ICv;
import com.groupeisi.entities.Cv;

@WebServlet(urlPatterns = {"/pdf/pdf"})
public class PdfServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	@EJB
	private ICv cvdao;
   
    public PdfServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cv cv2 = new Cv();
		HttpSession session = request.getSession(false);
        cv2 = cvdao.byEmail(session.getAttribute("email").toString());
        
        String masterPath = request.getServletContext().getRealPath( "/WEB-INF/cv.pdf" );
            response.setContentType( "application/pdf" );
            
            try ( 
            	PdfReader reader = new PdfReader( masterPath );
                PdfWriter writer = new PdfWriter( response.getOutputStream() );
                PdfDocument document = new PdfDocument( reader, writer ) ) {
                  
                  PdfPage page = document.getPage( 1 );
                  PdfCanvas canvas = new PdfCanvas( page );
                  
                  FontProgram fontProgram = FontProgramFactory.createFont();
                  PdfFont font = PdfFontFactory.createFont( fontProgram, "utf-8" );
                  canvas.setFontAndSize( font, 14 );
                  
                  canvas.beginText();
                  
                  
                  
                  int top = 703;

                canvas.setTextMatrix( 85, 725 );
                  canvas.showText( "" + cv2.getPrenom()+"  " + cv2.getNom()+"  " + cv2.getAge()+" ans" );
                  
                  canvas.setFontAndSize( font, 12 );
                canvas.setTextMatrix( 85, 703 );
                  canvas.showText( "" + cv2.getEmail() );

                canvas.setTextMatrix( 85, 675 );
                  canvas.showText( "" + cv2.getAdresse() );
                  
                canvas.setTextMatrix( 85, 650 );
                  canvas.showText( "" + cv2.getTelephone() );
					         
                canvas.setTextMatrix( 85, 500 );
                  canvas.showText( "" + cv2.getSpecialite() );
                  
					/*
					 * canvas.setTextMatrix( 85, 440 ); canvas.showText( "" +
					 * cv2.getExperienceProfessionnelle());
					 */
                  
                  String[] lignes = cv2.getExperienceProfessionnelle().split("\n");
                   top = 440;
                  for (String ligne : lignes) {
                    ligne = ligne.trim();
                  canvas.setTextMatrix( 85, top );
                    canvas.showText( "" + ligne);
                    top -= 20;
                  }
                  
                  
                  top -= 20;
              	
 				 canvas.setTextMatrix( 85, 320 ); canvas.showText( "" +
 					 cv2.getNiveauEtude() );
                  
                  canvas.endText();
                  
         }
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cv cv2 = new Cv();
		HttpSession session = request.getSession(false);
        cv2 = cvdao.byEmail(session.getAttribute("email").toString());
        
        String masterPath = request.getServletContext().getRealPath( "/WEB-INF/cv.pdf" );
            response.setContentType( "application/pdf" );
            
            try ( 
            	PdfReader reader = new PdfReader( masterPath );
                PdfWriter writer = new PdfWriter( response.getOutputStream() );
                PdfDocument document = new PdfDocument( reader, writer ) ) {
                  
                  PdfPage page = document.getPage( 1 );
                  PdfCanvas canvas = new PdfCanvas( page );
                  
                  FontProgram fontProgram = FontProgramFactory.createFont();
                  PdfFont font = PdfFontFactory.createFont( fontProgram, "utf-8" );
                  canvas.setFontAndSize( font, 14 );
                  
                  canvas.beginText();
                  
                  
                  
                  int top = 703;

                canvas.setTextMatrix( 85, 725 );
                  canvas.showText( "" + cv2.getPrenom()+"  " + cv2.getNom()+"  " + cv2.getAge()+" ans" );
                  
                  canvas.setFontAndSize( font, 12 );
                canvas.setTextMatrix( 85, 703 );
                  canvas.showText( "" + cv2.getEmail() );

                canvas.setTextMatrix( 85, 675 );
                  canvas.showText( "" + cv2.getAdresse() );
                  
                canvas.setTextMatrix( 85, 650 );
                  canvas.showText( "" + cv2.getTelephone() );
                  
					/*
					 * canvas.setTextMatrix( 85, 590 ); canvas.showText( "" +
					 * cv2.getCompte().getDomaine().getNom() );
					 */
                  
                canvas.setTextMatrix( 85, 525 );
                  canvas.showText( "" + cv2.getSpecialite() );
                  
                canvas.setTextMatrix( 85, 460 );
                  canvas.showText( "" + cv2.getExperienceProfessionnelle());
                  
                  String[] lignes = cv2.getExperienceProfessionnelle().split("\n");
                   top = 400;
                  for (String ligne : lignes) {
                    ligne = ligne.trim();
                  canvas.setTextMatrix( 85, top );
                    canvas.showText( "" + ligne);
                    top -= 20;
                  }
                  
                  
                  top -= 20;
                  
                  
                  canvas.endText();
                  
         }
	}

}
