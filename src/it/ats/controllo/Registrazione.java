package it.ats.controllo;

import java.io.IOException;
import java.util.Map.Entry;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.ats.modello.Utente;
import it.ats.persistenza.DAOException;
import it.ats.persistenza.DAOUtente;
import it.ats.persistenza.impl.DAOUtenteImpl;

/**
 * Servlet implementation class Registrazione
 */
public class Registrazione extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Registrazione() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String sesso = request.getParameter("gender");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String nascita =  request.getParameter("nascita");
		String indirizzo = "indirizzo";
		String telefono = "telefono";
		String foto = "foto";
		int verifica = 0;
		String citta = "citta";
		
		
		
		System.out.println("user: "+ username);
		System.out.println("nome: "+ nome);
		System.out.println("cognome: "+ cognome);
		System.out.println("sesso: "+ sesso);
		System.out.println("email: "+ email);
		System.out.println("password: "+ password);
		System.out.println("nascita:" +nascita);
		System.out.println("indirizzo: "+ indirizzo);
		System.out.println("telefono: " + telefono);
		System.out.println("foto: "+ foto);
		System.out.println("verifica: " + verifica);
		System.out.println("citta: "+ citta);
		
		
		Utente utente = new Utente();
		utente.setUsername(username);
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setSesso(sesso);
		utente.seteMail(email);
		utente.setPassword(password);
		utente.setDataNascita(nascita);
		utente.setIndirizzo(indirizzo);
		utente.setnTelefono(telefono);
		utente.setPathFoto(foto);
		utente.setVerificato(verifica);
		utente.setCitta(citta);
		
		System.out.println(utente.toString());
		
		
		
		
		
		DAOUtente daoUtente = new DAOUtenteImpl();

		try {
			
			daoUtente.save(utente);
			System.out.println("caricamento fatto");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("registrazioneSuccesso.jsp");
			requestDispatcher.forward(request, response);

		} catch (DAOException e) {

			System.out.println(e.getMessage());
			response.sendRedirect("error.jsp");

		}

		//RequestDispatcher requestDispatcher = request.getRequestDispatcher("registrazione.jsp");

	//	requestDispatcher.forward(request, response);

		
		
	}

}
