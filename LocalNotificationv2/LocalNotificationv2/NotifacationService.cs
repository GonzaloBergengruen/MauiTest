using Plugin.LocalNotification;
using Plugin.LocalNotification.AndroidOption;

namespace LocalNotificationv2
{
    internal class NotifacationService
    {
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
                    NotifyTime = DateTime.Now.AddSeconds(retrasoEnSegundos)
                }
            };
            LocalNotificationCenter.Current.Show(notificacion);
        }
    }
}
