package org.example;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class DatabasePopulateService {
    public static void main(String[] args) throws SQLException {
        StringBuilder populateDataBase = new StringBuilder();
        try (Scanner sc = new Scanner(new File("SqL_File/populate_db.sql"));){
            while (sc.hasNext()) {
                populateDataBase.append(sc.nextLine()).append("\n");
            }
        }catch (IOException ex){
            ex.printStackTrace();
        }
        Connection connection = Database.getConnection();
        try(Statement statement = connection.createStatement()) {
            statement.execute(populateDataBase.toString());
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }
}
