using static ClimaNotifications.DatosClima;

namespace ClimaNotifications
{
    public partial class MainPage : ContentPage
    {
        private readonly NotifacationService _notifacationService;
        private WeatherData _previousWeatherCondition;
        private System.Timers.Timer timer;
        private readonly ServicioClima _servicioClima;
        private readonly string Ciudad = "Montevideo";
        private string texto;

        public MainPage(NotifacationService notifacationService)
        {
            InitializeComponent();
            _notifacationService = notifacationService;
            _servicioClima = new ServicioClima();
            StartTimer();
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            try
            {
                var clima = await _servicioClima.GetClimaAsync(Ciudad);
                _previousWeatherCondition = clima;
                TemperaturaTexto.Text = $"Temperatura: {clima.Current.Temp_C}°C";
                VientoTexto.Text = $"Viento: {clima.Current.Wind_Kph}";
                DescripcionTexto.Text = $"Descripcion: {clima.Current.Condition.Text}";
                UbicacionTexto.Text = $"Ubicacion: {clima.Location.Name}, {clima.Location.Country}";
                ClimaIcono.Source = new UriImageSource { Uri = new Uri("https:" + clima.Current.Condition.Icon) };
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "Ok");
            }
        }

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

                if (_previousWeatherCondition.Current.Temp_C != weather.Current.Temp_C)
                {
                    MainThread.BeginInvokeOnMainThread(() =>
                    {
                        TemperaturaTexto.Text = $"Temperatura: {weather.Current.Temp_C}°C";
                    });
                    texto += $"La temperatura cambio de {_previousWeatherCondition.Current.Temp_C}°C a {weather.Current.Temp_C}°C";
                }

                if (_previousWeatherCondition.Current.Wind_Kph != weather.Current.Wind_Kph)
                {
                    MainThread.BeginInvokeOnMainThread(() =>
                    {
                        VientoTexto.Text = $"Viento: {weather.Current.Wind_Kph}";
                    });
                    if (!string.IsNullOrEmpty(texto))
                    {
                        texto += "\n";
                    }
                    texto += $"El viento cambio de {_previousWeatherCondition.Current.Wind_Kph}Kph a {weather.Current.Wind_Kph}Kph";
                }

                if (_previousWeatherCondition.Current.Condition.Text != weather.Current.Condition.Text)
                {
                    MainThread.BeginInvokeOnMainThread(() =>
                    {
                        DescripcionTexto.Text = $"Descripcion: {weather.Current.Condition.Text}";
                        ClimaIcono.Source = new UriImageSource { Uri = new Uri("https:" + weather.Current.Condition.Icon) };
                    });
                    if (!string.IsNullOrEmpty(texto))
                    {
                        texto += "\n";
                    }
                    texto += $"El clima cambio de {_previousWeatherCondition.Current.Condition.Text} a {weather.Current.Condition.Text}";
                }
                if (!string.IsNullOrEmpty(texto))
                {
                    _notifacationService.SendNotification(texto);
                    texto = "";
                }
                _previousWeatherCondition = weather;
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
