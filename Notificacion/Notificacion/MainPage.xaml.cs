using Plugin.LocalNotification;

namespace Notificacion
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private void OnCounterClicked(object sender, EventArgs e)
        {

            var request = new NotificationRequest
            {
                NotificationId = 1,
                Title = "Intento 1",
                Subtitle = "Hola",
                Description = "Texto de ejemplo",
                BadgeNumber = 23,
                Schedule = new NotificationRequestSchedule
                {
                    NotifyTime = DateTime.Now.AddSeconds(5),
                }
            };
            LocalNotificationCenter.Current.Show(request);
        }
    }

}
