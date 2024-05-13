package org.example;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class DatabaseQueryService {
    public static List<LongestProjectDto> findLongestProject(){
        List<LongestProjectDto> result = new ArrayList<>();
        String request = getRequest("SqL_File/find_longest_project.sql");

        try (Connection connection = Database.getConnection();
             Statement statement = connection.createStatement()) {
                ResultSet resultSet = statement.executeQuery(request);
                while (resultSet.next()) {
                    result.add(new LongestProjectDto(
                            resultSet.getString("projectName"),
                            resultSet.getFloat("months")));
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        return result;
    }

    private static String getRequest(String pathname) {
        StringBuilder request = new StringBuilder();
        try (Scanner sc = new Scanner(new File(pathname))) {
            while (sc.hasNext()) {
                request.append(sc.nextLine()).append("\n");
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return request.toString();
    }

    public static List<MaxProjectsClientDto> findMaxProjectsClient(){
        List<MaxProjectsClientDto> result = new ArrayList<>();
        String request = getRequest("SqL_File/find_max_projects_client.sql");

            try (Connection connection = Database.getConnection();
                    Statement statement = connection.createStatement()) {
                ResultSet resultSet = statement.executeQuery(request);
                while (resultSet.next()) {
                    result.add(new MaxProjectsClientDto(
                            resultSet.getString("client_name"),
                            resultSet.getFloat("project_count")));
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        return result;
    }
    public static List<MaxSalaryWorkerDto> findMaxSalaryWorker(){
        List<MaxSalaryWorkerDto> result = new ArrayList<>();
        String request = getRequest("SqL_File/find_max_salary_worker.sql");

        try (Connection connection = Database.getConnection();
             Statement statement = connection.createStatement()) {
            ResultSet resultSet = statement.executeQuery(request);
            while (resultSet.next()) {
                result.add(new MaxSalaryWorkerDto(
                        resultSet.getString("worker_name"),
                        resultSet.getObject("salary",Integer.class)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }

    public static List<YoungestEldestWorkersDto> findYoungestEldestWorker(){
        List<YoungestEldestWorkersDto> result = new ArrayList<>();
        String request = getRequest("SqL_File/find_youngest_eldest_workers.sql");

        try (Connection connection = Database.getConnection();
             Statement statement = connection.createStatement()) {
            ResultSet resultSet = statement.executeQuery(request);
            while (resultSet.next()) {
                result.add(new YoungestEldestWorkersDto(
                        resultSet.getString("type"),
                        resultSet.getString("worker_name"),
                        resultSet.getDate("birthsday")));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }
    public static List<ProjectPricesDto> findProjectPrices(){
        List<ProjectPricesDto> result = new ArrayList<>();
        String request = getRequest("SqL_File/print_project_prices.sql");

        try (Connection connection = Database.getConnection();
             Statement statement = connection.createStatement()) {
            ResultSet resultSet = statement.executeQuery(request);
            while (resultSet.next()) {
                result.add(new ProjectPricesDto(
                        resultSet.getInt("project_id"),
                        resultSet.getInt("total_cost")));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }

}
