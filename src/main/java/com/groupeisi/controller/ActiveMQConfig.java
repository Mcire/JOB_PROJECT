package com.groupeisi.controller;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.JMSException;
import javax.jms.Session;
import org.apache.activemq.ActiveMQConnectionFactory;

public class ActiveMQConfig {

    private ConnectionFactory connectionFactory;
    private Connection connection;
    private Session session;

    public ActiveMQConfig(String brokerURL) throws JMSException {
        connectionFactory = new ActiveMQConnectionFactory(brokerURL);
        connection = connectionFactory.createConnection();
        connection.start();
        session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE);
    }

    public Session getSession() {
        return session;
    }

    public void close() throws JMSException {
        connection.close();
    }
}