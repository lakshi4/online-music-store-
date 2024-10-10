package com.Artist;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uid");
		String password = request.getParameter("pwd");
		
		try {
		List<Artist> artDetails = ArtistDButil.validate(username, password);
		request.setAttribute("artDetails", artDetails);
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
			
		RequestDispatcher dis = request.getRequestDispatcher("artistaccount.jsp");
		dis.forward(request, response);
		}
		

}