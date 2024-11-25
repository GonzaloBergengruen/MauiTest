namespace GraphicsView
{
    public class TouchActionEventArgs : EventArgs
    {
        public TouchActionType Type { get; }
        public Point Location { get; }
        public bool IsInContact { get; }

        public TouchActionEventArgs(TouchActionType type, Point location, bool isInContact = true)
        {
            Type = type;
            Location = location;
            IsInContact = isInContact;
        }
    }
}
