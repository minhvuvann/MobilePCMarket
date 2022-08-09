package com.astore.filter;

import com.astore.model.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "ManageFilter", urlPatterns = "/manage/*")
public class ManageFilter implements Filter {

    @Override
    public void doFilter(final ServletRequest request, final ServletResponse response, final FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpReq = (HttpServletRequest) request;
        HttpServletResponse httpRep = (HttpServletResponse) response;
        HttpSession session = httpReq.getSession();
        User user =(User) session.getAttribute("admin");
        if(httpReq.getRequestURI().indexOf("login") > -1 && user == null)
            chain.doFilter(request, response);
        else if(user == null){
//            request.getRequestDispatcher("/view/admin/login.jsp").forward(request,response);
            httpRep.sendError(404);
        }else{
            chain.doFilter(request, response);
        }
    }

    @Override
    public void init(final FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }
}
