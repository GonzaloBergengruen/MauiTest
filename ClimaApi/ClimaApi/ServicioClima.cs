using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace ClimaApi
{
    public class ServicioClima
    {
        private readonly HttpClient _httpClient;
        private readonly string _apiKey = "647b49c947dc4bd885d181616241311";

        public ServicioClima()
        {
            _httpClient = new HttpClient();
        }

        public async Task<WeatherData> GetClimaAsync(string ciudad)
        {
            var url = $"http://api.weatherapi.com/v1/current.json?key={_apiKey}&q={ciudad}&aqi=no";
            var response = await _httpClient.GetAsync(url);

            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                var datosClima = JsonConvert.DeserializeObject<WeatherData>(content);
                return datosClima;
            } else
            {
                throw new HttpRequestException("Erron al obtener los datos.");
            }
        }

    }
}
