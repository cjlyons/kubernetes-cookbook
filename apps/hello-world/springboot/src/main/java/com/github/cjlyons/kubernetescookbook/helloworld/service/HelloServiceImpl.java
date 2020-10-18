package com.github.cjlyons.kubernetescookbook.helloworld.service;

import com.github.cjlyons.kubernetescookbook.helloworld.entity.HelloEntity;

import org.springframework.stereotype.Service;

@Service
public class HelloServiceImpl implements HelloService {

    protected static final String DEFAULT_SALUTATION = "Hello";
    protected static final String DEFAULT_NAME = "World";
    protected static final HelloEntity DEFAULT_ENTITY = new HelloEntity(DEFAULT_SALUTATION,DEFAULT_NAME);

    @Override
    public HelloEntity hello(String name) {
        if (name==null) {
            return DEFAULT_ENTITY;
        } else {
            return new HelloEntity(DEFAULT_SALUTATION,name);
        }
    }
    
}
