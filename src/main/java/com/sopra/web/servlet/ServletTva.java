package com.sopra.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sopra.web.data.CalculTva;

/**
 * Servlet implementation class ServletTva
 */
@WebServlet("/ServletTva")
public class ServletTva extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletTva() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sHt = request.getParameter("mtht");
		String sTx = request.getParameter("tx");
		Double ht = Double.parseDouble(sHt);
		Double tx = Double.parseDouble(sTx);
		CalculTva calculTva = new CalculTva();
		calculTva.setHt(ht);
		calculTva.setTx(tx);
		calculTva.setTva(ht * tx);
		calculTva.setTtc(ht + calculTva.getTva());
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/" + "affTva.jsp");
		request.setAttribute("calculTva", calculTva);
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
