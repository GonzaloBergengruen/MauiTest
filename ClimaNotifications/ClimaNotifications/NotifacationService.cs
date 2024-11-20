using Plugin.LocalNotification;
using Plugin.LocalNotification.AndroidOption;
using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Maui.Controls;

namespace ClimaNotifications
{
    public class NotifacationService
    {
        public void SendNotification(string message)
        {
            var notificacion = new NotificationRequest()
            {
                NotificationId = 1,
                Title = "Cambio detectado",
                Description = message
            };
            LocalNotificationCenter.Current.Show(notificacion);
        }
    }
}
