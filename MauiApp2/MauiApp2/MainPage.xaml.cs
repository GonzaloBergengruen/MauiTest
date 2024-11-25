using System.Diagnostics;

namespace MauiApp2
{
    public partial class MainPage : ContentPage
    {
        private DrawModel _currentLine;
        private readonly DrawingCanvas _drawingCanvas = new DrawingCanvas();

        public MainPage()
        {
            InitializeComponent();

            DrawingCanvas.Drawable = _drawingCanvas;

            var touchEffect = new TouchEffect();
            touchEffect.TouchAction += OnTouchEffectAction;

            DrawingCanvas.Effects.Add(touchEffect);
        }

        private void OnTouchEffectAction(object sender, TouchActionEventArgs args)
        {
            Debug.WriteLine($"TouchAction: {args.Type}, Location: {args.Location}");
            switch (args.Type)
            {
                case TouchActionType.Pressed:
                    _currentLine = new DrawModel();
                    _currentLine.Points.Add(args.Location);
                    _drawingCanvas.AddLine(_currentLine);
                    DrawingCanvas.Invalidate(); // Refrescar el lienzo
                    break;

                case TouchActionType.Moved:
                    if (_currentLine != null)
                    {
                        _currentLine.Points.Add(args.Location);
                        DrawingCanvas.Invalidate();
                    }
                    break;

                case TouchActionType.Released:
                    _currentLine = null;
                    break;
            }
        }
    }

}