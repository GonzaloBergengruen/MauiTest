using System.Security.Claims;

namespace ClimaApi
{
    public partial class MainPage : ContentPage
    {
        private WeatherData _previousWeatherCondition;
        private System.Timers.Timer timer;
        private readonly ServicioClima _servicioClima;
        private readonly string Ciudad = "Montevideo";

        public MainPage()
        {
            InitializeComponent();
            _servicioClima = new ServicioClima();
            StartTimer();
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            try
            {
                //Si todo sale bien muestra los datos actuales del clima
                var clima = await _servicioClima.GetClimaAsync(Ciudad);
                _previousWeatherCondition = clima;
                TemperaturaTexto.Text = $"Temperatura: {clima.Current.Temp_C}°C";
                VientoTexto.Text = $"Viento: {clima.Current.Wind_Kph}";
                DescripcionTexto.Text = $"Descripcion: {clima.Current.Condition.Text}";
                UbicacionTexto.Text = $"Ubicacion: {clima.Location.Name}, {clima.Location.Country}";
                ClimaIcono.Source = new UriImageSource { Uri = new Uri("https:" + clima.Current.Condition.Icon)};
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "Ok");
            }
        }

        //Cada 5 segundos intenta actualizar los datos del clima
        private void StartTimer()
        {
            timer = new System.Timers.Timer(5000);
            timer.Elapsed += async (sender, e) => await UpdateWeatherAsync();
            timer.AutoReset = true;
            timer.Start();
        }

        private async Task UpdateWeatherAsync()
        {
            try
            {
                //Llama a tu servicio para obtener los datos
                var weather = await _servicioClima.GetClimaAsync(Ciudad);

                if (_previousWeatherCondition != weather)
                {
                    _previousWeatherCondition = weather;
                    //Actualiza la interfaz gráfica en el hilo principal

                    MainThread.BeginInvokeOnMainThread(() =>
                    {
                        TemperaturaTexto.Text = $"Temperatura: {weather.Current.Temp_C}°C";
                        VientoTexto.Text = $"Viento: {weather.Current.Wind_Kph}";
                        DescripcionTexto.Text = $"Descripcion: {weather.Current.Condition.Text}";
                        UbicacionTexto.Text = $"Ubicacion: {weather.Location.Name}, {weather.Location.Country}";
                        ClimaIcono.Source = new UriImageSource { Uri = new Uri("https:" + weather.Current.Condition.Icon) };
                    });
                }
            }
            catch (Exception ex)
            {
                MainThread.BeginInvokeOnMainThread(async () =>
                {
                    await DisplayAlert("Error", $"No se pudo actualizar la informacion: {ex.Message}.", "Ok");
                });
            }
        }
    }
}