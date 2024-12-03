using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;

namespace MauiApp1.ViewModel
{
    public partial class MainViewModel : ObservableObject
    {
        IConnectivity Connectivity;

        public MainViewModel(IConnectivity connectivity)
        {
            Items = new ObservableCollection<string>();
            this.Connectivity = connectivity;
        }

        [ObservableProperty]
        ObservableCollection<string> items;

        [ObservableProperty]
        string text;

        //Agrega item
        [RelayCommand]
        async Task Agregar()
        {
            if (string.IsNullOrEmpty(Text))
                return;
            //Comprueba si hay conexion a internet
            if (Connectivity.NetworkAccess != NetworkAccess.Internet)
            {
                await Shell.Current.DisplayAlert("Oh Uh!", "No hay Internet", "Ok");
                return;
            }

            Items.Add(Text);
            Text = string.Empty;
        }

        //Elimina el item
        [RelayCommand]
        void Eliminar(string s)
        {
            if (Items.Contains(s))
            {
                Items.Remove(s);
            }
        }

        //Al tocar el item lleva a la pagina de detalles
        [RelayCommand]
        async Task Tap(string s)
        {
            await Shell.Current.GoToAsync($"{nameof(DetailPage)}?Text={s}");
        }
    }

}
