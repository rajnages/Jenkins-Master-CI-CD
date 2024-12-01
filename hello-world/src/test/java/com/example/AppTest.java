package com.example;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class AppTest {
    @Test
    public void testAppGreeting() {
        App app = new App();
        assertNotNull("App should have a greeting", app.getGreeting());
        assertEquals("Hello World!", app.getGreeting());
    }
}
