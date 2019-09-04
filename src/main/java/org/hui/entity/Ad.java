package org.hui.entity;

import lombok.Data;

@Data
public class Ad {
/*      `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `isshow` varchar(10) DEFAULT 'y',
            `sort` int(10) unsigned DEFAULT '0',*/
    private int id;
    private String title;
    private String url;
    private String img;
    private String isshow;
    private int sort;
}
