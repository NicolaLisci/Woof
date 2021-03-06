package it.ats.persistenza.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import it.ats.modello.Razza;
import it.ats.persistenza.DAOException;
import it.ats.persistenza.DAORazza;
import it.ats.persistenza.DataSource;

public class DAORazzaImpl implements DAORazza {

	public List<Razza> findAll() throws DAOException {

		List<Razza> listRazza = new ArrayList<Razza>();

		String sql = "SELECT * FROM RAZZE";

		DataSource instance = DataSource.getInstance();

		Connection connection = null;

		Statement statement = null;

		ResultSet resultSet = null;

		try {

			connection = instance.getConnection();

			statement = connection.createStatement();

			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {

				int idRazza = resultSet.getInt(1);

			

				String razza = resultSet.getString(2);

				

				Razza razzaC = new Razza();

				

				razzaC.setIdRazza(idRazza);
				razzaC.setRazza(razza);

				listRazza.add(razzaC);

			}

		} catch (SQLException ex) {

			System.out.println(ex.getMessage());

			throw new DAOException(ex.getMessage(), ex);

		} finally {

			instance.close(resultSet);

			instance.close(statement);

			instance.close(connection);

		}

		return listRazza;

	}



	@Override
	public List<Razza> findId(int IdRazza) throws DAOException {
		
		List<Razza> listRazza = new ArrayList<Razza>();

		String sql = "SELECT * FROM RAZZE WHERE ID="+IdRazza;

		DataSource instance = DataSource.getInstance();

		Connection connection = null;

		Statement statement = null;

		ResultSet resultSet = null;

		try {

			connection = instance.getConnection();

			statement = connection.createStatement();

			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {

				int idRazza = resultSet.getInt(1);

			

				String razza = resultSet.getString(2);

				

				Razza razzaC = new Razza();

				

				razzaC.setIdRazza(idRazza);
				razzaC.setRazza(razza);

				listRazza.add(razzaC);

			}

		} catch (SQLException ex) {

			System.out.println(ex.getMessage());

			throw new DAOException(ex.getMessage(), ex);

		} finally {

			instance.close(resultSet);

			instance.close(statement);

			instance.close(connection);

		}

		return listRazza;

	}

	@Override
	public List<Razza> findRazza(String razza) throws DAOException {
		List<Razza> listRazza = new ArrayList<Razza>();

		String sql = "SELECT * FROM RAZZE WHERE RAZZA="+razza;

		DataSource instance = DataSource.getInstance();

		Connection connection = null;

		Statement statement = null;

		ResultSet resultSet = null;

		try {

			connection = instance.getConnection();

			statement = connection.createStatement();

			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {

				int idRazza = resultSet.getInt(1);

			

				razza = resultSet.getString(2);

				

				Razza razzaC = new Razza();

				

				razzaC.setIdRazza(idRazza);
				razzaC.setRazza(razza);

				listRazza.add(razzaC);

			}

		} catch (SQLException ex) {

			System.out.println(ex.getMessage());

			throw new DAOException(ex.getMessage(), ex);

		} finally {

			instance.close(resultSet);

			instance.close(statement);

			instance.close(connection);

		}

		return listRazza;
	}

	public String findById(int id) throws DAOException
	{
		String sql = "SELECT RAZZA FROM RAZZE WHERE ID_RAZZA = ?";
		DataSource instance = DataSource.getInstance();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			connection = instance.getConnection();
			preparedStatement = connection.prepareStatement(sql, new String[] { "ID_RAZZA" });
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				String nome = resultSet.getString(1);
				return nome;

			}

		} catch (Exception e) {

			System.out.println(e.getMessage());
			throw new DAOException(e.getMessage(), e);

		} finally {
			instance.close(preparedStatement);
			instance.close(connection);

		}
		return null;
	}


}
