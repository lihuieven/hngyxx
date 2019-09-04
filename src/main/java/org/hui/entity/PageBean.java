package org.hui.entity;

import lombok.Data;

import java.util.List;

@Data
public class PageBean<T> {
    private int currentPage;
    private int currentCount;
    private int totalCount;
    private int totalPage;
    private List<T> list;
}
