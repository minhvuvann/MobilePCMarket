package com.astore.controller.admin.help;
import com.astore.tool.CheckEmail;
import com.astore.tool.SendMail;

import javax.mail.Session;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ReplyToEmail", value = "/manage/replyToEmail")
public class ReplyToEmailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userMail = "19130137@st.hcmuaf.edu.vn";
        String nameFrom ="ASTORE";
        String passUserMail= SendMail.pwdMail;
        String subjectMail = request.getParameter("help-title");
        HttpSession ss = request.getSession();
        String  emailOrPhone = ss.getAttribute("emailUserHelp").toString();
        String nameUser = ss.getAttribute("nameUserHelp").toString();
        String idHelp = request.getParameter("help-id");
        String contentHelp = request.getParameter("help-content");
        String messSendMail ="#"+idHelp+"\n"+"Xin chào !"+nameUser+"\n"+contentHelp+"\n"+
                "Xin vui lòng không trả lời Email này.";
        Session sessRes = SendMail.getInstance().loginMail(userMail,passUserMail);
        if (CheckEmail.getInstance().checkEmail(emailOrPhone)){
            SendMail.getInstance().sendMailTo(sessRes,userMail,nameFrom,emailOrPhone,subjectMail,messSendMail);
        }
        request.getRequestDispatcher("/manage/help").forward(request,response);
    }
}
