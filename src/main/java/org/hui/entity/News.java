package org.hui.entity;

import lombok.Data;

import java.util.Date;

@Data
public class News {
/*      `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `anow` datetime DEFAULT NULL,
            `nclass` varchar(50) DEFAULT NULL,
  `content` text,
            `img` varchar(255) DEFAULT NULL,
  `atime` int(10) unsigned DEFAULT '0',*/

    private int id;
    private String title;
    private Date anow;
    private String nclass;
    private String content;
    private String img;
    private int atime;
}
