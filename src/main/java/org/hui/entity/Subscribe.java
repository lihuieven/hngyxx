package org.hui.entity;

import lombok.Data;

import java.util.Date;

@Data
public class Subscribe {
/*      `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `school` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `major` varchar(100) NOT NULL,
  `isshow` varchar(10) DEFAULT 'n',
            `stime` timestamp NULL DEFAULT NULL,*/

    private int id;
    private String name;
    private String school;
    private String phone;
    private String major;
    private String isshow;
    private Date stime;
}
