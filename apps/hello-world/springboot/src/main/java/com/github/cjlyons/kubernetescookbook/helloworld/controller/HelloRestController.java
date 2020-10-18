package com.github.cjlyons.kubernetescookbook.helloworld.controller;

import com.github.cjlyons.kubernetescookbook.helloworld.entity.HelloEntity;
import com.github.cjlyons.kubernetescookbook.helloworld.service.HelloService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value="/hello-world")
public class HelloRestController {
    @Autowired
    HelloService service;

    @RequestMapping(value="/{name}",method = RequestMethod.GET)
    public HelloEntity hello(@PathVariable("name") String name) {
        return service.hello(name);
    }
}
