using Plugin.LocalNotification;

namespace LocalNotificationv2
{
    public partial class MainPage : ContentPage
    {
        private readonly NotifacationService _servicioNotificacion;
        public MainPage(NotifacationService notifacationService)
        {
            InitializeComponent();
            _servicioNotificacion = notifacationService;    //Envia notificacion cada 5 segundos
        }

        //Muestra notificacion al tocar el boton
        private void OnNotifyButtonServiceClicked(object sender, EventArgs e)
        {
            _servicioNotificacion.ShowNotification
            (
                id: 1,
                titulo: "Notificacion de prueba.",
                descripcion: "Funca.",
                returningData: "Texto de ejemplo.",
                retrasoEnSegundos: 5
            );
        }
    }

}
