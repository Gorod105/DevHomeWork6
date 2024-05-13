package org.example;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MaxSalaryWorkerDto {
    private String workerName;
    private Integer salary;
}
