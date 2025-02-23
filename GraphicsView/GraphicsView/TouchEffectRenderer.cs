#if ANDROID
using Android.Views;
using Microsoft.Maui.Controls.Platform;
using GraphicsView;

[assembly: ResolutionGroupName("GraphicsView")]
[assembly: ExportEffect(typeof(TouchEffectRenderer), "TouchEffect")]

namespace GraphicsView
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
            if(_view != null)
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

#elif IOS

using UIKit;
using Microsoft.Maui.Controls.Platform;
using GraphicsView;
using CoreGraphics;
using Foundation;

[assembly: ResolutionGroupName("GraphicsView")]
[assembly: ExportEffect(typeof(TouchEffectRenderer), "TouchEffect")]

namespace GraphicsView
{
    public class TouchEffectRenderer : PlatformEffect
    {
        private UIView _view;
        private TouchEffect _effect;
        private UITapGestureRecognizer _tapGesture;
        private UIPanGestureRecognizer _panGesture;

        protected override void OnAttached()
        {
            _view = (UIView)(Control ?? Container);

            if (_view != null)
            {
                _effect = (TouchEffect)Element.Effects.FirstOrDefault(e => e is TouchEffect);

                 //Agregar gestos para manejar el toque y el arrastre
                _tapGesture = new UITapGestureRecognizer(OnTap);
                _panGesture = new UIPanGestureRecognizer(OnPan);

                _view.UserInteractionEnabled = true;
                _view.AddGestureRecognizer(_tapGesture);
                _view.AddGestureRecognizer(_panGesture);
            }
        }

        protected override void OnDetached()
        {
            if (_view != null)
            {
                if (_tapGesture != null)
                {
                    _view.RemoveGestureRecognizer(_tapGesture);
                    _tapGesture.Dispose();
                    _tapGesture = null;
                }

                if (_panGesture != null)
                {
                    _view.RemoveGestureRecognizer(_panGesture);
                    _panGesture.Dispose();
                    _panGesture = null;
                }
            }
        }

        private void OnTap(UITapGestureRecognizer recognizer)
        {
            if (_effect != null)
            {
                var touchPoint = recognizer.LocationInView(_view);
                _effect.OnTouchAction(new TouchActionEventArgs(TouchActionType.Pressed, new Point(touchPoint.X, touchPoint.Y)));
                _effect.OnTouchAction(new TouchActionEventArgs(TouchActionType.Released, new Point(touchPoint.X, touchPoint.Y)));
            }
        }

        private void OnPan(UIPanGestureRecognizer recognizer)
        {
            if (_effect != null)
            {
                var touchPoint = recognizer.LocationInView(_view);
                TouchActionType actionType = recognizer.State switch
                {
                    UIGestureRecognizerState.Began => TouchActionType.Pressed,
                    UIGestureRecognizerState.Changed => TouchActionType.Moved,
                    UIGestureRecognizerState.Ended => TouchActionType.Released,
                    _ => TouchActionType.Cancelled
                };

                _effect.OnTouchAction(new TouchActionEventArgs(actionType, new Point(touchPoint.X, touchPoint.Y)));
            }
        }
    }
}
#endif