using Microsoft.Maui.Controls;
using Microsoft.Maui.Controls.PlatformConfiguration.AndroidSpecific;

namespace MauiApp2
{
    public class TouchEffect : RoutingEffect
    {
        public event EventHandler<TouchActionEventArgs> TouchAction;

        public TouchEffect() : base("MauiApp2.TouchEffect")
        {
        }

        public bool Capture { get; set; }

        public void OnTouchAction(TouchActionEventArgs args)
        {
            TouchAction?.Invoke(this, args);
        }
    }
}
