package com.liying.service.show;

import com.liying.pojo.UserShow;

import java.util.LinkedList;

public interface QueryMyShow {
    public LinkedList<String> queryMyShow(String userCode);
}
