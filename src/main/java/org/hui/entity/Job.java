package org.hui.entity;

import lombok.Data;

@Data
public class Job {
/*    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `face` varchar(255) DEFAULT NULL,
  `major` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `jobinfo` varchar(255) DEFAULT NULL,*/
    private int id;
    private String name;
    private String face;
    private String major;
    private String company;
    private String salary;
    private String jobinfo;
}
