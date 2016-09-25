package com.weikun.vo;

import java.io.Serializable;

/**
 * Created by Administrator on 2016/9/25.
 */
public class Animal implements Serializable{
    public Animal() {
    }

    public Animal(int age, String name) {
        this.age = age;
        this.name = name;
    }

    private int age;

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String name;

}
