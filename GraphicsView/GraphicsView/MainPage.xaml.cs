using Microsoft.Maui.Controls;
using Microsoft.Maui.Graphics;

namespace GraphicsView
{
    public partial class MainPage : ContentPage
    {
        private DrawingCanvas _drawingCanvas;
        private DrawModel _currentLine;

        public MainPage()
        {
            _drawingCanvas = new DrawingCanvas();
            var graphicsView = new Microsoft.Maui.Controls.GraphicsView
            {
                Drawable = _drawingCanvas
            };

            var touchEffect = new TouchEffect
            {
                Capture = true
            };

            touchEffect.TouchAction += OnTouchEffectAction;

            graphicsView.Effects.Add(touchEffect);

            Content = graphicsView;
        }

        private void OnTouchEffectAction(object sender, TouchActionEventArgs args)
        {
            switch (args.Type)
            {
                case TouchActionType.Pressed:
                    _currentLine = new DrawModel();
                    _currentLine.Points.Add(args.Location);
                    _drawingCanvas.AddLine(_currentLine);
                    break;

                case TouchActionType.Moved:
                    if (_currentLine != null)
                    {
                        _currentLine.Points.Add(args.Location);
                        ((Microsoft.Maui.Controls.GraphicsView)sender).Invalidate();
                    }
                    break;

                case TouchActionType.Released:
                    _currentLine = null;
                    break;
            }
        }
    }
}
