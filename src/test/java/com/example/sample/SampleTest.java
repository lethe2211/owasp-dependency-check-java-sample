package com.example.sample;


import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class SampleTest {
    @Test
    public void test() {
        int expected = 10;

        Sample sample = new Sample();
        int actual = sample.identity(10);

        assertEquals(expected, actual);
    }
}