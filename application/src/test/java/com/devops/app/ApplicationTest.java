package com.devops.app;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class ApplicationTest {

    @Test
    void testApplicationMessage() {

        String result = Application.getMessage();

        assertEquals(
                "Hello from  CI/CD!",
                result
        );
    }
}
