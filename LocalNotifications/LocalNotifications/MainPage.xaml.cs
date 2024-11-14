namespace LocalNotifications
{
    public partial class MainPage : ContentPage
    {
        private readonly ServicioNotificacion _servicioNotificacion;
        public MainPage()
        {
            InitializeComponent();
            _servicioNotificacion = new ServicioNotificacion();
        }

        private void OnNotifyButtonServiceClicked (object sender, EventArgs e)
        {
            _servicioNotificacion.MostrarNotificacion
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
