using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace ClimaApi
{
    public class ServicioClima
    {
        private readonly HttpClient _httpClient;

        public ServicioClima()
        {
            _httpClient = new HttpClient();
        }

        public async Task<DatosClima> GetClimaAsync(String ciudad)
        {
            var url = $"https://api.ejemplo.com/clima?ciudad={ciudad}";
            var response = await _httpClient.GetAsync(url);

            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                var datosClima = JsonConvert.DeserializeObject<DatosClima>(content);
                return datosClima;
            } else
            {
                throw new HttpRequestException("Erron al obtener los datos.");
            }
        }

    }
}
