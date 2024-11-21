#if ANDROID
using Android.Content;
using AndroidX.Work;

namespace ClimaNotifications
{
    public class WeatherWorker : Worker
    {
        private DatosClima.WeatherData datosClimaCopia;
        private readonly NotifacationService notificationService;
        private string texto;

        public WeatherWorker(Context context, WorkerParameters workerParameters) : base(context, workerParameters)
        {
        }

        public override Result DoWork()
        {
            try
            {
                //Llamar api

                var servicioClima= new ServicioClima();
                var datosClima = Task.Run(() => servicioClima.GetClimaAsync("Montevideo")).Result;
                if (datosClimaCopia.Current.Temp_C != datosClima.Current.Temp_C)
               {
                    Preferences.Set("LastTemperature", datosClima.Current.Temp_C.ToString());
                    texto += $"La temperatura cambio de {datosClimaCopia.Current.Temp_C}°C a {datosClima.Current.Temp_C}°C";
               }

               if (datosClimaCopia.Current.Wind_Kph != datosClima.Current.Wind_Kph)
               {
                    Preferences.Set("LastWindSpeed", datosClima.Current.Wind_Kph.ToString());
                    if (!string.IsNullOrEmpty(texto))
                    {
                        texto += "\n";
                    }
                    texto += $"El viento cambio de {datosClimaCopia.Current.Wind_Kph}Kph a {datosClima.Current.Wind_Kph}Kph";
               }

               if (datosClimaCopia.Current.Condition.Text != datosClima.Current.Condition.Text)
               {
                    Preferences.Set("LastDescription", datosClima.Current.Condition.Text.ToString());
                    Preferences.Set("LastIcon", datosClima.Current.Condition.Icon.ToString());
                    if (!string.IsNullOrEmpty(texto))
                    {
                        texto += "\n";
                    }
                    texto += $"El clima cambio de {datosClimaCopia.Current.Condition.Text} a {datosClima.Current.Condition.Text}";
               }
               if (!string.IsNullOrEmpty(texto))
                {
                    notificationService.SendNotification(texto);
                    texto = "";
                }
               datosClimaCopia = datosClima;
               Preferences.Set("LastUbication", datosClima.Location.Name.ToString(), datosClima.Location.Country.ToString());
            
                return Result.InvokeSuccess();
            }
            catch (Exception ex)
            {
                //Error
                
                Console.WriteLine($"Error en Worker: {ex.Message}");

                return Result.InvokeFailure();
            }
        }
    }
}
#endif