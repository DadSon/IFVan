package br.edu.ifpb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
/**
 * Servlet implementation class CadastrarServ
 */
@WebServlet("/CadastrarServ")
public class CadastrarServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CadastrarServ() {
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

		Pessoa pessoa = new Pessoa();
		pessoa.setNome(request.getParameter("nome"));
		pessoa.setSenha(request.getParameter("senha"));
		pessoa.setUsuario(request.getParameter("usuario"));
		pessoa.setTipodepassagem(request.getParameter("tipodepassagem"));

		Integer id = null;
		try {
			id = PessoaDAO.getInstance().insert(pessoa);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		pessoa.setId(id);
		request.setAttribute("pessoa", pessoa);

		RequestDispatcher rq = request.getRequestDispatcher("index.jsp");
		rq.forward(request, response);

	}
}