package DAO;

import java.util.*;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DAO.dbconnection;
import DTO.Book;

public class QueryDAO {
	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
	int max = 3;

	private Connection getConnection() throws Exception {
		Connection conn;
		conn = dbconnection.getInstance().getConnection();
		return conn;
	}

	// check exist
	public boolean queryE(String q) {
		try {
			Statement stmt = null;
			String query = q;
			System.out.println(q);
			connection = getConnection();
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			if (rs.next()) {
				return true;
			} else
				return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// check if return to library
	public boolean queryReturn(String q) {
		try {
			Statement stmt = null;
			String query = q;
			System.out.println(q);
			connection = getConnection();
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			if (rs.next()) {
				return rs.getBoolean("Status");
			} else
				return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// check if exceed
	public boolean queryMax(String q) {
		try {
			Statement stmt = null;
			String query = q;
			System.out.println(q);
			connection = getConnection();
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			if (rs.next()) {
				return rs.getInt("checked") < max ? true : false;
			} else
				return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	// return book

	// checkout book
	public void checkout(String isbn) {
		try {
			Statement stmt = null;
			String query = "update book set status=0 where isbn = \"" + isbn + "\"";
			connection = getConnection();
			stmt = connection.createStatement();
			stmt.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// checkout book
	public void checkIn(String isbn) {
		try {
			Statement stmt = null;
			String query = "update book set status=1 where isbn = \"" + isbn + "\"";
			connection = getConnection();
			stmt = connection.createStatement();
			stmt.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
