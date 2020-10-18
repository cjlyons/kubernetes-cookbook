package com.github.cjlyons.kubernetescookbook.helloworld.service;

import com.github.cjlyons.kubernetescookbook.helloworld.entity.HelloEntity;

public interface HelloService {
    public HelloEntity hello(String name);
}
