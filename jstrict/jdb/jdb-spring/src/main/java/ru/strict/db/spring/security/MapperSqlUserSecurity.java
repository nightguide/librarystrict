package ru.strict.db.spring.security;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class MapperSqlUserSecurity<ID> implements RowMapper<EntityUserSecurity<ID>> {

    private final String[] COLUMNS_NAME;

    public MapperSqlUserSecurity(String[] columnsName){
        this.COLUMNS_NAME = columnsName;
    }

    @Override
    public EntityUserSecurity<ID> mapRow(ResultSet resultSet, int i) throws SQLException {
        EntityUserSecurity<ID> entity = new EntityUserSecurity();
        entity.setId((ID)resultSet.getObject("id"));
        entity.setUsername(resultSet.getString(COLUMNS_NAME[0]));
        entity.setPasswordEncode(resultSet.getString(COLUMNS_NAME[1]));
        entity.setEmail(resultSet.getString(COLUMNS_NAME[2]));
        entity.setBlocked(resultSet.getBoolean(COLUMNS_NAME[3]));
        entity.setDeleted(resultSet.getBoolean(COLUMNS_NAME[4]));
        entity.setConfirmEmail(resultSet.getBoolean(COLUMNS_NAME[5]));
        return entity;
    }
}
