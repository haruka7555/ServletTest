package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/jsp/contact" })
public class Contact extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");

		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String email = request.getParameter("email");
		String comment = request.getParameter("comment");
		String[] mels = request.getParameterValues("mel");
		String document = request.getParameter("document");

		if ("yes".equals(document)) {
			request.getRequestDispatcher("/jsp/result1.jsp").forward(request, response);
		} else {
			request.setAttribute("name", name);
			request.setAttribute("company", company);
			request.setAttribute("email", email);
			request.setAttribute("comment", comment);
			request.setAttribute("mels", mels);

			request.getRequestDispatcher("/jsp/result.jsp").forward(request, response);
		}
	}

}
