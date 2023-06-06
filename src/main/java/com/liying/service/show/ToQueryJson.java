package com.liying.service.show;


import java.util.List;

public interface ToQueryJson {
    public String toJson();
    public List<String> toJsons(String show,int currentPage,int pageSize);
}
