using Microsoft.Maui.Controls;
using Microsoft.Maui.Controls.PlatformConfiguration.AndroidSpecific;

namespace GraphicsView
{
    public class TouchEffect : RoutingEffect
    {
        public event EventHandler<TouchActionEventArgs> TouchAction;

        public TouchEffect() : base("GraphicsView.TouchEffect")
        {
        }

        public bool Capture {  get; set; }

        public void OnTouchAction(TouchActionEventArgs args)
        {
            TouchAction?.Invoke(this, args);
        }
    }
}
