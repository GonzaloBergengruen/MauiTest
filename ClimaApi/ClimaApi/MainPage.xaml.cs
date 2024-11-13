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
                TemperaturaTexto.Text = $"Temperatura: {clima.Actual.Tempe_C}°C";
                DescripcionTexto.Text = $"Descripcion: {clima.Actual.Condicion.Texto}";
                UbicacionTexto.Text = $"Ubicacion: {clima.Ubicacion.Nombre}, {clima.Ubicacion.Departamento}";
                ClimaIcono.Source = new UriImageSource { Uri = new Uri("https:" + clima.Actual.Condicion.Icono) } ;
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "Ok");
            }
        }

       
    }

}
