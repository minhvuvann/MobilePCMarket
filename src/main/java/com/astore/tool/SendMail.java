package com.astore.tool;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;

public class SendMail {
    final Random rd = new Random();
    private static SendMail instance;
public static String pwdMail ="qiswwsjutmgbraru";
    public SendMail() {

    }

    public static SendMail getInstance() {
        if (instance == null) {
            instance = new SendMail();
        }
        return instance;
    }

    public String ranDomOTP() {
        char[] number = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
        String resOTP = "";
        for (int i = 0; i < 6; i++) {
            resOTP += number[rd.nextInt(10)];
        }
        return resOTP;
    }

    public Session loginMail(String email, String pwd) {
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "465");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.starttls.required", "true");
        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");



        Session resSession = Session.getInstance(prop, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(email, pwd);
            }
        });
        return resSession;
    }

    public void sendMailTo(Session sessMail, String emailFrom, String nameFrom, String emailTo, String subjectEMail, String messMail) {
        try {
            Message mess = new MimeMessage(sessMail);
            mess.setFrom(new InternetAddress(emailFrom, nameFrom));
            mess.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
            mess.setSubject(subjectEMail);
            mess.setText(messMail);
            Transport.send(mess);
            System.out.println("Send Good");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
//      System.out.println(  SendMailServices.getInstance().ranDomOTP());
    }
}
