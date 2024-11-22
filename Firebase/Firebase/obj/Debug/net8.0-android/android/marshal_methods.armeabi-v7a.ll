; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [339 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [672 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 232
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 284
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 45981941, ; 8: Xamarin.KotlinX.AtomicFU.Jvm => 0x2bda0f5 => 296
	i32 57305218, ; 9: Xamarin.KotlinX.Coroutines.Play.Services => 0x36a6882 => 300
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 334
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 188
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 252
	i32 103834273, ; 16: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 264
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 252
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 293
	i32 142721839, ; 21: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 22: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 23: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 24: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 204
	i32 166070894, ; 25: Xamarin.KotlinX.AtomicFU.dll => 0x9e60a6e => 295
	i32 176265551, ; 26: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 27: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 254
	i32 184328833, ; 28: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 29: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 331
	i32 199333315, ; 30: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 332
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 202
	i32 220171995, ; 33: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 34: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 225
	i32 230752869, ; 35: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 36: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 37: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 208
	i32 276479776, ; 40: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 228
	i32 280482487, ; 42: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 224
	i32 280992041, ; 43: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 303
	i32 291076382, ; 44: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 45: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 46: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 331
	i32 318968648, ; 47: Xamarin.AndroidX.Activity.dll => 0x13031348 => 193
	i32 321597661, ; 48: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 49: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 316
	i32 342366114, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 226
	i32 356389973, ; 51: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 315
	i32 360082299, ; 52: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 53: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 54: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 55: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 56: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 57: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 58: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 393699800, ; 59: Firebase => 0x177761d8 => 0
	i32 395744057, ; 60: _Microsoft.Android.Resource.Designer => 0x17969339 => 335
	i32 403441872, ; 61: WindowsBase => 0x180c08d0 => 165
	i32 425531652, ; 62: Xamarin.AndroidX.Lifecycle.Runtime.Android => 0x195d1904 => 233
	i32 435591531, ; 63: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 327
	i32 441335492, ; 64: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 209
	i32 442565967, ; 65: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 66: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 222
	i32 451504562, ; 67: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 68: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 69: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 70: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 71: System.dll => 0x1bff388e => 164
	i32 476646585, ; 72: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 224
	i32 485140951, ; 73: Xamarin.Google.Android.DataTransport.TransportRuntime => 0x1ceaa9d7 => 279
	i32 486930444, ; 74: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 240
	i32 495452658, ; 75: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x1d8801f2 => 279
	i32 498788369, ; 76: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 77: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 314
	i32 503918385, ; 78: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 308
	i32 507148113, ; 79: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0x1e3a7751 => 277
	i32 513247710, ; 80: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 182
	i32 526420162, ; 81: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 82: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 293
	i32 530272170, ; 83: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 84: Microsoft.Extensions.Logging => 0x20216150 => 178
	i32 540030774, ; 85: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 542030372, ; 86: Xamarin.GooglePlayServices.Stats => 0x204eba24 => 288
	i32 545304856, ; 87: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 88: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 89: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 90: Jsr305Binding => 0x213954e7 => 281
	i32 569601784, ; 91: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 263
	i32 577335427, ; 92: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 93: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 322
	i32 601371474, ; 94: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 95: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 96: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 621990341, ; 97: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 0x2512d1c5 => 233
	i32 627609679, ; 98: Xamarin.AndroidX.CustomView => 0x2568904f => 214
	i32 627931235, ; 99: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 320
	i32 639843206, ; 100: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 220
	i32 643868501, ; 101: System.Net => 0x2660a755 => 81
	i32 662205335, ; 102: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 103: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 259
	i32 666292255, ; 104: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 200
	i32 672442732, ; 105: System.Collections.Concurrent => 0x2814a96c => 8
	i32 679221896, ; 106: Xamarin.KotlinX.AtomicFU => 0x287c1a88 => 295
	i32 683518922, ; 107: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 108: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 302
	i32 690569205, ; 109: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 110: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 297
	i32 693804605, ; 111: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 112: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 113: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 291
	i32 700358131, ; 114: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 115: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 317
	i32 709557578, ; 116: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 305
	i32 720511267, ; 117: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 294
	i32 722857257, ; 118: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 119: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 120: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 121: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 190
	i32 759454413, ; 122: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 123: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 124: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 125: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 326
	i32 789151979, ; 126: Microsoft.Extensions.Options => 0x2f0980eb => 181
	i32 790371945, ; 127: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 215
	i32 804715423, ; 128: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 230
	i32 823281589, ; 130: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 131: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 132: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 133: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 134: Xamarin.AndroidX.Print => 0x3246f6cd => 245
	i32 846667644, ; 135: Xamarin.Firebase.Installations.dll => 0x32771f7c => 273
	i32 873119928, ; 136: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 137: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 138: System.Net.Http.Json => 0x3463c971 => 63
	i32 882434999, ; 139: Xamarin.Firebase.Installations.InterOp.dll => 0x3498e3b7 => 274
	i32 904024072, ; 140: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 141: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 142: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 329
	i32 928116545, ; 143: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 284
	i32 952186615, ; 144: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 145: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 294
	i32 966729478, ; 146: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 282
	i32 967690846, ; 147: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 226
	i32 975236339, ; 148: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 149: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 150: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 151: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 152: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 153: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 996733531, ; 154: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3b68f25b => 278
	i32 1001831731, ; 155: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 156: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 249
	i32 1019214401, ; 157: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 158: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1029334545, ; 159: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 304
	i32 1031528504, ; 160: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 283
	i32 1035644815, ; 161: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 198
	i32 1036359102, ; 162: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x3dc595be => 287
	i32 1036536393, ; 163: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 164: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 165: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 235
	i32 1067306892, ; 166: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 167: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 168: Xamarin.Kotlin.StdLib => 0x409e66d8 => 292
	i32 1098259244, ; 169: System => 0x41761b2c => 164
	i32 1118262833, ; 170: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 317
	i32 1121599056, ; 171: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 234
	i32 1127624469, ; 172: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 180
	i32 1141947663, ; 173: Xamarin.Firebase.Measurement.Connector.dll => 0x4410bd0f => 275
	i32 1149092582, ; 174: Xamarin.AndroidX.Window => 0x447dc2e6 => 262
	i32 1168523401, ; 175: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 323
	i32 1170634674, ; 176: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 177: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 258
	i32 1178241025, ; 178: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 243
	i32 1203215381, ; 179: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 321
	i32 1204270330, ; 180: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 200
	i32 1208641965, ; 181: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 182: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 183: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 319
	i32 1243150071, ; 184: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 263
	i32 1246548578, ; 185: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 205
	i32 1253011324, ; 186: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 187: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 303
	i32 1264511973, ; 188: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 253
	i32 1264890200, ; 189: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 298
	i32 1267360935, ; 190: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 257
	i32 1273260888, ; 191: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 206
	i32 1275534314, ; 192: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 297
	i32 1278448581, ; 193: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 197
	i32 1293217323, ; 194: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 217
	i32 1309188875, ; 195: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 196: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 262
	i32 1324164729, ; 197: System.Linq => 0x4eed2679 => 61
	i32 1333047053, ; 198: Xamarin.Firebase.Common => 0x4f74af0d => 265
	i32 1335329327, ; 199: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 200: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 201: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 333
	i32 1376866003, ; 202: Xamarin.AndroidX.SavedState => 0x52114ed3 => 249
	i32 1379779777, ; 203: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1379897097, ; 204: Xamarin.JavaX.Inject => 0x523f8f09 => 290
	i32 1402170036, ; 205: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 206: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 210
	i32 1408764838, ; 207: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 208: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 209: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 210: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 301
	i32 1434145427, ; 211: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 212: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 282
	i32 1437299793, ; 213: Xamarin.AndroidX.Lifecycle.Common.Jvm => 0x55ab7451 => 227
	i32 1439761251, ; 214: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1441095154, ; 215: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 0x55e55df2 => 236
	i32 1452070440, ; 216: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 217: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 218: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 219: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 220: es\Microsoft.Maui.Controls.resources => 0x57152abe => 307
	i32 1461234159, ; 221: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 222: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 223: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 224: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 199
	i32 1470490898, ; 225: Microsoft.Extensions.Primitives => 0x57a5e912 => 182
	i32 1479771757, ; 226: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 227: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 228: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 229: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 250
	i32 1493001747, ; 230: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 311
	i32 1514721132, ; 231: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 306
	i32 1531040989, ; 232: Xamarin.Firebase.Iid.Interop.dll => 0x5b41d4dd => 272
	i32 1536373174, ; 233: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 234: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 235: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 236: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 237: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 326
	i32 1565862583, ; 238: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 239: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 240: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 241: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 242: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 216
	i32 1592978981, ; 243: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 244: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 283
	i32 1601112923, ; 245: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 246: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 247: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 248: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 239
	i32 1622358360, ; 249: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 250: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 261
	i32 1635184631, ; 251: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 220
	i32 1636350590, ; 252: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 213
	i32 1639515021, ; 253: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 254: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 255: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 256: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 257: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 255
	i32 1658251792, ; 258: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 280
	i32 1670060433, ; 259: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 208
	i32 1675553242, ; 260: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 261: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 262: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 263: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 264: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 265: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1701541528, ; 266: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 267: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 230
	i32 1726116996, ; 268: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 269: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 270: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 203
	i32 1736233607, ; 271: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 324
	i32 1743415430, ; 272: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 302
	i32 1744735666, ; 273: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 274: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 275: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 276: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 277: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 278: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 279: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 254
	i32 1770582343, ; 280: Microsoft.Extensions.Logging.dll => 0x6988f147 => 178
	i32 1776026572, ; 281: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 282: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 283: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 284: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 318
	i32 1788241197, ; 285: Xamarin.AndroidX.Fragment => 0x6a96652d => 222
	i32 1793755602, ; 286: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 310
	i32 1808609942, ; 287: Xamarin.AndroidX.Loader => 0x6bcd3296 => 239
	i32 1813058853, ; 288: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 292
	i32 1813201214, ; 289: Xamarin.Google.Android.Material => 0x6c13413e => 280
	i32 1818569960, ; 290: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 244
	i32 1818787751, ; 291: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 292: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 293: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 294: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 179
	i32 1842015223, ; 295: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 330
	i32 1847515442, ; 296: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 190
	i32 1853025655, ; 297: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 327
	i32 1858542181, ; 298: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 299: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 300: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 309
	i32 1876173635, ; 301: Xamarin.Firebase.Encoders.Proto => 0x6fd42343 => 271
	i32 1879696579, ; 302: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 303: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 201
	i32 1888955245, ; 304: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 305: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 306: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 307: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1908813208, ; 308: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 286
	i32 1910275211, ; 309: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1933215285, ; 310: Xamarin.Firebase.Messaging.dll => 0x733a8635 => 276
	i32 1939592360, ; 311: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 312: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 313: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 251
	i32 1968388702, ; 314: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1985761444, ; 315: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 192
	i32 2003115576, ; 316: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 306
	i32 2011961780, ; 317: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 318: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 235
	i32 2025202353, ; 319: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 301
	i32 2031763787, ; 320: Xamarin.Android.Glide => 0x791a414b => 189
	i32 2045470958, ; 321: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 322: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 229
	i32 2060060697, ; 323: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 324: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 305
	i32 2070888862, ; 325: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 326: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 327: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2124230737, ; 328: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x7e9d3051 => 278
	i32 2127167465, ; 329: System.Console => 0x7ec9ffe9 => 20
	i32 2129483829, ; 330: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 285
	i32 2142473426, ; 331: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 332: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 333: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 334: Microsoft.Maui => 0x80bd55ad => 186
	i32 2169148018, ; 335: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 313
	i32 2174878672, ; 336: Xamarin.Firebase.Annotations => 0x81a203d0 => 264
	i32 2181898931, ; 337: Microsoft.Extensions.Options.dll => 0x820d22b3 => 181
	i32 2192057212, ; 338: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 179
	i32 2193016926, ; 339: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 340: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 299
	i32 2201231467, ; 341: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 342: it\Microsoft.Maui.Controls.resources => 0x839595db => 315
	i32 2217644978, ; 343: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 258
	i32 2222056684, ; 344: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2225853105, ; 345: Xamarin.Firebase.Common.Ktx => 0x84abd2b1 => 266
	i32 2244775296, ; 346: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 240
	i32 2252106437, ; 347: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 348: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 349: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 350: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 351: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 191
	i32 2270573516, ; 352: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 309
	i32 2279755925, ; 353: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 247
	i32 2293034957, ; 354: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 355: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 356: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 357: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 319
	i32 2305521784, ; 358: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 359: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 195
	i32 2320631194, ; 360: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 361: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 362: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 363: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 364: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 365: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 366: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 367: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 368: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 314
	i32 2401565422, ; 369: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 370: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 219
	i32 2421380589, ; 371: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 372: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 206
	i32 2427813419, ; 373: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 311
	i32 2435356389, ; 374: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 375: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 376: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 377: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 378: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 379: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 209
	i32 2471841756, ; 380: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 381: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 382: Microsoft.Maui.Controls => 0x93dba8a1 => 184
	i32 2483661569, ; 383: Xamarin.Firebase.Measurement.Connector => 0x9409ab01 => 275
	i32 2483742551, ; 384: Xamarin.Firebase.Messaging => 0x940ae757 => 276
	i32 2483903535, ; 385: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 386: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2486410006, ; 387: Xamarin.GooglePlayServices.CloudMessaging => 0x94339b16 => 287
	i32 2490993605, ; 388: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 389: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 390: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 232
	i32 2522472828, ; 391: Xamarin.Android.Glide.dll => 0x9659e17c => 189
	i32 2538310050, ; 392: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 393: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 312
	i32 2562349572, ; 394: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 395: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 396: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 234
	i32 2581819634, ; 397: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 257
	i32 2585220780, ; 398: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 399: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 400: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 401: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 321
	i32 2605712449, ; 402: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 299
	i32 2615233544, ; 403: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 223
	i32 2616218305, ; 404: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 180
	i32 2617129537, ; 405: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 406: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620111890, ; 407: Xamarin.Firebase.Encoders.dll => 0x9c2bbc12 => 269
	i32 2620871830, ; 408: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 213
	i32 2623491480, ; 409: Xamarin.Firebase.Installations.InterOp => 0x9c5f4d98 => 274
	i32 2624644809, ; 410: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 218
	i32 2626831493, ; 411: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 316
	i32 2627185994, ; 412: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 413: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 414: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 228
	i32 2639764100, ; 415: Xamarin.Firebase.Encoders => 0x9d579a84 => 269
	i32 2663391936, ; 416: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 191
	i32 2663698177, ; 417: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 418: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 419: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2671474046, ; 420: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 298
	i32 2676780864, ; 421: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 422: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 423: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 424: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 255
	i32 2715334215, ; 425: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 426: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 427: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 428: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 429: Xamarin.AndroidX.Activity => 0xa2e0939b => 193
	i32 2735172069, ; 430: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 431: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 199
	i32 2740948882, ; 432: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 433: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 434: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 322
	i32 2758225723, ; 435: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 185
	i32 2764765095, ; 436: Microsoft.Maui.dll => 0xa4caf7a7 => 186
	i32 2765824710, ; 437: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2766642685, ; 438: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 0xa4e79dfd => 236
	i32 2770495804, ; 439: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 291
	i32 2778768386, ; 440: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 260
	i32 2779977773, ; 441: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 248
	i32 2780199943, ; 442: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 0xa5b67c07 => 227
	i32 2785988530, ; 443: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 328
	i32 2788224221, ; 444: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 223
	i32 2801831435, ; 445: Microsoft.Maui.Graphics => 0xa7008e0b => 188
	i32 2803228030, ; 446: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2804607052, ; 447: Xamarin.Firebase.Components.dll => 0xa72ae84c => 267
	i32 2806116107, ; 448: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 307
	i32 2810250172, ; 449: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 210
	i32 2819470561, ; 450: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 451: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 452: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 248
	i32 2824502124, ; 453: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 454: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 320
	i32 2838993487, ; 455: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 237
	i32 2847418871, ; 456: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 285
	i32 2849599387, ; 457: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 458: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 260
	i32 2855708567, ; 459: Xamarin.AndroidX.Transition => 0xaa36a797 => 256
	i32 2861098320, ; 460: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 461: Microsoft.Maui.Essentials => 0xaa8a4878 => 187
	i32 2870099610, ; 462: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 194
	i32 2875164099, ; 463: Jsr305Binding.dll => 0xab5f85c3 => 281
	i32 2875220617, ; 464: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883826422, ; 465: Xamarin.Firebase.Installations => 0xabe3b2f6 => 273
	i32 2884993177, ; 466: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 221
	i32 2887636118, ; 467: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 468: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 469: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 470: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 471: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 472: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2914202368, ; 473: Xamarin.Firebase.Iid.Interop => 0xadb33300 => 272
	i32 2916838712, ; 474: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 261
	i32 2919462931, ; 475: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 476: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 196
	i32 2936416060, ; 477: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 478: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 479: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 480: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 481: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 482: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 483: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 217
	i32 2987532451, ; 484: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 251
	i32 2996846495, ; 485: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 231
	i32 3016983068, ; 486: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 253
	i32 3023353419, ; 487: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 488: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 225
	i32 3038032645, ; 489: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 335
	i32 3056245963, ; 490: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 250
	i32 3057625584, ; 491: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 241
	i32 3058099980, ; 492: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 289
	i32 3059408633, ; 493: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 494: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3071899978, ; 495: Xamarin.Firebase.Common.dll => 0xb719794a => 265
	i32 3075834255, ; 496: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 497: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 313
	i32 3090735792, ; 498: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 499: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 500: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3106737866, ; 501: Xamarin.Firebase.Datatransport.dll => 0xb92d0eca => 268
	i32 3111772706, ; 502: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 503: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 504: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 505: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 506: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 507: GoogleGson.dll => 0xbba64c02 => 173
	i32 3150271759, ; 508: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0xbbc5550f => 300
	i32 3155362983, ; 509: Xamarin.Google.Android.DataTransport.TransportApi => 0xbc1304a7 => 277
	i32 3159123045, ; 510: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 511: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 512: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 242
	i32 3192346100, ; 513: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 514: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 515: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 516: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 517: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 216
	i32 3220365878, ; 518: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 519: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3230466174, ; 520: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 286
	i32 3251039220, ; 521: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 522: Xamarin.AndroidX.CardView => 0xc235e84d => 203
	i32 3265493905, ; 523: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 524: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 525: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 526: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 527: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 528: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 529: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 530: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 531: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 308
	i32 3316684772, ; 532: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 533: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 214
	i32 3317144872, ; 534: System.Data => 0xc5b79d28 => 24
	i32 3322403133, ; 535: Firebase.dll => 0xc607d93d => 0
	i32 3331531814, ; 536: Xamarin.GooglePlayServices.Stats.dll => 0xc6932426 => 288
	i32 3340431453, ; 537: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 201
	i32 3345895724, ; 538: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 246
	i32 3346324047, ; 539: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 243
	i32 3357674450, ; 540: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 325
	i32 3358260929, ; 541: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 542: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 194
	i32 3362522851, ; 543: Xamarin.AndroidX.Core => 0xc86c06e3 => 211
	i32 3366347497, ; 544: Java.Interop => 0xc8a662e9 => 168
	i32 3371992681, ; 545: Xamarin.Firebase.Encoders.Proto.dll => 0xc8fc8669 => 271
	i32 3374999561, ; 546: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 247
	i32 3381016424, ; 547: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 304
	i32 3383578424, ; 548: Xamarin.Firebase.Encoders.JSON => 0xc9ad4f38 => 270
	i32 3395150330, ; 549: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 550: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 551: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 215
	i32 3428513518, ; 552: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 553: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 554: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 555: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 218
	i32 3445260447, ; 556: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 557: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 183
	i32 3463511458, ; 558: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 312
	i32 3471940407, ; 559: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 560: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 561: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 325
	i32 3484440000, ; 562: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 324
	i32 3485117614, ; 563: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 564: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 565: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 207
	i32 3509114376, ; 566: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 567: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 568: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 569: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 570: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 571: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 572: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 332
	i32 3597029428, ; 573: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 192
	i32 3598340787, ; 574: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 575: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 576: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 577: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 245
	i32 3633644679, ; 578: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 196
	i32 3638274909, ; 579: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 580: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 229
	i32 3643446276, ; 581: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 329
	i32 3643854240, ; 582: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 242
	i32 3645089577, ; 583: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 584: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 585: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 586: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 587: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 202
	i32 3684561358, ; 588: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 207
	i32 3697841164, ; 589: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 334
	i32 3700866549, ; 590: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 591: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 212
	i32 3716563718, ; 592: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 593: Xamarin.AndroidX.Annotation => 0xdda814c6 => 195
	i32 3724971120, ; 594: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 241
	i32 3732100267, ; 595: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 596: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 597: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 598: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 599: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 204
	i32 3792276235, ; 600: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 601: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 183
	i32 3802395368, ; 602: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 603: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 604: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 605: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 606: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 607: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 608: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 609: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 610: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 611: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 612: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 613: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 256
	i32 3888767677, ; 614: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 246
	i32 3889960447, ; 615: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 333
	i32 3896106733, ; 616: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 617: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 211
	i32 3901907137, ; 618: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 619: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 205
	i32 3920810846, ; 620: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 621: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 259
	i32 3928044579, ; 622: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 623: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 624: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 244
	i32 3934056515, ; 625: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 290
	i32 3945713374, ; 626: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 627: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 628: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 198
	i32 3959773229, ; 629: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 231
	i32 3970018735, ; 630: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 289
	i32 3980434154, ; 631: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 328
	i32 3987592930, ; 632: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 310
	i32 4003436829, ; 633: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 634: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 197
	i32 4025784931, ; 635: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 636: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 185
	i32 4054681211, ; 637: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 638: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 639: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 640: Microsoft.Maui.Essentials.dll => 0xf40add04 => 187
	i32 4099507663, ; 641: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 642: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 643: Xamarin.AndroidX.Emoji2 => 0xf479582c => 219
	i32 4102112229, ; 644: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 323
	i32 4125707920, ; 645: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 318
	i32 4126470640, ; 646: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 647: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 648: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 649: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 650: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 330
	i32 4151237749, ; 651: System.Core => 0xf76edc75 => 21
	i32 4157403133, ; 652: Xamarin.Firebase.Common.Ktx.dll => 0xf7cceffd => 266
	i32 4159265925, ; 653: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 654: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 655: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 656: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 657: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 238
	i32 4185676441, ; 658: System.Security => 0xf97c5a99 => 130
	i32 4192648326, ; 659: Xamarin.Firebase.Encoders.JSON.dll => 0xf9e6bc86 => 270
	i32 4196529839, ; 660: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 661: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4228543782, ; 662: Xamarin.KotlinX.AtomicFU.Jvm.dll => 0xfc0a7526 => 296
	i32 4256097574, ; 663: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 212
	i32 4258378803, ; 664: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 237
	i32 4260525087, ; 665: System.Buffers => 0xfdf2741f => 7
	i32 4269159614, ; 666: Xamarin.Firebase.Datatransport => 0xfe7634be => 268
	i32 4271975918, ; 667: Microsoft.Maui.Controls.dll => 0xfea12dee => 184
	i32 4274976490, ; 668: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4284549794, ; 669: Xamarin.Firebase.Components => 0xff610aa2 => 267
	i32 4292120959, ; 670: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 238
	i32 4294763496 ; 671: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 221
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [672 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 232, ; 3
	i32 284, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 296, ; 8
	i32 300, ; 9
	i32 30, ; 10
	i32 334, ; 11
	i32 124, ; 12
	i32 188, ; 13
	i32 102, ; 14
	i32 252, ; 15
	i32 264, ; 16
	i32 107, ; 17
	i32 252, ; 18
	i32 139, ; 19
	i32 293, ; 20
	i32 77, ; 21
	i32 124, ; 22
	i32 13, ; 23
	i32 204, ; 24
	i32 295, ; 25
	i32 132, ; 26
	i32 254, ; 27
	i32 151, ; 28
	i32 331, ; 29
	i32 332, ; 30
	i32 18, ; 31
	i32 202, ; 32
	i32 26, ; 33
	i32 225, ; 34
	i32 1, ; 35
	i32 59, ; 36
	i32 42, ; 37
	i32 91, ; 38
	i32 208, ; 39
	i32 147, ; 40
	i32 228, ; 41
	i32 224, ; 42
	i32 303, ; 43
	i32 54, ; 44
	i32 69, ; 45
	i32 331, ; 46
	i32 193, ; 47
	i32 83, ; 48
	i32 316, ; 49
	i32 226, ; 50
	i32 315, ; 51
	i32 131, ; 52
	i32 55, ; 53
	i32 149, ; 54
	i32 74, ; 55
	i32 145, ; 56
	i32 62, ; 57
	i32 146, ; 58
	i32 0, ; 59
	i32 335, ; 60
	i32 165, ; 61
	i32 233, ; 62
	i32 327, ; 63
	i32 209, ; 64
	i32 12, ; 65
	i32 222, ; 66
	i32 125, ; 67
	i32 152, ; 68
	i32 113, ; 69
	i32 166, ; 70
	i32 164, ; 71
	i32 224, ; 72
	i32 279, ; 73
	i32 240, ; 74
	i32 279, ; 75
	i32 84, ; 76
	i32 314, ; 77
	i32 308, ; 78
	i32 277, ; 79
	i32 182, ; 80
	i32 150, ; 81
	i32 293, ; 82
	i32 60, ; 83
	i32 178, ; 84
	i32 51, ; 85
	i32 288, ; 86
	i32 103, ; 87
	i32 114, ; 88
	i32 40, ; 89
	i32 281, ; 90
	i32 263, ; 91
	i32 120, ; 92
	i32 322, ; 93
	i32 52, ; 94
	i32 44, ; 95
	i32 119, ; 96
	i32 233, ; 97
	i32 214, ; 98
	i32 320, ; 99
	i32 220, ; 100
	i32 81, ; 101
	i32 136, ; 102
	i32 259, ; 103
	i32 200, ; 104
	i32 8, ; 105
	i32 295, ; 106
	i32 73, ; 107
	i32 302, ; 108
	i32 155, ; 109
	i32 297, ; 110
	i32 154, ; 111
	i32 92, ; 112
	i32 291, ; 113
	i32 45, ; 114
	i32 317, ; 115
	i32 305, ; 116
	i32 294, ; 117
	i32 109, ; 118
	i32 129, ; 119
	i32 25, ; 120
	i32 190, ; 121
	i32 72, ; 122
	i32 55, ; 123
	i32 46, ; 124
	i32 326, ; 125
	i32 181, ; 126
	i32 215, ; 127
	i32 22, ; 128
	i32 230, ; 129
	i32 86, ; 130
	i32 43, ; 131
	i32 160, ; 132
	i32 71, ; 133
	i32 245, ; 134
	i32 273, ; 135
	i32 3, ; 136
	i32 42, ; 137
	i32 63, ; 138
	i32 274, ; 139
	i32 16, ; 140
	i32 53, ; 141
	i32 329, ; 142
	i32 284, ; 143
	i32 105, ; 144
	i32 294, ; 145
	i32 282, ; 146
	i32 226, ; 147
	i32 34, ; 148
	i32 158, ; 149
	i32 85, ; 150
	i32 32, ; 151
	i32 12, ; 152
	i32 51, ; 153
	i32 278, ; 154
	i32 56, ; 155
	i32 249, ; 156
	i32 36, ; 157
	i32 177, ; 158
	i32 304, ; 159
	i32 283, ; 160
	i32 198, ; 161
	i32 287, ; 162
	i32 35, ; 163
	i32 58, ; 164
	i32 235, ; 165
	i32 173, ; 166
	i32 17, ; 167
	i32 292, ; 168
	i32 164, ; 169
	i32 317, ; 170
	i32 234, ; 171
	i32 180, ; 172
	i32 275, ; 173
	i32 262, ; 174
	i32 323, ; 175
	i32 153, ; 176
	i32 258, ; 177
	i32 243, ; 178
	i32 321, ; 179
	i32 200, ; 180
	i32 29, ; 181
	i32 52, ; 182
	i32 319, ; 183
	i32 263, ; 184
	i32 205, ; 185
	i32 5, ; 186
	i32 303, ; 187
	i32 253, ; 188
	i32 298, ; 189
	i32 257, ; 190
	i32 206, ; 191
	i32 297, ; 192
	i32 197, ; 193
	i32 217, ; 194
	i32 85, ; 195
	i32 262, ; 196
	i32 61, ; 197
	i32 265, ; 198
	i32 112, ; 199
	i32 57, ; 200
	i32 333, ; 201
	i32 249, ; 202
	i32 99, ; 203
	i32 290, ; 204
	i32 19, ; 205
	i32 210, ; 206
	i32 111, ; 207
	i32 101, ; 208
	i32 102, ; 209
	i32 301, ; 210
	i32 104, ; 211
	i32 282, ; 212
	i32 227, ; 213
	i32 71, ; 214
	i32 236, ; 215
	i32 38, ; 216
	i32 32, ; 217
	i32 103, ; 218
	i32 73, ; 219
	i32 307, ; 220
	i32 9, ; 221
	i32 123, ; 222
	i32 46, ; 223
	i32 199, ; 224
	i32 182, ; 225
	i32 9, ; 226
	i32 43, ; 227
	i32 4, ; 228
	i32 250, ; 229
	i32 311, ; 230
	i32 306, ; 231
	i32 272, ; 232
	i32 31, ; 233
	i32 138, ; 234
	i32 92, ; 235
	i32 93, ; 236
	i32 326, ; 237
	i32 49, ; 238
	i32 141, ; 239
	i32 112, ; 240
	i32 140, ; 241
	i32 216, ; 242
	i32 115, ; 243
	i32 283, ; 244
	i32 157, ; 245
	i32 76, ; 246
	i32 79, ; 247
	i32 239, ; 248
	i32 37, ; 249
	i32 261, ; 250
	i32 220, ; 251
	i32 213, ; 252
	i32 64, ; 253
	i32 138, ; 254
	i32 15, ; 255
	i32 116, ; 256
	i32 255, ; 257
	i32 280, ; 258
	i32 208, ; 259
	i32 48, ; 260
	i32 70, ; 261
	i32 80, ; 262
	i32 126, ; 263
	i32 94, ; 264
	i32 121, ; 265
	i32 26, ; 266
	i32 230, ; 267
	i32 97, ; 268
	i32 28, ; 269
	i32 203, ; 270
	i32 324, ; 271
	i32 302, ; 272
	i32 149, ; 273
	i32 169, ; 274
	i32 4, ; 275
	i32 98, ; 276
	i32 33, ; 277
	i32 93, ; 278
	i32 254, ; 279
	i32 178, ; 280
	i32 21, ; 281
	i32 41, ; 282
	i32 170, ; 283
	i32 318, ; 284
	i32 222, ; 285
	i32 310, ; 286
	i32 239, ; 287
	i32 292, ; 288
	i32 280, ; 289
	i32 244, ; 290
	i32 2, ; 291
	i32 134, ; 292
	i32 111, ; 293
	i32 179, ; 294
	i32 330, ; 295
	i32 190, ; 296
	i32 327, ; 297
	i32 58, ; 298
	i32 95, ; 299
	i32 309, ; 300
	i32 271, ; 301
	i32 39, ; 302
	i32 201, ; 303
	i32 25, ; 304
	i32 94, ; 305
	i32 89, ; 306
	i32 99, ; 307
	i32 286, ; 308
	i32 10, ; 309
	i32 276, ; 310
	i32 87, ; 311
	i32 100, ; 312
	i32 251, ; 313
	i32 174, ; 314
	i32 192, ; 315
	i32 306, ; 316
	i32 7, ; 317
	i32 235, ; 318
	i32 301, ; 319
	i32 189, ; 320
	i32 88, ; 321
	i32 229, ; 322
	i32 154, ; 323
	i32 305, ; 324
	i32 33, ; 325
	i32 116, ; 326
	i32 82, ; 327
	i32 278, ; 328
	i32 20, ; 329
	i32 285, ; 330
	i32 11, ; 331
	i32 162, ; 332
	i32 3, ; 333
	i32 186, ; 334
	i32 313, ; 335
	i32 264, ; 336
	i32 181, ; 337
	i32 179, ; 338
	i32 84, ; 339
	i32 299, ; 340
	i32 64, ; 341
	i32 315, ; 342
	i32 258, ; 343
	i32 143, ; 344
	i32 266, ; 345
	i32 240, ; 346
	i32 157, ; 347
	i32 41, ; 348
	i32 117, ; 349
	i32 175, ; 350
	i32 191, ; 351
	i32 309, ; 352
	i32 247, ; 353
	i32 131, ; 354
	i32 75, ; 355
	i32 66, ; 356
	i32 319, ; 357
	i32 172, ; 358
	i32 195, ; 359
	i32 143, ; 360
	i32 106, ; 361
	i32 151, ; 362
	i32 70, ; 363
	i32 156, ; 364
	i32 174, ; 365
	i32 121, ; 366
	i32 127, ; 367
	i32 314, ; 368
	i32 152, ; 369
	i32 219, ; 370
	i32 141, ; 371
	i32 206, ; 372
	i32 311, ; 373
	i32 20, ; 374
	i32 14, ; 375
	i32 135, ; 376
	i32 75, ; 377
	i32 59, ; 378
	i32 209, ; 379
	i32 167, ; 380
	i32 168, ; 381
	i32 184, ; 382
	i32 275, ; 383
	i32 276, ; 384
	i32 15, ; 385
	i32 74, ; 386
	i32 287, ; 387
	i32 6, ; 388
	i32 23, ; 389
	i32 232, ; 390
	i32 189, ; 391
	i32 91, ; 392
	i32 312, ; 393
	i32 1, ; 394
	i32 136, ; 395
	i32 234, ; 396
	i32 257, ; 397
	i32 134, ; 398
	i32 69, ; 399
	i32 146, ; 400
	i32 321, ; 401
	i32 299, ; 402
	i32 223, ; 403
	i32 180, ; 404
	i32 88, ; 405
	i32 96, ; 406
	i32 269, ; 407
	i32 213, ; 408
	i32 274, ; 409
	i32 218, ; 410
	i32 316, ; 411
	i32 31, ; 412
	i32 45, ; 413
	i32 228, ; 414
	i32 269, ; 415
	i32 191, ; 416
	i32 109, ; 417
	i32 158, ; 418
	i32 35, ; 419
	i32 298, ; 420
	i32 22, ; 421
	i32 114, ; 422
	i32 57, ; 423
	i32 255, ; 424
	i32 144, ; 425
	i32 118, ; 426
	i32 120, ; 427
	i32 110, ; 428
	i32 193, ; 429
	i32 139, ; 430
	i32 199, ; 431
	i32 54, ; 432
	i32 105, ; 433
	i32 322, ; 434
	i32 185, ; 435
	i32 186, ; 436
	i32 133, ; 437
	i32 236, ; 438
	i32 291, ; 439
	i32 260, ; 440
	i32 248, ; 441
	i32 227, ; 442
	i32 328, ; 443
	i32 223, ; 444
	i32 188, ; 445
	i32 159, ; 446
	i32 267, ; 447
	i32 307, ; 448
	i32 210, ; 449
	i32 163, ; 450
	i32 132, ; 451
	i32 248, ; 452
	i32 161, ; 453
	i32 320, ; 454
	i32 237, ; 455
	i32 285, ; 456
	i32 140, ; 457
	i32 260, ; 458
	i32 256, ; 459
	i32 169, ; 460
	i32 187, ; 461
	i32 194, ; 462
	i32 281, ; 463
	i32 40, ; 464
	i32 273, ; 465
	i32 221, ; 466
	i32 81, ; 467
	i32 56, ; 468
	i32 37, ; 469
	i32 97, ; 470
	i32 166, ; 471
	i32 172, ; 472
	i32 272, ; 473
	i32 261, ; 474
	i32 82, ; 475
	i32 196, ; 476
	i32 98, ; 477
	i32 30, ; 478
	i32 159, ; 479
	i32 18, ; 480
	i32 127, ; 481
	i32 119, ; 482
	i32 217, ; 483
	i32 251, ; 484
	i32 231, ; 485
	i32 253, ; 486
	i32 165, ; 487
	i32 225, ; 488
	i32 335, ; 489
	i32 250, ; 490
	i32 241, ; 491
	i32 289, ; 492
	i32 170, ; 493
	i32 16, ; 494
	i32 265, ; 495
	i32 144, ; 496
	i32 313, ; 497
	i32 125, ; 498
	i32 118, ; 499
	i32 38, ; 500
	i32 268, ; 501
	i32 115, ; 502
	i32 47, ; 503
	i32 142, ; 504
	i32 117, ; 505
	i32 34, ; 506
	i32 173, ; 507
	i32 300, ; 508
	i32 277, ; 509
	i32 95, ; 510
	i32 53, ; 511
	i32 242, ; 512
	i32 129, ; 513
	i32 153, ; 514
	i32 24, ; 515
	i32 161, ; 516
	i32 216, ; 517
	i32 148, ; 518
	i32 104, ; 519
	i32 286, ; 520
	i32 89, ; 521
	i32 203, ; 522
	i32 60, ; 523
	i32 142, ; 524
	i32 100, ; 525
	i32 5, ; 526
	i32 13, ; 527
	i32 122, ; 528
	i32 135, ; 529
	i32 28, ; 530
	i32 308, ; 531
	i32 72, ; 532
	i32 214, ; 533
	i32 24, ; 534
	i32 0, ; 535
	i32 288, ; 536
	i32 201, ; 537
	i32 246, ; 538
	i32 243, ; 539
	i32 325, ; 540
	i32 137, ; 541
	i32 194, ; 542
	i32 211, ; 543
	i32 168, ; 544
	i32 271, ; 545
	i32 247, ; 546
	i32 304, ; 547
	i32 270, ; 548
	i32 101, ; 549
	i32 123, ; 550
	i32 215, ; 551
	i32 176, ; 552
	i32 163, ; 553
	i32 167, ; 554
	i32 218, ; 555
	i32 39, ; 556
	i32 183, ; 557
	i32 312, ; 558
	i32 17, ; 559
	i32 171, ; 560
	i32 325, ; 561
	i32 324, ; 562
	i32 137, ; 563
	i32 150, ; 564
	i32 207, ; 565
	i32 155, ; 566
	i32 130, ; 567
	i32 19, ; 568
	i32 65, ; 569
	i32 147, ; 570
	i32 47, ; 571
	i32 332, ; 572
	i32 192, ; 573
	i32 79, ; 574
	i32 61, ; 575
	i32 106, ; 576
	i32 245, ; 577
	i32 196, ; 578
	i32 49, ; 579
	i32 229, ; 580
	i32 329, ; 581
	i32 242, ; 582
	i32 14, ; 583
	i32 175, ; 584
	i32 68, ; 585
	i32 171, ; 586
	i32 202, ; 587
	i32 207, ; 588
	i32 334, ; 589
	i32 78, ; 590
	i32 212, ; 591
	i32 108, ; 592
	i32 195, ; 593
	i32 241, ; 594
	i32 67, ; 595
	i32 63, ; 596
	i32 27, ; 597
	i32 160, ; 598
	i32 204, ; 599
	i32 10, ; 600
	i32 183, ; 601
	i32 11, ; 602
	i32 78, ; 603
	i32 126, ; 604
	i32 83, ; 605
	i32 177, ; 606
	i32 66, ; 607
	i32 107, ; 608
	i32 65, ; 609
	i32 128, ; 610
	i32 122, ; 611
	i32 77, ; 612
	i32 256, ; 613
	i32 246, ; 614
	i32 333, ; 615
	i32 8, ; 616
	i32 211, ; 617
	i32 2, ; 618
	i32 205, ; 619
	i32 44, ; 620
	i32 259, ; 621
	i32 156, ; 622
	i32 128, ; 623
	i32 244, ; 624
	i32 290, ; 625
	i32 23, ; 626
	i32 133, ; 627
	i32 198, ; 628
	i32 231, ; 629
	i32 289, ; 630
	i32 328, ; 631
	i32 310, ; 632
	i32 29, ; 633
	i32 197, ; 634
	i32 62, ; 635
	i32 185, ; 636
	i32 90, ; 637
	i32 87, ; 638
	i32 148, ; 639
	i32 187, ; 640
	i32 36, ; 641
	i32 86, ; 642
	i32 219, ; 643
	i32 323, ; 644
	i32 318, ; 645
	i32 176, ; 646
	i32 50, ; 647
	i32 6, ; 648
	i32 90, ; 649
	i32 330, ; 650
	i32 21, ; 651
	i32 266, ; 652
	i32 162, ; 653
	i32 96, ; 654
	i32 50, ; 655
	i32 113, ; 656
	i32 238, ; 657
	i32 130, ; 658
	i32 270, ; 659
	i32 76, ; 660
	i32 27, ; 661
	i32 296, ; 662
	i32 212, ; 663
	i32 237, ; 664
	i32 7, ; 665
	i32 268, ; 666
	i32 184, ; 667
	i32 110, ; 668
	i32 267, ; 669
	i32 238, ; 670
	i32 221 ; 671
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
