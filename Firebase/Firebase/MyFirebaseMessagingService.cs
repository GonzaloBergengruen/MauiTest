#if ANDROID

using Firebase.Messaging;
using Android.Util;

namespace Firebase
{
    public class MyFirebaseMessagingService : FirebaseMessagingService
    {
        public override void OnMessageReceived(RemoteMessage message)
        {
            base.OnMessageReceived(message);

            Log.Debug("FCM", "Message recived: " + message.GetNotification());
        }

        public override void OnNewToken(string token)
        {
            base.OnNewToken(token);

            Log.Debug("FCM", "New token: " + token);
        }
    }
}

#endif