namespace ClimaNotifications
{
    public class DatosClima
    {
        public class WeatherData
        {
            public CurrentWeather Current { get; set; }
            public LocationInfo Location { get; set; }
        }

        public class CurrentWeather
        {
            public float Temp_C { get; set; } // Temperatura en Celsius
            public Condition Condition { get; set; }
            public decimal Wind_Kph { get; set; }
        }

        public class Condition
        {
            public string Text { get; set; } // Descripción del clima (e.g., "Soleado")
            public string Icon { get; set; } // URL del icono del clima
        }

        public class LocationInfo
        {
            public string Name { get; set; } // Nombre de la ciudad
            public string Region { get; set; }
            public string Country { get; set; }
        }
    }
}
