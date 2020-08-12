package com.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;

import javax.sql.DataSource;

public class C3P0Utils {

    public static QueryRunner queryRunner=null;
    public static QueryRunner getQueryRunner(){
        DataSource dataSource = new ComboPooledDataSource();
        queryRunner = new QueryRunner(dataSource);
        return queryRunner;
    }
}
