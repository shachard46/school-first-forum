package com.shachar.first;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractEntityDatabase<EntityType> {
	private Connection con;

	public EntityType create(EntityType entity) {
		Connection connection = getConnection();
		Statement st = null;
		try {
			st = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String sql = insertEntitySQL(entity);
			st.executeUpdate(sql);
			return getDBEntity(entity);
		} catch (Exception e) {
			throw new RuntimeException("Could not create statement", e);
		} finally {
			if (st != null) {
				try {
					st.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	public void updateField(String field, String unique, String uniqueValue, String value) {
		Connection connection = getConnection();
		Statement st = null;
		try {
			st = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String sql = updateEntityFieldSQL(field, unique, uniqueValue, value);
			st.executeUpdate(sql);
		} catch (Exception e) {
			throw new RuntimeException("Could not create statement", e);
		} finally {
			if (st != null) {
				try {
					st.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	public void updateField(String field, String unique, String uniqueValue, int value) {
		Connection connection = getConnection();
		Statement st = null;
		try {
			st = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String sql = updateEntityFieldSQL(field, unique, uniqueValue, value);
			st.executeUpdate(sql);
		} catch (Exception e) {
			throw new RuntimeException("Could not create statement", e);
		} finally {
			if (st != null) {
				try {
					st.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	public void deleteEntity(String unique, String uniqueValue) {
		Connection connection = getConnection();
		Statement st = null;
		try {
			st = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String sql = deleteEntityRowSQL(unique, uniqueValue);
			st.executeUpdate(sql);
		} catch (Exception e) {
			throw new RuntimeException("Could not create statement", e);
		} finally {
			if (st != null) {
				try {
					st.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	public void updateEntity(User entity) {
		Connection connection = getConnection();
		Statement st = null;
		try {
			st = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String sql = updateEntityRowSQL(entity);
			st.executeUpdate(sql);
		} catch (Exception e) {
			throw new RuntimeException("Could not create statement", e);
		} finally {
			if (st != null) {
				try {
					st.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	public void clearTable() {
		Connection connection = getConnection();
		Statement st = null;
		try {
			st = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String sql = String.format("delete from %s", getEntityTableName());
			st.executeUpdate(sql);
		} catch (Exception e) {
			throw new RuntimeException("Could not create statement", e);
		} finally {
			if (st != null) {
				try {
					st.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	public EntityType getEntityById(int id) {
		String sql = String.format("select * from %s where id = %s", getEntityTableName(), id);
		return getSingleEntityByQuery(sql);
	}

	public List<EntityType> getAllEntities() {
		String sql = String.format("select * from %s", getEntityTableName());
		return getEntitiesByQuery(sql);
	}

	abstract protected String getEntityTableName();

	abstract protected EntityType getDBEntity(EntityType entity);

	abstract protected String insertEntitySQL(EntityType entity);

	abstract protected String updateEntityRowSQL(User entity);

	abstract protected EntityType entityFromResultSet(ResultSet rs) throws SQLException;

	protected List<EntityType> getEntitiesByQuery(String sql) throws RuntimeException {
		Connection connection = getConnection();
		Statement st = null;
		ResultSet rs = null;
		List<EntityType> entities = new ArrayList<EntityType>();
		try {
			st = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = st.executeQuery(sql);
			while (rs.next()) {
				entities.add(entityFromResultSet(rs));
			}
		} catch (Exception e) {
			throw new RuntimeException("Could not create statement", e);
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
				}
			}
			if (st != null) {
				try {
					st.close();
				} catch (SQLException e) {
				}
			}
		}
		return entities;
	}

	private String updateEntityFieldSQL(String field, String unique, String uniqueValue, String value) {
		return String.format("update %s set %s='%s' where %s='%s'", getEntityTableName(), field, value, unique,
				uniqueValue);
	}

	private String deleteEntityRowSQL(String unique, String uniqueValue) {
		return String.format("delete from %s where %s='%s'", getEntityTableName(), unique, uniqueValue);
	}

	protected EntityType getSingleEntityByQuery(String sql) throws RuntimeException {
		List<EntityType> entities = getEntitiesByQuery(sql);
		if (!entities.isEmpty()) {
			return entities.get(0);
		}
		return null;
	}

	public List<EntityType> getEntityByField(String field, String value) {
		return getEntitiesByQuery(
				String.format("select * from %s where %s like '%s%%'", getEntityTableName(), field, value));
	}

	public List<EntityType> getEntityByTwoFields(String field, String value, String field2, String value2) {
		return getEntitiesByQuery(String.format("select * from %s where %s like '%s%%' and %s='%s'",
				getEntityTableName(), field, value, field2, value2));
	}

	private String updateEntityFieldSQL(String field, String unique, String uniqueValue, int value) {
		return String.format("update %s set %s=%d where %s='%s'", getEntityTableName(), field, value, unique,
				uniqueValue);
	}

	protected Connection getConnection() {
		if (con == null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db", "root", "");
			} catch (Exception e) {
				throw new RuntimeException("Could not create connection", e);
			}
		}
		return con;
	}

}
