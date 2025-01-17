package com.Artist;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ArtistInsert")
public class ArtistInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String country = request.getParameter("country");
		String bio = request.getParameter("bio");
		String username = request.getParameter("uid");
		String password = request.getParameter("pwd");
		
		boolean isTrue;
		
		isTrue = ArtistDButil.insertartist(name,email,country,bio,username,password);
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request,response);	
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request,response);
			
		}
		
		
	}

}
