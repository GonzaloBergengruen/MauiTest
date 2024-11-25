namespace GraphicsView
{
    public class DrawingCanvas : IDrawable
    {
        public List<DrawModel> Lines { get; private set; } = new();

        public void Draw(ICanvas canvas, RectF dirtyRect)
        {
            foreach (var line in Lines)
            {
                if (line.Points.Count > 1)
                {
                    for (int i = 0; i < line.Points.Count - 1; i++)
                    {
                        canvas.StrokeColor = Colors.Black;
                        canvas.StrokeSize = 4;
                        canvas.DrawLine(line.Points[i], line.Points[i + 1]);
                    }
                }
            }
        }

        public void AddLine(DrawModel line)
        {
            Lines.Add(line);
        }
    }
}
