namespace ClimaNotifications
{
    public partial class App : Application
    {
        public App(AppShell appShell)
        {
            InitializeComponent();

            MainPage = new AppShell();
        }
    }
}
