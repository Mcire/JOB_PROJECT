package com.groupeisi.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.jms.JMSException;
import javax.jms.MessageProducer;
import javax.jms.Session;
import javax.jms.TextMessage;
import javax.jms.MessageConsumer;

@WebServlet(urlPatterns = {"/chat/chat"})
public class ChatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ActiveMQConfig activeMQConfig;
    private MessageProducer messageProducer;
    private MessageConsumer messageConsumer;
    private List<String> messages;
    public ChatServlet() {
        super();
        
    }

    @Override
    public void init() throws ServletException {
    	 super.init();
    	try {
            activeMQConfig = new ActiveMQConfig("tcp://localhost:61616");
            messageProducer = activeMQConfig.getSession().createProducer(activeMQConfig.getSession().createTopic("forum"));
            Session session = activeMQConfig.getSession();
            messageConsumer = session.createConsumer(session.createTopic("forum"));
            messages = new ArrayList<>();
            messageConsumer.setMessageListener(message -> {
                if (message instanceof TextMessage) {
                    try {
                        TextMessage textMessage = (TextMessage) message;
                        messages.add(textMessage.getText());
                    } catch (JMSException e) {
                        e.printStackTrace();
                    }
                }
            });
        } catch (JMSException e) {
            throw new ServletException(e);
        }
    }
    @Override
    public void destroy() {
        super.destroy();
        try {
            activeMQConfig.close();
        } catch (JMSException e) {
            e.printStackTrace();
        }
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("messages", messages);
		request.getRequestDispatcher("../WEB-INF/view/chat/chat.jsp").forward(request, response); 
	  	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = request.getParameter("message");
        try {
            TextMessage textMessage = activeMQConfig.getSession().createTextMessage(message);
            messageProducer.send(textMessage);
        } catch (JMSException e) {
            throw new ServletException(e);
        }
        response.sendRedirect("/jobweb/chat/chat");
	}

}
