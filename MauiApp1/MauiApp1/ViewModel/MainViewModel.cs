﻿using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;
using System.ComponentModel;

namespace MauiApp1.ViewModel
{
    public partial class MainViewModel : ObservableObject
    {
        public MainViewModel()
        {
            Items = new ObservableCollection<string>();
        }

        [ObservableProperty]
        ObservableCollection<string> items;

        [ObservableProperty]
        string text;

        //Agrega item
        [RelayCommand]
        void Agregar()
        {
            if (string.IsNullOrEmpty(Text))
                return;
            Items.Add(Text);
            Text = string.Empty;
        }
    }

}