package com.byspace.test.entity;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Stone
 * Date: 13-6-2
 * Time: 上午2:40
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "test")
public class TestBean {
    @Id
    @GeneratedValue
    private int id;
    @Column(name = "name")
    private String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
