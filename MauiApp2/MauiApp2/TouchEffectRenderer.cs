#if ANDROID

using Android.Views;
using Microsoft.Maui.Controls.Platform;
using MauiApp2;

[assembly: ResolutionGroupName("MauiApp2")]
[assembly: ExportEffect(typeof(TouchEffectRenderer), "TouchEffect")]

namespace MauiApp2
{
    public class TouchEffectRenderer : PlatformEffect
    {
        private Android.Views.View _view;
        private TouchEffect _effect;

        protected override void OnAttached()
        {
            _view = (Android.Views.View)(Control ?? Container);
            if (_view != null)
            {
                _view.Touch += OnTouch;
            }
            _effect = (TouchEffect)Element.Effects.FirstOrDefault(e => e is TouchEffect);
        }

        protected override void OnDetached()
        {
            if (_view != null)
            {
                _view.Touch -= OnTouch;
            }
        }

        private void OnTouch(object sender, Android.Views.View.TouchEventArgs args)
        {
            var actionType = args.Event.Action switch
            {
                MotionEventActions.Down => TouchActionType.Pressed,
                MotionEventActions.Move => TouchActionType.Moved,
                MotionEventActions.Up => TouchActionType.Released,
                _ => TouchActionType.Cancelled,
            };

            var touchPoint = new Point(args.Event.GetX(), args.Event.GetY());
            _effect?.OnTouchAction(new TouchActionEventArgs(actionType, touchPoint));
        }
    }
}
#endif