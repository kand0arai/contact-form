package contact;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConfirmServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.setCharacterEncoding("UTF-8");
	String onamae = req.getParameter("onamae");
	String mailAddress = req.getParameter("mail_address");
	String sex = req.getParameter("sex");
	String[] cates = req.getParameterValues("cates");
	String pref = req.getParameter("pref");
	String message = req.getParameter("message");

	req.setAttribute("onamae", onamae);
	req.setAttribute("mail_address", mailAddress);
	req.setAttribute("sex", sex);
	req.setAttribute("cates", cates);
	req.setAttribute("pref", pref);
	req.setAttribute("message", message);
	}

}
