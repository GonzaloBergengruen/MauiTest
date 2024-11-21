using Android.App;
using Android.Content.PM;
using Android.OS;
using AndroidX.Work;

namespace ClimaNotifications
{
    [Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, LaunchMode = LaunchMode.SingleTop, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
    public class MainActivity : MauiAppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Configurar restricciones opcionales
            var constraints = new Constraints.Builder()
                .SetRequiresBatteryNotLow(true) // No ejecutar si la batería está baja
                .SetRequiredNetworkType(NetworkType.Connected) // Solo ejecutar si hay Internet
                .Build();

            // Crear la solicitud de trabajo periódica
            var workRequest = PeriodicWorkRequest.Builder
                .From<WeatherWorker>(TimeSpan.FromMinutes(15)) // Ejecutar cada 15 minutos
                .SetConstraints(constraints)
                .Build();

            // Registrar el Worker
            WorkManager.GetInstance(this).EnqueueUniquePeriodicWork(
                "WeatherUpdateWorker", // Nombre único del Worker
                ExistingPeriodicWorkPolicy.Keep, // Mantener si ya existe
                workRequest
            );
        }
    }
}
