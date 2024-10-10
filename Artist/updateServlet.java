package com.Artist;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id =request.getParameter("artid");
		String name =request.getParameter("name");
		String email =request.getParameter("email");
		String country =request.getParameter("country");
		String bio =request.getParameter("bio");
		String username =request.getParameter("uname");
		String password =request.getParameter("passw");
		
		boolean isTrue;
		
		isTrue = ArtistDButil.updateartist(id,name,email,country,bio,username,password);
		
		if(isTrue == true) {
			
			List<Artist> artDetails = ArtistDButil.getArtistDetails(id);
			request.setAttribute("artDetails", artDetails);
		
			RequestDispatcher dis = request.getRequestDispatcher("artistaccount.jsp");
			dis.forward(request,response);	
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request,response);
			
		}
		
	}

}
