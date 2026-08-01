package com.devops.app;

public class Application {

    public static String getMessage() {
        return "Hello from Jenkins CI/CD!";
    }

    public static void main(String[] args) {
        System.out.println(getMessage());
    }
}
