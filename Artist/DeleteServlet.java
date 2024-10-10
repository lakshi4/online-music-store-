package com.Artist;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id =request.getParameter("artid");
		
		boolean isTrue;
		isTrue =ArtistDButil.deleteArtist(id);
		 
		if(isTrue == true) {
			RequestDispatcher dispatcher= request.getRequestDispatcher("ArtistRegister.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			List<Artist> artdelete = ArtistDButil.getArtistDetails(id);
			request.setAttribute("artdelete", artdelete);
			
 			
			RequestDispatcher dispatcher2= request.getRequestDispatcher("artistaccount.jsp");
			dispatcher2.forward(request, response);
		}
	
	}

}
