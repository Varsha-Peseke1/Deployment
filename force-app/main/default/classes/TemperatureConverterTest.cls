@isTest
private class TemperatureConverterTest {
	@isTest
    static void testWarnTemp(){
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(80);
        System.assertEquals(21.11, celsius);
    }
}