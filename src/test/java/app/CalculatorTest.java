package com.nextwork.app;

import junit.framework.TestCase;

public class CalculatorTest extends TestCase {
    public void testAdd() {
        Calculator calc = new Calculator();
        int result = calc.add(2, 3);
        assertEquals(5, result);
    }
}

