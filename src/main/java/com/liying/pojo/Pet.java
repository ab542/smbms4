package com.liying.pojo;

public class Pet {
    private Integer id;
    private String name;
    private String age;
    private  String sterilizationCondition;
    private String spouse;
    private String  author;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getSterilizationCondition() {
        return sterilizationCondition;
    }

    public void setSterilizationCondition(String sterilizationCondition) {
        this.sterilizationCondition = sterilizationCondition;
    }

    public String getSpouse() {
        return spouse;
    }

    public void setSpouse(String spouse) {
        this.spouse = spouse;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString() {
        return "Pet{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age='" + age + '\'' +
                ", sterilizationCondition='" + sterilizationCondition + '\'' +
                ", spouse='" + spouse + '\'' +
                ", author='" + author + '\'' +
                '}';
    }
}
