package com.example.demo

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class Controller {

    @GetMapping(path = ["hello"])
    fun hello(): String {
        return "Hello Kotlin, Hello Spring-Boot."
    }
}