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

@assembly_image_cache = dso_local local_unnamed_addr global [311 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [622 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 232
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 266
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 309
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 188
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 250
	i32 117431740, ; 14: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 15: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 250
	i32 122350210, ; 16: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 142721839, ; 17: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 18: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 19: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 20: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 205
	i32 176265551, ; 21: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 22: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 252
	i32 184328833, ; 23: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 24: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 306
	i32 199333315, ; 25: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 307
	i32 205061960, ; 26: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 27: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 203
	i32 220171995, ; 28: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 29: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 226
	i32 230752869, ; 30: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 31: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 32: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 33: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 34: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 209
	i32 276479776, ; 35: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 36: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 228
	i32 280482487, ; 37: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 225
	i32 280992041, ; 38: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 278
	i32 291076382, ; 39: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 40: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 41: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 306
	i32 318968648, ; 42: Xamarin.AndroidX.Activity.dll => 0x13031348 => 194
	i32 321597661, ; 43: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 44: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 291
	i32 342366114, ; 45: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 227
	i32 356389973, ; 46: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 290
	i32 360082299, ; 47: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 48: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 49: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 50: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 51: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 52: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 53: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 54: _Microsoft.Android.Resource.Designer => 0x17969339 => 310
	i32 403441872, ; 55: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 56: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 302
	i32 441335492, ; 57: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 210
	i32 442565967, ; 58: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 59: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 223
	i32 451504562, ; 60: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 61: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 62: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 63: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 64: System.dll => 0x1bff388e => 164
	i32 476646585, ; 65: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 225
	i32 486930444, ; 66: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 238
	i32 498788369, ; 67: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 68: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 289
	i32 503918385, ; 69: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 283
	i32 504143952, ; 70: Plugin.LocalNotification.dll => 0x1e0ca050 => 189
	i32 513247710, ; 71: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 182
	i32 526420162, ; 72: System.Transactions.dll => 0x1f6088c2 => 150
	i32 530272170, ; 73: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 74: Microsoft.Extensions.Logging => 0x20216150 => 178
	i32 540030774, ; 75: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 76: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 77: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 78: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 79: Jsr305Binding => 0x213954e7 => 263
	i32 569601784, ; 80: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 261
	i32 577335427, ; 81: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 82: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 297
	i32 601371474, ; 83: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 84: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 85: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 86: Xamarin.AndroidX.CustomView => 0x2568904f => 215
	i32 627931235, ; 87: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 295
	i32 639843206, ; 88: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 221
	i32 643868501, ; 89: System.Net => 0x2660a755 => 81
	i32 662205335, ; 90: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 91: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 257
	i32 666292255, ; 92: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 201
	i32 672442732, ; 93: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 94: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 95: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 277
	i32 690569205, ; 96: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 97: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 273
	i32 693804605, ; 98: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 99: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 100: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 271
	i32 700358131, ; 101: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 102: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 292
	i32 709557578, ; 103: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 280
	i32 722857257, ; 104: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 105: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 106: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 107: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 191
	i32 759454413, ; 108: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 109: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 110: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 111: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 301
	i32 789151979, ; 112: Microsoft.Extensions.Options => 0x2f0980eb => 181
	i32 790371945, ; 113: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 216
	i32 804715423, ; 114: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 115: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 230
	i32 823281589, ; 116: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 117: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 118: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 119: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 120: Xamarin.AndroidX.Print => 0x3246f6cd => 243
	i32 873119928, ; 121: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 122: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 123: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 124: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 125: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 126: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 304
	i32 928116545, ; 127: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 266
	i32 952186615, ; 128: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 966729478, ; 129: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 264
	i32 967690846, ; 130: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 227
	i32 975236339, ; 131: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 132: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 133: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 134: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 135: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 136: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 137: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 138: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 247
	i32 1019214401, ; 139: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 140: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1029334545, ; 141: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 279
	i32 1031528504, ; 142: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 265
	i32 1035644815, ; 143: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 199
	i32 1036536393, ; 144: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 145: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 146: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 234
	i32 1067306892, ; 147: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 148: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 149: Xamarin.Kotlin.StdLib => 0x409e66d8 => 272
	i32 1098259244, ; 150: System => 0x41761b2c => 164
	i32 1118262833, ; 151: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 292
	i32 1121599056, ; 152: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 233
	i32 1127624469, ; 153: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 180
	i32 1149092582, ; 154: Xamarin.AndroidX.Window => 0x447dc2e6 => 260
	i32 1168523401, ; 155: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 298
	i32 1170634674, ; 156: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 157: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 256
	i32 1178241025, ; 158: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 241
	i32 1203215381, ; 159: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 296
	i32 1204270330, ; 160: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 201
	i32 1208641965, ; 161: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 162: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 163: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 294
	i32 1243150071, ; 164: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 261
	i32 1246548578, ; 165: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 206
	i32 1253011324, ; 166: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 167: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 278
	i32 1264511973, ; 168: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 251
	i32 1264890200, ; 169: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 274
	i32 1267360935, ; 170: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 255
	i32 1273260888, ; 171: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 207
	i32 1275534314, ; 172: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 273
	i32 1278448581, ; 173: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 198
	i32 1288257219, ; 174: Notificacion.dll => 0x4cc93ec3 => 0
	i32 1293217323, ; 175: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 218
	i32 1309188875, ; 176: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 177: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 260
	i32 1324164729, ; 178: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 179: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 180: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 181: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 308
	i32 1376866003, ; 182: Xamarin.AndroidX.SavedState => 0x52114ed3 => 247
	i32 1379779777, ; 183: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 184: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 185: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 211
	i32 1408764838, ; 186: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 187: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 188: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 189: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 276
	i32 1434145427, ; 190: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 191: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 264
	i32 1439761251, ; 192: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 193: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 194: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 195: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 196: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 197: es\Microsoft.Maui.Controls.resources => 0x57152abe => 282
	i32 1461234159, ; 198: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 199: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 200: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 201: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 200
	i32 1470490898, ; 202: Microsoft.Extensions.Primitives => 0x57a5e912 => 182
	i32 1479771757, ; 203: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 204: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 205: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 206: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 248
	i32 1493001747, ; 207: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 286
	i32 1514721132, ; 208: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 281
	i32 1524747670, ; 209: Plugin.LocalNotification => 0x5ae1cd96 => 189
	i32 1536373174, ; 210: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 211: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 212: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 213: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 214: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 301
	i32 1565862583, ; 215: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 216: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 217: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 218: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 219: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 217
	i32 1592978981, ; 220: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 221: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 265
	i32 1601112923, ; 222: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 223: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 224: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 225: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 237
	i32 1622358360, ; 226: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 227: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 259
	i32 1635184631, ; 228: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 221
	i32 1636350590, ; 229: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 214
	i32 1639515021, ; 230: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 231: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 232: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 233: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 234: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 253
	i32 1658251792, ; 235: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 262
	i32 1670060433, ; 236: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 209
	i32 1675553242, ; 237: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 238: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 239: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 240: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 241: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 242: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1701541528, ; 243: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 244: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 230
	i32 1726116996, ; 245: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 246: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 247: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 204
	i32 1736233607, ; 248: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 299
	i32 1743415430, ; 249: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 277
	i32 1744735666, ; 250: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 251: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 252: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 253: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 254: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 255: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 256: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 252
	i32 1770582343, ; 257: Microsoft.Extensions.Logging.dll => 0x6988f147 => 178
	i32 1776026572, ; 258: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 259: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 260: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 261: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 293
	i32 1788241197, ; 262: Xamarin.AndroidX.Fragment => 0x6a96652d => 223
	i32 1793755602, ; 263: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 285
	i32 1808609942, ; 264: Xamarin.AndroidX.Loader => 0x6bcd3296 => 237
	i32 1813058853, ; 265: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 272
	i32 1813201214, ; 266: Xamarin.Google.Android.Material => 0x6c13413e => 262
	i32 1818569960, ; 267: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 242
	i32 1818787751, ; 268: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 269: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 270: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 271: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 179
	i32 1842015223, ; 272: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 305
	i32 1847515442, ; 273: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 191
	i32 1853025655, ; 274: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 302
	i32 1858542181, ; 275: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 276: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 277: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 284
	i32 1879696579, ; 278: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 279: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 202
	i32 1888955245, ; 280: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 281: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 282: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 283: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1908813208, ; 284: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 268
	i32 1910275211, ; 285: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 286: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 287: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 288: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 249
	i32 1968388702, ; 289: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1985761444, ; 290: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 193
	i32 2003115576, ; 291: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 281
	i32 2011961780, ; 292: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 293: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 234
	i32 2025202353, ; 294: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 276
	i32 2031763787, ; 295: Xamarin.Android.Glide => 0x791a414b => 190
	i32 2045470958, ; 296: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 297: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 229
	i32 2060060697, ; 298: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 299: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 280
	i32 2070888862, ; 300: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 301: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 302: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 303: System.Console => 0x7ec9ffe9 => 20
	i32 2129483829, ; 304: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 267
	i32 2142473426, ; 305: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 306: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 307: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 308: Microsoft.Maui => 0x80bd55ad => 186
	i32 2169148018, ; 309: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 288
	i32 2181898931, ; 310: Microsoft.Extensions.Options.dll => 0x820d22b3 => 181
	i32 2192057212, ; 311: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 179
	i32 2193016926, ; 312: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 313: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 275
	i32 2201231467, ; 314: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 315: it\Microsoft.Maui.Controls.resources => 0x839595db => 290
	i32 2217644978, ; 316: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 256
	i32 2222056684, ; 317: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 318: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 238
	i32 2252106437, ; 319: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 320: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 321: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 322: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 323: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 192
	i32 2270573516, ; 324: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 284
	i32 2279755925, ; 325: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 245
	i32 2293034957, ; 326: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 327: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 328: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 329: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 294
	i32 2305521784, ; 330: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 331: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 196
	i32 2320631194, ; 332: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 333: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 334: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 335: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 336: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 337: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 338: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 339: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 340: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 289
	i32 2401565422, ; 341: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 342: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 220
	i32 2421380589, ; 343: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 344: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 207
	i32 2427813419, ; 345: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 286
	i32 2435356389, ; 346: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 347: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 348: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 349: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 350: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 351: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 210
	i32 2471841756, ; 352: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 353: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 354: Microsoft.Maui.Controls => 0x93dba8a1 => 184
	i32 2483903535, ; 355: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 356: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 357: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 358: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 359: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 232
	i32 2522472828, ; 360: Xamarin.Android.Glide.dll => 0x9659e17c => 190
	i32 2538310050, ; 361: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 362: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 287
	i32 2562349572, ; 363: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 364: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 365: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 233
	i32 2581819634, ; 366: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 255
	i32 2585220780, ; 367: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 368: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 369: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 370: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 296
	i32 2605712449, ; 371: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 275
	i32 2615233544, ; 372: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 224
	i32 2616218305, ; 373: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 180
	i32 2617129537, ; 374: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 375: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 376: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 214
	i32 2624644809, ; 377: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 219
	i32 2626831493, ; 378: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 291
	i32 2627185994, ; 379: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 380: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 381: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 228
	i32 2663391936, ; 382: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 192
	i32 2663698177, ; 383: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 384: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 385: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2671474046, ; 386: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 274
	i32 2676780864, ; 387: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 388: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 389: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 390: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 253
	i32 2715334215, ; 391: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 392: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 393: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 394: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 395: Xamarin.AndroidX.Activity => 0xa2e0939b => 194
	i32 2735172069, ; 396: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 397: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 200
	i32 2740948882, ; 398: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2743105100, ; 399: Notificacion => 0xa380764c => 0
	i32 2748088231, ; 400: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 401: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 297
	i32 2758225723, ; 402: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 185
	i32 2764765095, ; 403: Microsoft.Maui.dll => 0xa4caf7a7 => 186
	i32 2765824710, ; 404: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 405: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 271
	i32 2778768386, ; 406: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 258
	i32 2779977773, ; 407: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 246
	i32 2785988530, ; 408: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 303
	i32 2788224221, ; 409: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 224
	i32 2801831435, ; 410: Microsoft.Maui.Graphics => 0xa7008e0b => 188
	i32 2803228030, ; 411: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 412: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 282
	i32 2810250172, ; 413: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 211
	i32 2819470561, ; 414: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 415: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 416: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 246
	i32 2824502124, ; 417: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 418: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 295
	i32 2838993487, ; 419: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 235
	i32 2847418871, ; 420: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 267
	i32 2849599387, ; 421: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 422: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 258
	i32 2855708567, ; 423: Xamarin.AndroidX.Transition => 0xaa36a797 => 254
	i32 2861098320, ; 424: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 425: Microsoft.Maui.Essentials => 0xaa8a4878 => 187
	i32 2870099610, ; 426: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 195
	i32 2875164099, ; 427: Jsr305Binding.dll => 0xab5f85c3 => 263
	i32 2875220617, ; 428: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 429: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 222
	i32 2887636118, ; 430: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 431: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 432: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 433: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 434: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 435: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 436: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 259
	i32 2919462931, ; 437: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 438: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 197
	i32 2936416060, ; 439: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 440: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 441: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 442: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 443: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 444: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 445: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 218
	i32 2987532451, ; 446: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 249
	i32 2996846495, ; 447: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 231
	i32 3016983068, ; 448: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 251
	i32 3023353419, ; 449: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 450: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 226
	i32 3038032645, ; 451: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 310
	i32 3056245963, ; 452: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 248
	i32 3057625584, ; 453: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 239
	i32 3058099980, ; 454: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 270
	i32 3059408633, ; 455: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 456: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 457: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 458: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 288
	i32 3090735792, ; 459: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 460: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 461: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 462: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 463: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 464: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 465: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 466: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 467: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 468: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 469: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 470: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 240
	i32 3192346100, ; 471: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 472: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 473: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 474: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 475: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 217
	i32 3220365878, ; 476: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 477: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3230466174, ; 478: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 268
	i32 3251039220, ; 479: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 480: Xamarin.AndroidX.CardView => 0xc235e84d => 204
	i32 3265493905, ; 481: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 482: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 483: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 484: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 485: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 486: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 487: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 488: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 489: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 283
	i32 3316684772, ; 490: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 491: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 215
	i32 3317144872, ; 492: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 493: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 202
	i32 3345895724, ; 494: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 244
	i32 3346324047, ; 495: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 241
	i32 3357674450, ; 496: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 300
	i32 3358260929, ; 497: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 498: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 195
	i32 3362522851, ; 499: Xamarin.AndroidX.Core => 0xc86c06e3 => 212
	i32 3366347497, ; 500: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 501: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 245
	i32 3381016424, ; 502: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 279
	i32 3395150330, ; 503: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 504: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 505: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 216
	i32 3428513518, ; 506: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 507: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 508: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 509: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 219
	i32 3445260447, ; 510: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 511: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 183
	i32 3463511458, ; 512: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 287
	i32 3471940407, ; 513: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 514: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 515: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 300
	i32 3484440000, ; 516: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 299
	i32 3485117614, ; 517: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 518: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 519: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 208
	i32 3494395880, ; 520: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 269
	i32 3509114376, ; 521: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 522: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 523: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 524: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 525: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 526: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 527: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 307
	i32 3597029428, ; 528: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 193
	i32 3598340787, ; 529: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 530: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 531: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 532: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 243
	i32 3633644679, ; 533: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 197
	i32 3638274909, ; 534: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 535: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 229
	i32 3643446276, ; 536: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 304
	i32 3643854240, ; 537: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 240
	i32 3645089577, ; 538: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 539: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 540: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 541: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 542: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 203
	i32 3684561358, ; 543: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 208
	i32 3697841164, ; 544: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 309
	i32 3700866549, ; 545: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 546: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 213
	i32 3716563718, ; 547: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 548: Xamarin.AndroidX.Annotation => 0xdda814c6 => 196
	i32 3724971120, ; 549: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 239
	i32 3732100267, ; 550: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 551: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 552: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 553: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 554: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 205
	i32 3792276235, ; 555: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 556: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 183
	i32 3802395368, ; 557: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 558: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 559: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 560: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 561: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 562: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 563: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 564: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 565: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 566: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 567: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 568: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 254
	i32 3888767677, ; 569: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 244
	i32 3889960447, ; 570: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 308
	i32 3896106733, ; 571: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 572: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 212
	i32 3901907137, ; 573: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 574: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 206
	i32 3920810846, ; 575: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 576: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 257
	i32 3928044579, ; 577: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 578: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 579: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 242
	i32 3945713374, ; 580: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 581: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 582: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 199
	i32 3959773229, ; 583: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 231
	i32 3967165417, ; 584: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 269
	i32 3970018735, ; 585: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 270
	i32 3980434154, ; 586: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 303
	i32 3987592930, ; 587: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 285
	i32 4003436829, ; 588: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 589: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 198
	i32 4025784931, ; 590: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 591: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 185
	i32 4054681211, ; 592: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 593: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 594: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 595: Microsoft.Maui.Essentials.dll => 0xf40add04 => 187
	i32 4099507663, ; 596: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 597: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 598: Xamarin.AndroidX.Emoji2 => 0xf479582c => 220
	i32 4102112229, ; 599: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 298
	i32 4125707920, ; 600: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 293
	i32 4126470640, ; 601: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 602: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 603: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 604: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 605: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 305
	i32 4151237749, ; 606: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 607: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 608: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 609: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 610: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 611: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 236
	i32 4185676441, ; 612: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 613: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 614: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 615: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 213
	i32 4258378803, ; 616: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 235
	i32 4260525087, ; 617: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 618: Microsoft.Maui.Controls.dll => 0xfea12dee => 184
	i32 4274976490, ; 619: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 620: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 236
	i32 4294763496 ; 621: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 222
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [622 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 232, ; 3
	i32 266, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 30, ; 8
	i32 309, ; 9
	i32 124, ; 10
	i32 188, ; 11
	i32 102, ; 12
	i32 250, ; 13
	i32 107, ; 14
	i32 250, ; 15
	i32 139, ; 16
	i32 77, ; 17
	i32 124, ; 18
	i32 13, ; 19
	i32 205, ; 20
	i32 132, ; 21
	i32 252, ; 22
	i32 151, ; 23
	i32 306, ; 24
	i32 307, ; 25
	i32 18, ; 26
	i32 203, ; 27
	i32 26, ; 28
	i32 226, ; 29
	i32 1, ; 30
	i32 59, ; 31
	i32 42, ; 32
	i32 91, ; 33
	i32 209, ; 34
	i32 147, ; 35
	i32 228, ; 36
	i32 225, ; 37
	i32 278, ; 38
	i32 54, ; 39
	i32 69, ; 40
	i32 306, ; 41
	i32 194, ; 42
	i32 83, ; 43
	i32 291, ; 44
	i32 227, ; 45
	i32 290, ; 46
	i32 131, ; 47
	i32 55, ; 48
	i32 149, ; 49
	i32 74, ; 50
	i32 145, ; 51
	i32 62, ; 52
	i32 146, ; 53
	i32 310, ; 54
	i32 165, ; 55
	i32 302, ; 56
	i32 210, ; 57
	i32 12, ; 58
	i32 223, ; 59
	i32 125, ; 60
	i32 152, ; 61
	i32 113, ; 62
	i32 166, ; 63
	i32 164, ; 64
	i32 225, ; 65
	i32 238, ; 66
	i32 84, ; 67
	i32 289, ; 68
	i32 283, ; 69
	i32 189, ; 70
	i32 182, ; 71
	i32 150, ; 72
	i32 60, ; 73
	i32 178, ; 74
	i32 51, ; 75
	i32 103, ; 76
	i32 114, ; 77
	i32 40, ; 78
	i32 263, ; 79
	i32 261, ; 80
	i32 120, ; 81
	i32 297, ; 82
	i32 52, ; 83
	i32 44, ; 84
	i32 119, ; 85
	i32 215, ; 86
	i32 295, ; 87
	i32 221, ; 88
	i32 81, ; 89
	i32 136, ; 90
	i32 257, ; 91
	i32 201, ; 92
	i32 8, ; 93
	i32 73, ; 94
	i32 277, ; 95
	i32 155, ; 96
	i32 273, ; 97
	i32 154, ; 98
	i32 92, ; 99
	i32 271, ; 100
	i32 45, ; 101
	i32 292, ; 102
	i32 280, ; 103
	i32 109, ; 104
	i32 129, ; 105
	i32 25, ; 106
	i32 191, ; 107
	i32 72, ; 108
	i32 55, ; 109
	i32 46, ; 110
	i32 301, ; 111
	i32 181, ; 112
	i32 216, ; 113
	i32 22, ; 114
	i32 230, ; 115
	i32 86, ; 116
	i32 43, ; 117
	i32 160, ; 118
	i32 71, ; 119
	i32 243, ; 120
	i32 3, ; 121
	i32 42, ; 122
	i32 63, ; 123
	i32 16, ; 124
	i32 53, ; 125
	i32 304, ; 126
	i32 266, ; 127
	i32 105, ; 128
	i32 264, ; 129
	i32 227, ; 130
	i32 34, ; 131
	i32 158, ; 132
	i32 85, ; 133
	i32 32, ; 134
	i32 12, ; 135
	i32 51, ; 136
	i32 56, ; 137
	i32 247, ; 138
	i32 36, ; 139
	i32 177, ; 140
	i32 279, ; 141
	i32 265, ; 142
	i32 199, ; 143
	i32 35, ; 144
	i32 58, ; 145
	i32 234, ; 146
	i32 173, ; 147
	i32 17, ; 148
	i32 272, ; 149
	i32 164, ; 150
	i32 292, ; 151
	i32 233, ; 152
	i32 180, ; 153
	i32 260, ; 154
	i32 298, ; 155
	i32 153, ; 156
	i32 256, ; 157
	i32 241, ; 158
	i32 296, ; 159
	i32 201, ; 160
	i32 29, ; 161
	i32 52, ; 162
	i32 294, ; 163
	i32 261, ; 164
	i32 206, ; 165
	i32 5, ; 166
	i32 278, ; 167
	i32 251, ; 168
	i32 274, ; 169
	i32 255, ; 170
	i32 207, ; 171
	i32 273, ; 172
	i32 198, ; 173
	i32 0, ; 174
	i32 218, ; 175
	i32 85, ; 176
	i32 260, ; 177
	i32 61, ; 178
	i32 112, ; 179
	i32 57, ; 180
	i32 308, ; 181
	i32 247, ; 182
	i32 99, ; 183
	i32 19, ; 184
	i32 211, ; 185
	i32 111, ; 186
	i32 101, ; 187
	i32 102, ; 188
	i32 276, ; 189
	i32 104, ; 190
	i32 264, ; 191
	i32 71, ; 192
	i32 38, ; 193
	i32 32, ; 194
	i32 103, ; 195
	i32 73, ; 196
	i32 282, ; 197
	i32 9, ; 198
	i32 123, ; 199
	i32 46, ; 200
	i32 200, ; 201
	i32 182, ; 202
	i32 9, ; 203
	i32 43, ; 204
	i32 4, ; 205
	i32 248, ; 206
	i32 286, ; 207
	i32 281, ; 208
	i32 189, ; 209
	i32 31, ; 210
	i32 138, ; 211
	i32 92, ; 212
	i32 93, ; 213
	i32 301, ; 214
	i32 49, ; 215
	i32 141, ; 216
	i32 112, ; 217
	i32 140, ; 218
	i32 217, ; 219
	i32 115, ; 220
	i32 265, ; 221
	i32 157, ; 222
	i32 76, ; 223
	i32 79, ; 224
	i32 237, ; 225
	i32 37, ; 226
	i32 259, ; 227
	i32 221, ; 228
	i32 214, ; 229
	i32 64, ; 230
	i32 138, ; 231
	i32 15, ; 232
	i32 116, ; 233
	i32 253, ; 234
	i32 262, ; 235
	i32 209, ; 236
	i32 48, ; 237
	i32 70, ; 238
	i32 80, ; 239
	i32 126, ; 240
	i32 94, ; 241
	i32 121, ; 242
	i32 26, ; 243
	i32 230, ; 244
	i32 97, ; 245
	i32 28, ; 246
	i32 204, ; 247
	i32 299, ; 248
	i32 277, ; 249
	i32 149, ; 250
	i32 169, ; 251
	i32 4, ; 252
	i32 98, ; 253
	i32 33, ; 254
	i32 93, ; 255
	i32 252, ; 256
	i32 178, ; 257
	i32 21, ; 258
	i32 41, ; 259
	i32 170, ; 260
	i32 293, ; 261
	i32 223, ; 262
	i32 285, ; 263
	i32 237, ; 264
	i32 272, ; 265
	i32 262, ; 266
	i32 242, ; 267
	i32 2, ; 268
	i32 134, ; 269
	i32 111, ; 270
	i32 179, ; 271
	i32 305, ; 272
	i32 191, ; 273
	i32 302, ; 274
	i32 58, ; 275
	i32 95, ; 276
	i32 284, ; 277
	i32 39, ; 278
	i32 202, ; 279
	i32 25, ; 280
	i32 94, ; 281
	i32 89, ; 282
	i32 99, ; 283
	i32 268, ; 284
	i32 10, ; 285
	i32 87, ; 286
	i32 100, ; 287
	i32 249, ; 288
	i32 174, ; 289
	i32 193, ; 290
	i32 281, ; 291
	i32 7, ; 292
	i32 234, ; 293
	i32 276, ; 294
	i32 190, ; 295
	i32 88, ; 296
	i32 229, ; 297
	i32 154, ; 298
	i32 280, ; 299
	i32 33, ; 300
	i32 116, ; 301
	i32 82, ; 302
	i32 20, ; 303
	i32 267, ; 304
	i32 11, ; 305
	i32 162, ; 306
	i32 3, ; 307
	i32 186, ; 308
	i32 288, ; 309
	i32 181, ; 310
	i32 179, ; 311
	i32 84, ; 312
	i32 275, ; 313
	i32 64, ; 314
	i32 290, ; 315
	i32 256, ; 316
	i32 143, ; 317
	i32 238, ; 318
	i32 157, ; 319
	i32 41, ; 320
	i32 117, ; 321
	i32 175, ; 322
	i32 192, ; 323
	i32 284, ; 324
	i32 245, ; 325
	i32 131, ; 326
	i32 75, ; 327
	i32 66, ; 328
	i32 294, ; 329
	i32 172, ; 330
	i32 196, ; 331
	i32 143, ; 332
	i32 106, ; 333
	i32 151, ; 334
	i32 70, ; 335
	i32 156, ; 336
	i32 174, ; 337
	i32 121, ; 338
	i32 127, ; 339
	i32 289, ; 340
	i32 152, ; 341
	i32 220, ; 342
	i32 141, ; 343
	i32 207, ; 344
	i32 286, ; 345
	i32 20, ; 346
	i32 14, ; 347
	i32 135, ; 348
	i32 75, ; 349
	i32 59, ; 350
	i32 210, ; 351
	i32 167, ; 352
	i32 168, ; 353
	i32 184, ; 354
	i32 15, ; 355
	i32 74, ; 356
	i32 6, ; 357
	i32 23, ; 358
	i32 232, ; 359
	i32 190, ; 360
	i32 91, ; 361
	i32 287, ; 362
	i32 1, ; 363
	i32 136, ; 364
	i32 233, ; 365
	i32 255, ; 366
	i32 134, ; 367
	i32 69, ; 368
	i32 146, ; 369
	i32 296, ; 370
	i32 275, ; 371
	i32 224, ; 372
	i32 180, ; 373
	i32 88, ; 374
	i32 96, ; 375
	i32 214, ; 376
	i32 219, ; 377
	i32 291, ; 378
	i32 31, ; 379
	i32 45, ; 380
	i32 228, ; 381
	i32 192, ; 382
	i32 109, ; 383
	i32 158, ; 384
	i32 35, ; 385
	i32 274, ; 386
	i32 22, ; 387
	i32 114, ; 388
	i32 57, ; 389
	i32 253, ; 390
	i32 144, ; 391
	i32 118, ; 392
	i32 120, ; 393
	i32 110, ; 394
	i32 194, ; 395
	i32 139, ; 396
	i32 200, ; 397
	i32 54, ; 398
	i32 0, ; 399
	i32 105, ; 400
	i32 297, ; 401
	i32 185, ; 402
	i32 186, ; 403
	i32 133, ; 404
	i32 271, ; 405
	i32 258, ; 406
	i32 246, ; 407
	i32 303, ; 408
	i32 224, ; 409
	i32 188, ; 410
	i32 159, ; 411
	i32 282, ; 412
	i32 211, ; 413
	i32 163, ; 414
	i32 132, ; 415
	i32 246, ; 416
	i32 161, ; 417
	i32 295, ; 418
	i32 235, ; 419
	i32 267, ; 420
	i32 140, ; 421
	i32 258, ; 422
	i32 254, ; 423
	i32 169, ; 424
	i32 187, ; 425
	i32 195, ; 426
	i32 263, ; 427
	i32 40, ; 428
	i32 222, ; 429
	i32 81, ; 430
	i32 56, ; 431
	i32 37, ; 432
	i32 97, ; 433
	i32 166, ; 434
	i32 172, ; 435
	i32 259, ; 436
	i32 82, ; 437
	i32 197, ; 438
	i32 98, ; 439
	i32 30, ; 440
	i32 159, ; 441
	i32 18, ; 442
	i32 127, ; 443
	i32 119, ; 444
	i32 218, ; 445
	i32 249, ; 446
	i32 231, ; 447
	i32 251, ; 448
	i32 165, ; 449
	i32 226, ; 450
	i32 310, ; 451
	i32 248, ; 452
	i32 239, ; 453
	i32 270, ; 454
	i32 170, ; 455
	i32 16, ; 456
	i32 144, ; 457
	i32 288, ; 458
	i32 125, ; 459
	i32 118, ; 460
	i32 38, ; 461
	i32 115, ; 462
	i32 47, ; 463
	i32 142, ; 464
	i32 117, ; 465
	i32 34, ; 466
	i32 173, ; 467
	i32 95, ; 468
	i32 53, ; 469
	i32 240, ; 470
	i32 129, ; 471
	i32 153, ; 472
	i32 24, ; 473
	i32 161, ; 474
	i32 217, ; 475
	i32 148, ; 476
	i32 104, ; 477
	i32 268, ; 478
	i32 89, ; 479
	i32 204, ; 480
	i32 60, ; 481
	i32 142, ; 482
	i32 100, ; 483
	i32 5, ; 484
	i32 13, ; 485
	i32 122, ; 486
	i32 135, ; 487
	i32 28, ; 488
	i32 283, ; 489
	i32 72, ; 490
	i32 215, ; 491
	i32 24, ; 492
	i32 202, ; 493
	i32 244, ; 494
	i32 241, ; 495
	i32 300, ; 496
	i32 137, ; 497
	i32 195, ; 498
	i32 212, ; 499
	i32 168, ; 500
	i32 245, ; 501
	i32 279, ; 502
	i32 101, ; 503
	i32 123, ; 504
	i32 216, ; 505
	i32 176, ; 506
	i32 163, ; 507
	i32 167, ; 508
	i32 219, ; 509
	i32 39, ; 510
	i32 183, ; 511
	i32 287, ; 512
	i32 17, ; 513
	i32 171, ; 514
	i32 300, ; 515
	i32 299, ; 516
	i32 137, ; 517
	i32 150, ; 518
	i32 208, ; 519
	i32 269, ; 520
	i32 155, ; 521
	i32 130, ; 522
	i32 19, ; 523
	i32 65, ; 524
	i32 147, ; 525
	i32 47, ; 526
	i32 307, ; 527
	i32 193, ; 528
	i32 79, ; 529
	i32 61, ; 530
	i32 106, ; 531
	i32 243, ; 532
	i32 197, ; 533
	i32 49, ; 534
	i32 229, ; 535
	i32 304, ; 536
	i32 240, ; 537
	i32 14, ; 538
	i32 175, ; 539
	i32 68, ; 540
	i32 171, ; 541
	i32 203, ; 542
	i32 208, ; 543
	i32 309, ; 544
	i32 78, ; 545
	i32 213, ; 546
	i32 108, ; 547
	i32 196, ; 548
	i32 239, ; 549
	i32 67, ; 550
	i32 63, ; 551
	i32 27, ; 552
	i32 160, ; 553
	i32 205, ; 554
	i32 10, ; 555
	i32 183, ; 556
	i32 11, ; 557
	i32 78, ; 558
	i32 126, ; 559
	i32 83, ; 560
	i32 177, ; 561
	i32 66, ; 562
	i32 107, ; 563
	i32 65, ; 564
	i32 128, ; 565
	i32 122, ; 566
	i32 77, ; 567
	i32 254, ; 568
	i32 244, ; 569
	i32 308, ; 570
	i32 8, ; 571
	i32 212, ; 572
	i32 2, ; 573
	i32 206, ; 574
	i32 44, ; 575
	i32 257, ; 576
	i32 156, ; 577
	i32 128, ; 578
	i32 242, ; 579
	i32 23, ; 580
	i32 133, ; 581
	i32 199, ; 582
	i32 231, ; 583
	i32 269, ; 584
	i32 270, ; 585
	i32 303, ; 586
	i32 285, ; 587
	i32 29, ; 588
	i32 198, ; 589
	i32 62, ; 590
	i32 185, ; 591
	i32 90, ; 592
	i32 87, ; 593
	i32 148, ; 594
	i32 187, ; 595
	i32 36, ; 596
	i32 86, ; 597
	i32 220, ; 598
	i32 298, ; 599
	i32 293, ; 600
	i32 176, ; 601
	i32 50, ; 602
	i32 6, ; 603
	i32 90, ; 604
	i32 305, ; 605
	i32 21, ; 606
	i32 162, ; 607
	i32 96, ; 608
	i32 50, ; 609
	i32 113, ; 610
	i32 236, ; 611
	i32 130, ; 612
	i32 76, ; 613
	i32 27, ; 614
	i32 213, ; 615
	i32 235, ; 616
	i32 7, ; 617
	i32 184, ; 618
	i32 110, ; 619
	i32 236, ; 620
	i32 222 ; 621
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
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}