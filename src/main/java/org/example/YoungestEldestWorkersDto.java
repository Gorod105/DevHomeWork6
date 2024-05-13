package org.example;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
public class YoungestEldestWorkersDto {
    private String type;
    private String workerName;
    private Date birthday;
}
