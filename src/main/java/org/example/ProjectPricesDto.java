package org.example;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ProjectPricesDto {
    private Integer projectId;
    private Integer totalCost;
}
