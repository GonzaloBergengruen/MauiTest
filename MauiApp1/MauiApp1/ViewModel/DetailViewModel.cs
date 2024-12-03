using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;

namespace MauiApp1.ViewModel
{
    [QueryProperty("Text", "Text")]
    public partial class DetailViewModel : ObservableObject
    {
        [ObservableProperty]
        string text;

        //Vuelve a la pagina principal
        [RelayCommand]
        async Task Volver()
        {
            await Shell.Current.GoToAsync("..");
        }

    }
}
