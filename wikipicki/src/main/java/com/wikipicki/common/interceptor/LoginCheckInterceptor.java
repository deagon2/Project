package com.wikipicki.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.wikipicki.service.domain.User;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {

	public LoginCheckInterceptor(){
	}
	
	public boolean preHandle(HttpServletRequest request
						,		HttpServletResponse response
						, 		Object handler) throws Exception {
				
		HttpSession session = request.getSession(true);
		User user = (User)session.getAttribute("user");
		

		if(user != null)  {
	
			String uri = request.getRequestURI();

			if(uri.indexOf("admin") != -1){
				if(user.getType().equals("A")) {
					return true;
				}
				request.getRequestDispatcher("/index.jsp").forward(request, response);
				return false;
			}
			
			if(uri.indexOf("member") != -1){
				if(user.getType().equals("A") || user.getType().equals("F")) {
					return true;
				}
				request.getRequestDispatcher("/index.jsp").forward(request, response);
				return false;
			}
			
			return true;
		}else{ 
			
			request.getRequestDispatcher("/index.jsp").forward(request, response);

			return false;
		}
	}
}