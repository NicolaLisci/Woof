package it.ats.persistenza.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import it.ats.modello.Utente;
import it.ats.persistenza.DAOException;
import it.ats.persistenza.DAOUtente;
import it.ats.persistenza.DataSource;

public class DAOUtenteImpl implements DAOUtente{

	public void save(Utente utente) throws DAOException {
		
		String insert = "INSERT INTO UTENTE VALUES(ID_UTENTE_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,?,?,?,";
		String data = "TO_DATE(?,'dd/mm/yyyy'))";
		String sql = insert + data;
		System.out.println(sql);
		//INSERT INTO UTENTE VALUES (ID_UTENTE_SEQ.NEXTVAL,'NICOLA','LISCI','UOMO','NICOLALISCI','PASSWORD','CAGLIARI','N','VIA BELLINI 6',1,'LISCINICOLA@LIVE.IT','3463178172',TO_DATE('22/12/1990', 'dd/mm/yyyy'));
		DataSource instance = DataSource.getInstance();
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		
//		ID_UTENTE
//	1	NOME
//	2	COGNOME
//	3	SESSO
//	4	USERNAME
//	5	PASSWORD
//	6	CITTA
//	7	UTENTE_IMMAGINE
//	8	INDIRIZZO
//	9	VERIFICATO
//	10	MAIL
//	11	NUMERO_TELEFONO
//	12	DATA_NASCITA 
		

		
		try {
			connection = instance.getConnection();
			prepareStatement = connection.prepareStatement(sql, new String[] { "ID_UTENTE" });
			//prepareStatement.setInt(1, utente.getId());
			prepareStatement.setString(1, utente.getNome());
			prepareStatement.setString(2, utente.getCognome());
			prepareStatement.setString(3, utente.getSesso());
			prepareStatement.setString(4, utente.getUsername());
			prepareStatement.setString(5, utente.getPassword());
			prepareStatement.setString(6, utente.getCitta());
			prepareStatement.setString(7, utente.getPathFoto());
			prepareStatement.setString(8, utente.getIndirizzo());
			prepareStatement.setInt(9, utente.getVerificato());
			prepareStatement.setString(10, utente.geteMail());
			prepareStatement.setString(11, utente.getnTelefono());
			prepareStatement.setString(12, utente.getDataNascita());
			
			prepareStatement.executeUpdate();

			ResultSet generatedKeys = prepareStatement.getGeneratedKeys();

			if (generatedKeys != null && generatedKeys.next()) {

				int id = generatedKeys.getInt(1);

				utente.setId(id);

			}

		} catch (SQLException ex) {
			System.out.println("qua");
			System.out.println(ex.getMessage());

			throw new DAOException(ex.getMessage(), ex);

		} finally {

			instance.close(prepareStatement);

			instance.close(connection);

		}
		
	}

	public void delete(Utente utente) throws DAOException {
		// TODO Auto-generated method stub
		
	}


	public List<Utente> findAll() throws DAOException {
String sql = "SELECT * FROM UTENTE";
		List<Utente> listaUtenti = new ArrayList<Utente>();
		DataSource instance = DataSource.getInstance();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			connection = instance.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				int id = resultSet.getInt("ID_UTENTE");
				String nome = resultSet.getString("NOME");
				String cognome = resultSet.getString("COGNOME");
				String sesso = resultSet.getString("SESSO");
				String user = resultSet.getString("USERNAME");
				String password = resultSet.getString("PASSWORD");
				String citta=resultSet.getString("CITTA");
				String immagine=resultSet.getString("UTENTE_IMMAGINE");
				String indirizzo = resultSet.getString("INDIRIZZO");
				int verificato=resultSet.getInt("VERIFICATO");
				String mail = resultSet.getString("MAIL");
				String nTel = resultSet.getString("NUMERO_TELEFONO");
				Date dataNascita=resultSet.getDate("DATA_NASCITA");

				Utente utente = new Utente();
				utente.setId(id);
				utente.setNome(nome);
				utente.setSesso(sesso);
				utente.setUsername(user);
				utente.setPassword(password);
				utente.setCitta(citta);
				utente.setPathFoto(immagine);
				utente.setIndirizzo(indirizzo);
				utente.setVerificato(verificato);
				utente.seteMail(mail);
				utente.setnTelefono(nTel);
				utente.setDataNascita(dataNascita);
				
				listaUtenti.add(utente);

			}

		} catch (SQLException e) {
			throw new DAOException(e.getMessage(), e);

		} finally {

			instance.close(resultSet);

			instance.close(statement);

			instance.close(connection);

		}

		return listaUtenti;

	}

<<<<<<< HEAD
	public Utente findUtente(String username, String email) throws DAOException {
		String select1 = "SELECT * FROM UTENTE WHERE USERNAME = ";
		+ username + 
		String select2 = " AND MAIL = "
		+ email + " ";
		
		String query  = select1 + username + 
		System.out.println(sql); 
		
		DataSource instance = DataSource.getInstance();
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {

			connection = instance.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.first()) {
				
	
			}

		} catch (SQLException ex) {

			System.out.println(ex.getMessage());

			throw new DAOException(ex.getMessage(), ex);

		} finally {

			instance.close(resultSet);

			instance.close(statement);

			instance.close(connection);

		}

		
		}
		return null;
	}

=======

public boolean findByUserPass(String user, String pass) throws DAOException {
		String sql = "SELECT * FROM UTENTE WHERE USERNAME=? AND PASSWORD=?";
		DataSource instance = DataSource.getInstance();
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = instance.getConnection();
			statement = connection.prepareStatement(sql);
			statement.setString(1, user);
			statement.setString(2, pass);
			resultSet = statement.executeQuery();
			if (resultSet.next()) {
				return true;
			}

		} catch (SQLException ex) {

			System.out.println(ex.getMessage());

			throw new DAOException(ex.getMessage(), ex);
			
		} finally {

			instance.close(resultSet);

			instance.close(statement);

			instance.close(connection);

		}

		return false;
		}
>>>>>>> branch 'master' of https://github.com/NicolaLisci/Woof.git
}
