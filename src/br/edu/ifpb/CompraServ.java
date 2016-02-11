package br.edu.ifpb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;


/**
 * Servlet implementation class CompraServ
 */
@WebServlet("/CompraServ")
public class CompraServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CompraServ() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);


		String idoso = "idoso";
		String estudante = "estudante";
		String inteira = "inteira";
		request.getAttribute("pessoa");


		Pessoa pessoa = new Pessoa();

		pessoa.setNome(request.getParameter("nome"));
		pessoa.setTipodepassagem(request.getParameter("tipodepassagem"));
		pessoa.setUsuario(request.getParameter("usuario"));
		pessoa.setSenha(request.getParameter("senha"));

		if(pessoa.getTipodepassagem() == (inteira)){
			pessoa.setPreco((float) 25.00);

		}else if(pessoa.getTipodepassagem() == (estudante)){
			pessoa.setPreco((float) 12.50);

			if(pessoa.getTipodepassagem() == (idoso)){
				pessoa.setPreco(null);

				request.setAttribute("pessoa", pessoa);

				RequestDispatcher rq = request.getRequestDispatcher("index.jsp");
				rq.forward(request, response);

			}
		}

	}
}
