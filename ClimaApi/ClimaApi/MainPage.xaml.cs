namespace ClimaApi
{
    public partial class MainPage : ContentPage
    {
        
        private readonly ServicioClima _servicioClima;

        public MainPage()
        {
            InitializeComponent();
            _servicioClima = new ServicioClima();
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            try
            {
                var clima = await _servicioClima.GetClimaAsync("Montevideo");
                TemperaturaTexto.Text = $"Temperatura: {clima.Current.Temp_C}°C";
                DescripcionTexto.Text = $"Descripcion: {clima.Current.Condition.Text}";
                UbicacionTexto.Text = $"Ubicacion: {clima.Location.Name}, {clima.Location.Country}";
                ClimaIcono.Source = new UriImageSource { Uri = new Uri("https:" + clima.Current.Condition.Icon) } ;
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "Ok");
            }
        }

       
    }

}
