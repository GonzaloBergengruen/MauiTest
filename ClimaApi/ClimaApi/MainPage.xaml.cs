﻿namespace ClimaApi
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
                TemperaturaTexto.Text = $"Temperatura: {clima.Temperatura}°C";
                DescripcionTexto.Text = $"Descripcion: {clima.Descripcion}";
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "Ok");
            }
        }

       
    }

}