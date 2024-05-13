package org.example;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.sql.Connection;

public class DatabaseInitService {
    public static void main(String[] args) throws SQLException {
        StringBuilder createDataBase = new StringBuilder();
        try (Scanner sc = new Scanner(new File("SqL_File/init_db.sql"));){
            while (sc.hasNext()) {
                createDataBase.append(sc.nextLine()).append("\n");
            }
        }catch (IOException ex){
            ex.printStackTrace();
        }
        Connection connection = Database.getConnection();
        try(Statement statement = connection.createStatement()) {
            statement.execute(createDataBase.toString());
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }

    }
}
