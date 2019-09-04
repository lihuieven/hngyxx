package org.hui.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        // TODO Auto-generated method stub
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();

        if (request.getRequestURI().endsWith("login.jsp")|| request.getRequestURI().endsWith("login")) {
            filterChain.doFilter(request, response);
        } else if (session.getAttribute("name") == null) {
            // 没有登录
            response.sendRedirect(request.getContextPath() + "/admin/login.jsp");
        } else {
            // 已经登录，继续请求下一级资源（继续访问）
            filterChain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {

    }
}
