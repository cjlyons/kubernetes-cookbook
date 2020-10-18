package com.github.cjlyons.kubernetescookbook.helloworld.entity;

public class HelloEntity {
    private String salutation;
    private String name;

    public String getSalutation() {
        return salutation;
    }

    public void setSalutation(String salutation) {
        this.salutation = salutation;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public HelloEntity(String salutation, String name) {
        this.salutation = salutation;
        this.name = name;
    }
    
}
