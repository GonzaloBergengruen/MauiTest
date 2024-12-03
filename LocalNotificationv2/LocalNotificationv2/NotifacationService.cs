using Plugin.LocalNotification;
using Plugin.LocalNotification.AndroidOption;
using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Maui.Controls;

namespace LocalNotificationv2
{
    public class NotifacationService
    {
        private Timer timer;
        private readonly int interval = 5000; //5 segundos en milisegundos
        private string message = "Mensaje repetitivo.";

        public NotifacationService()
        {
            timer = new Timer(OnTimerElapsed, null, 0, interval);
        }

        private void OnTimerElapsed(object state)
        {
            SendNotification(message);
        }

        //Crea y envia la notificacion
        private void SendNotification(string message)
        {
            var notificacion = new NotificationRequest()
            {
                NotificationId = 1,
                Title = "Titulo",
                Description = message
            };
            LocalNotificationCenter.Current.Show(notificacion); //Envia la notificacion
        }

        //Crea y envia la notificacion
        public void ShowNotification(int id, string titulo, string descripcion, string returningData, int retrasoEnSegundos)
        {
            var notificacion = new NotificationRequest()
            {
                NotificationId = id,
                Title = titulo,
                Description = descripcion,
                Android = new AndroidOptions { },
                ReturningData = returningData,
                Schedule = new NotificationRequestSchedule
                {
                    NotifyTime = DateTime.Now.AddSeconds(retrasoEnSegundos) //Muestra el mensaje x segundos despues de que se crea
                }
            };
            LocalNotificationCenter.Current.Show(notificacion); //Envia la notificacion
        }
    }
}
