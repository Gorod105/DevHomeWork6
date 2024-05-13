package org.example;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MaxProjectsClientDto {
    private String clientName;
    private  float projectCount;
}
