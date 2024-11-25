namespace MauiApp2
{
    public class DrawingCanvas : IDrawable
    {
        public List<DrawModel> Lines { get; set; } = new();

        public void Draw(ICanvas canvas, RectF dirtyRect)
        {
            foreach (var line in Lines)
            {
                if (line.Points.Count > 1)
                {
                    for (int i = 0; i < line.Points.Count - 1; i++)
                    {
                        canvas.StrokeColor = Colors.Red;
                        canvas.StrokeSize = 4;
                        canvas.DrawLine(line.Points[i].X, line.Points[i].Y,
                                    line.Points[i + 1].X, line.Points[i + 1].Y);
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
