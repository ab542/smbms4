package com.liying.pojo;

public class Possible {
    private String name;
    private String possible;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPossible() {
        return possible;
    }

    public void setPossible(String possible) {
        this.possible = possible;
    }

    @Override
    public String toString() {
        return "Possible{" +
                "name='" + name + '\'' +
                ", possible='" + possible + '\'' +
                '}';
    }
}
