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

@assembly_image_cache = dso_local local_unnamed_addr global [323 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [646 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 236
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 273
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 45981941, ; 8: Xamarin.KotlinX.AtomicFU.Jvm => 0x2bda0f5 => 281
	i32 65960268, ; 9: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 189
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 318
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 188
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 257
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 257
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 208
	i32 166070894, ; 23: Xamarin.KotlinX.AtomicFU.dll => 0x9e60a6e => 280
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 259
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 315
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 316
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 206
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 229
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 212
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 232
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 228
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 287
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 44: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 315
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 197
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 300
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 230
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 299
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 55: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 56: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 57: _Microsoft.Android.Resource.Designer => 0x17969339 => 322
	i32 403441872, ; 58: WindowsBase => 0x180c08d0 => 165
	i32 425531652, ; 59: Xamarin.AndroidX.Lifecycle.Runtime.Android => 0x195d1904 => 237
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 311
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 213
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 226
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 228
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 245
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 298
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 292
	i32 504143952, ; 74: Plugin.LocalNotification.dll => 0x1e0ca050 => 190
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 182
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 150
	i32 530272170, ; 77: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 78: Microsoft.Extensions.Logging => 0x20216150 => 178
	i32 540030774, ; 79: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 80: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 81: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 82: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 83: Jsr305Binding => 0x213954e7 => 270
	i32 569601784, ; 84: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 268
	i32 577335427, ; 85: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 86: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 306
	i32 601371474, ; 87: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 88: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 89: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 621990341, ; 90: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 0x2512d1c5 => 237
	i32 627609679, ; 91: Xamarin.AndroidX.CustomView => 0x2568904f => 218
	i32 627931235, ; 92: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 304
	i32 639843206, ; 93: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 224
	i32 643868501, ; 94: System.Net => 0x2660a755 => 81
	i32 662205335, ; 95: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 96: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 264
	i32 666292255, ; 97: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 204
	i32 672442732, ; 98: System.Collections.Concurrent => 0x2814a96c => 8
	i32 679221896, ; 99: Xamarin.KotlinX.AtomicFU => 0x287c1a88 => 280
	i32 683518922, ; 100: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 101: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 286
	i32 690569205, ; 102: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 103: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 282
	i32 693804605, ; 104: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 105: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 106: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 278
	i32 700358131, ; 107: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 108: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 301
	i32 709557578, ; 109: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 289
	i32 722857257, ; 110: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 111: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 112: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 113: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 194
	i32 759454413, ; 114: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 115: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 116: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 117: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 310
	i32 789151979, ; 118: Microsoft.Extensions.Options => 0x2f0980eb => 181
	i32 790371945, ; 119: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 219
	i32 804715423, ; 120: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 234
	i32 809851609, ; 122: System.Drawing.Common.dll => 0x30455ad9 => 191
	i32 823281589, ; 123: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 124: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 125: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 126: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 127: Xamarin.AndroidX.Print => 0x3246f6cd => 250
	i32 873119928, ; 128: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 873207192, ; 129: System.Private.Windows.Core => 0x340c1598 => 192
	i32 877678880, ; 130: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 131: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 132: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 133: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 134: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 313
	i32 928116545, ; 135: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 273
	i32 952186615, ; 136: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 966729478, ; 137: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 271
	i32 967690846, ; 138: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 230
	i32 975236339, ; 139: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 140: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 141: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 142: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 143: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 144: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 145: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 146: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 254
	i32 1019214401, ; 147: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 148: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1029334545, ; 149: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 288
	i32 1031528504, ; 150: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 272
	i32 1035644815, ; 151: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 202
	i32 1036536393, ; 152: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 153: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 154: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 240
	i32 1067306892, ; 155: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 156: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 157: Xamarin.Kotlin.StdLib => 0x409e66d8 => 279
	i32 1098259244, ; 158: System => 0x41761b2c => 164
	i32 1118262833, ; 159: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 301
	i32 1121599056, ; 160: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 238
	i32 1127624469, ; 161: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 180
	i32 1149092582, ; 162: Xamarin.AndroidX.Window => 0x447dc2e6 => 267
	i32 1168523401, ; 163: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 307
	i32 1170634674, ; 164: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 165: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 263
	i32 1178241025, ; 166: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 248
	i32 1203215381, ; 167: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 305
	i32 1204270330, ; 168: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 204
	i32 1208641965, ; 169: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 170: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 171: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 303
	i32 1243150071, ; 172: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 268
	i32 1246548578, ; 173: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 209
	i32 1253011324, ; 174: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 175: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 287
	i32 1264511973, ; 176: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 258
	i32 1264890200, ; 177: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 283
	i32 1267360935, ; 178: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 262
	i32 1273260888, ; 179: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 210
	i32 1275534314, ; 180: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 282
	i32 1278448581, ; 181: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 201
	i32 1293217323, ; 182: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 221
	i32 1309188875, ; 183: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 184: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 267
	i32 1324164729, ; 185: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 186: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 187: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 188: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 317
	i32 1376866003, ; 189: Xamarin.AndroidX.SavedState => 0x52114ed3 => 254
	i32 1379779777, ; 190: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 191: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 192: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 214
	i32 1408764838, ; 193: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 194: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 195: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 196: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 285
	i32 1434145427, ; 197: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 198: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 271
	i32 1437299793, ; 199: Xamarin.AndroidX.Lifecycle.Common.Jvm => 0x55ab7451 => 231
	i32 1439761251, ; 200: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1441095154, ; 201: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 0x55e55df2 => 241
	i32 1452070440, ; 202: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 203: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 204: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 205: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 206: es\Microsoft.Maui.Controls.resources => 0x57152abe => 291
	i32 1461234159, ; 207: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 208: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 209: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 210: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 203
	i32 1470490898, ; 211: Microsoft.Extensions.Primitives => 0x57a5e912 => 182
	i32 1479771757, ; 212: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 213: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 214: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 215: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 255
	i32 1493001747, ; 216: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 295
	i32 1514721132, ; 217: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 290
	i32 1524747670, ; 218: Plugin.LocalNotification => 0x5ae1cd96 => 190
	i32 1536373174, ; 219: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 220: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 221: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 222: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 223: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 310
	i32 1565862583, ; 224: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 225: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 226: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 227: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 228: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 220
	i32 1592978981, ; 229: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 230: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 272
	i32 1601112923, ; 231: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1603525486, ; 232: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 319
	i32 1604827217, ; 233: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 234: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 235: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 244
	i32 1622358360, ; 236: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 237: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 266
	i32 1635184631, ; 238: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 224
	i32 1636350590, ; 239: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 217
	i32 1639515021, ; 240: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 241: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 242: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654293721, ; 243: System.Private.Windows.Core.dll => 0x629a84d9 => 192
	i32 1657153582, ; 244: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 245: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 260
	i32 1658251792, ; 246: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 269
	i32 1670060433, ; 247: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 212
	i32 1675553242, ; 248: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 249: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 250: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 251: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 252: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 253: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1701541528, ; 254: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 255: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 234
	i32 1726116996, ; 256: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 257: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 258: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 207
	i32 1736233607, ; 259: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 308
	i32 1743415430, ; 260: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 286
	i32 1744735666, ; 261: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 262: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 263: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 264: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 265: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 266: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 267: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 259
	i32 1770582343, ; 268: Microsoft.Extensions.Logging.dll => 0x6988f147 => 178
	i32 1776026572, ; 269: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 270: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 271: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 272: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 302
	i32 1788241197, ; 273: Xamarin.AndroidX.Fragment => 0x6a96652d => 226
	i32 1793755602, ; 274: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 294
	i32 1808609942, ; 275: Xamarin.AndroidX.Loader => 0x6bcd3296 => 244
	i32 1813058853, ; 276: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 279
	i32 1813201214, ; 277: Xamarin.Google.Android.Material => 0x6c13413e => 269
	i32 1818569960, ; 278: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 249
	i32 1818787751, ; 279: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 280: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 281: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1827303595, ; 282: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 321
	i32 1828688058, ; 283: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 179
	i32 1842015223, ; 284: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 314
	i32 1847515442, ; 285: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 194
	i32 1853025655, ; 286: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 311
	i32 1858542181, ; 287: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 288: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 289: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 293
	i32 1879696579, ; 290: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 291: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 205
	i32 1885918049, ; 292: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 321
	i32 1888955245, ; 293: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 294: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 295: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 296: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1908813208, ; 297: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 275
	i32 1910275211, ; 298: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 299: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 300: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 301: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 256
	i32 1968388702, ; 302: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1985761444, ; 303: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 196
	i32 2003115576, ; 304: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 290
	i32 2011961780, ; 305: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 306: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 240
	i32 2025202353, ; 307: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 285
	i32 2031763787, ; 308: Xamarin.Android.Glide => 0x791a414b => 193
	i32 2045470958, ; 309: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 310: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 233
	i32 2060060697, ; 311: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 312: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 289
	i32 2070888862, ; 313: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 314: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 315: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 316: System.Console => 0x7ec9ffe9 => 20
	i32 2129483829, ; 317: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 274
	i32 2142473426, ; 318: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 319: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 320: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 321: Microsoft.Maui => 0x80bd55ad => 186
	i32 2169148018, ; 322: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 297
	i32 2181898931, ; 323: Microsoft.Extensions.Options.dll => 0x820d22b3 => 181
	i32 2192057212, ; 324: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 179
	i32 2193016926, ; 325: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 326: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 284
	i32 2201231467, ; 327: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 328: it\Microsoft.Maui.Controls.resources => 0x839595db => 299
	i32 2217644978, ; 329: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 263
	i32 2222056684, ; 330: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 331: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 245
	i32 2252106437, ; 332: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 333: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 334: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 335: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 336: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 195
	i32 2270573516, ; 337: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 293
	i32 2279755925, ; 338: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 252
	i32 2293034957, ; 339: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 340: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 341: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 342: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 303
	i32 2305521784, ; 343: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 344: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 199
	i32 2320631194, ; 345: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 346: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 347: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 348: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 349: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 350: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 351: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 352: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 353: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 298
	i32 2401565422, ; 354: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 355: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 223
	i32 2409983638, ; 356: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 320
	i32 2421380589, ; 357: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 358: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 210
	i32 2427813419, ; 359: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 295
	i32 2435356389, ; 360: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 361: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 362: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 363: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 364: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 365: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 213
	i32 2471841756, ; 366: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 367: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 368: Microsoft.Maui.Controls => 0x93dba8a1 => 184
	i32 2483903535, ; 369: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 370: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 371: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 372: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 373: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 236
	i32 2522472828, ; 374: Xamarin.Android.Glide.dll => 0x9659e17c => 193
	i32 2538310050, ; 375: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 376: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 296
	i32 2562349572, ; 377: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 378: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2577256205, ; 379: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 0x999dcf0d => 239
	i32 2581783588, ; 380: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 238
	i32 2581819634, ; 381: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 262
	i32 2585220780, ; 382: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 383: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 384: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 385: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 305
	i32 2605712449, ; 386: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 284
	i32 2615233544, ; 387: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 227
	i32 2616218305, ; 388: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 180
	i32 2617129537, ; 389: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 390: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 391: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 217
	i32 2624644809, ; 392: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 222
	i32 2626831493, ; 393: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 300
	i32 2627185994, ; 394: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 395: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 396: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 232
	i32 2653969575, ; 397: LocalNotificationv2 => 0x9e305ca7 => 0
	i32 2663391936, ; 398: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 195
	i32 2663698177, ; 399: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 400: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 401: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2671474046, ; 402: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 283
	i32 2676780864, ; 403: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 404: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 405: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 406: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 260
	i32 2715334215, ; 407: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 408: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 409: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 410: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 411: Xamarin.AndroidX.Activity => 0xa2e0939b => 197
	i32 2735172069, ; 412: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 413: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 203
	i32 2740948882, ; 414: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 415: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 416: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 306
	i32 2758225723, ; 417: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 185
	i32 2764765095, ; 418: Microsoft.Maui.dll => 0xa4caf7a7 => 186
	i32 2765824710, ; 419: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2766642685, ; 420: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 0xa4e79dfd => 241
	i32 2770495804, ; 421: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 278
	i32 2778768386, ; 422: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 265
	i32 2779977773, ; 423: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 253
	i32 2780199943, ; 424: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 0xa5b67c07 => 231
	i32 2785988530, ; 425: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 312
	i32 2788224221, ; 426: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 227
	i32 2795666278, ; 427: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 189
	i32 2801831435, ; 428: Microsoft.Maui.Graphics => 0xa7008e0b => 188
	i32 2803228030, ; 429: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 430: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 291
	i32 2810250172, ; 431: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 214
	i32 2819470561, ; 432: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 433: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 434: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 253
	i32 2824502124, ; 435: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 436: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 304
	i32 2838993487, ; 437: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 242
	i32 2847418871, ; 438: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 274
	i32 2849599387, ; 439: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 440: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 265
	i32 2855708567, ; 441: Xamarin.AndroidX.Transition => 0xaa36a797 => 261
	i32 2861098320, ; 442: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 443: Microsoft.Maui.Essentials => 0xaa8a4878 => 187
	i32 2870099610, ; 444: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 198
	i32 2875164099, ; 445: Jsr305Binding.dll => 0xab5f85c3 => 270
	i32 2875220617, ; 446: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 447: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 225
	i32 2887636118, ; 448: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 449: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 450: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 451: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 452: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 453: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 454: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 266
	i32 2919462931, ; 455: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 456: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 200
	i32 2936416060, ; 457: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 458: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 459: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 460: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 461: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 462: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 463: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 221
	i32 2987532451, ; 464: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 256
	i32 2996846495, ; 465: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 235
	i32 3016983068, ; 466: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 258
	i32 3023353419, ; 467: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 468: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 229
	i32 3038032645, ; 469: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 322
	i32 3056245963, ; 470: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 255
	i32 3057625584, ; 471: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 246
	i32 3058099980, ; 472: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 277
	i32 3059408633, ; 473: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 474: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 475: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 476: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 297
	i32 3090735792, ; 477: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 478: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 479: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 480: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 481: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 482: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 483: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 484: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 485: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 486: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 487: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 488: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 247
	i32 3192346100, ; 489: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 490: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 491: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 492: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 493: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 220
	i32 3220365878, ; 494: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 495: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3230466174, ; 496: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 275
	i32 3251039220, ; 497: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 498: Xamarin.AndroidX.CardView => 0xc235e84d => 207
	i32 3265493905, ; 499: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 500: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 501: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 502: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 503: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 504: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 505: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 506: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 507: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 292
	i32 3316684772, ; 508: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 509: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 218
	i32 3317144872, ; 510: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 511: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 205
	i32 3345895724, ; 512: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 251
	i32 3346324047, ; 513: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 248
	i32 3357674450, ; 514: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 309
	i32 3358260929, ; 515: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 516: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 198
	i32 3362522851, ; 517: Xamarin.AndroidX.Core => 0xc86c06e3 => 215
	i32 3366347497, ; 518: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 519: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 252
	i32 3381016424, ; 520: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 288
	i32 3395150330, ; 521: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 522: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 523: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 219
	i32 3428513518, ; 524: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 525: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 526: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 527: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 222
	i32 3445260447, ; 528: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 529: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 183
	i32 3463511458, ; 530: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 296
	i32 3471940407, ; 531: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 532: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 533: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 309
	i32 3484440000, ; 534: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 308
	i32 3485117614, ; 535: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 536: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 537: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 211
	i32 3494395880, ; 538: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 276
	i32 3509114376, ; 539: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 540: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 541: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 542: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 543: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 544: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 545: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 316
	i32 3597029428, ; 546: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 196
	i32 3598340787, ; 547: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 548: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 549: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 550: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 250
	i32 3633644679, ; 551: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 200
	i32 3638274909, ; 552: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 553: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 233
	i32 3643446276, ; 554: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 313
	i32 3643854240, ; 555: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 247
	i32 3645089577, ; 556: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 557: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 558: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 559: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3676670898, ; 560: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 319
	i32 3682565725, ; 561: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 206
	i32 3684561358, ; 562: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 211
	i32 3689375977, ; 563: System.Drawing.Common => 0xdbe768e9 => 191
	i32 3697841164, ; 564: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 318
	i32 3700866549, ; 565: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 566: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 216
	i32 3716563718, ; 567: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 568: Xamarin.AndroidX.Annotation => 0xdda814c6 => 199
	i32 3724971120, ; 569: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 246
	i32 3732100267, ; 570: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 571: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 572: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 573: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3764085317, ; 574: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 0xe05b6245 => 239
	i32 3786282454, ; 575: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 208
	i32 3792276235, ; 576: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 577: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 183
	i32 3802395368, ; 578: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 579: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 580: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 581: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 582: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 583: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 584: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 585: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 586: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 587: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 588: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 589: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 261
	i32 3888767677, ; 590: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 251
	i32 3889960447, ; 591: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 317
	i32 3896106733, ; 592: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 593: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 215
	i32 3901907137, ; 594: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 595: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 209
	i32 3920810846, ; 596: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 597: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 264
	i32 3928044579, ; 598: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 599: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 600: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 249
	i32 3945713374, ; 601: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 602: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 603: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 202
	i32 3959773229, ; 604: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 235
	i32 3967165417, ; 605: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 276
	i32 3970018735, ; 606: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 277
	i32 3980434154, ; 607: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 312
	i32 3987592930, ; 608: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 294
	i32 4003436829, ; 609: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 610: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 201
	i32 4019808855, ; 611: LocalNotificationv2.dll => 0xef996a57 => 0
	i32 4025784931, ; 612: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 613: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 185
	i32 4054681211, ; 614: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 615: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 616: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 617: Microsoft.Maui.Essentials.dll => 0xf40add04 => 187
	i32 4099507663, ; 618: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 619: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 620: Xamarin.AndroidX.Emoji2 => 0xf479582c => 223
	i32 4102112229, ; 621: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 307
	i32 4125707920, ; 622: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 302
	i32 4126470640, ; 623: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 624: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 625: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 626: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 627: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 314
	i32 4151237749, ; 628: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 629: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 630: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 631: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 632: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 633: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 243
	i32 4182880526, ; 634: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 320
	i32 4185676441, ; 635: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 636: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 637: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4228543782, ; 638: Xamarin.KotlinX.AtomicFU.Jvm.dll => 0xfc0a7526 => 281
	i32 4256097574, ; 639: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 216
	i32 4258378803, ; 640: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 242
	i32 4260525087, ; 641: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 642: Microsoft.Maui.Controls.dll => 0xfea12dee => 184
	i32 4274976490, ; 643: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 644: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 243
	i32 4294763496 ; 645: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 225
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [646 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 236, ; 3
	i32 273, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 281, ; 8
	i32 189, ; 9
	i32 30, ; 10
	i32 318, ; 11
	i32 124, ; 12
	i32 188, ; 13
	i32 102, ; 14
	i32 257, ; 15
	i32 107, ; 16
	i32 257, ; 17
	i32 139, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 208, ; 22
	i32 280, ; 23
	i32 132, ; 24
	i32 259, ; 25
	i32 151, ; 26
	i32 315, ; 27
	i32 316, ; 28
	i32 18, ; 29
	i32 206, ; 30
	i32 26, ; 31
	i32 229, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 212, ; 37
	i32 147, ; 38
	i32 232, ; 39
	i32 228, ; 40
	i32 287, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 315, ; 44
	i32 197, ; 45
	i32 83, ; 46
	i32 300, ; 47
	i32 230, ; 48
	i32 299, ; 49
	i32 131, ; 50
	i32 55, ; 51
	i32 149, ; 52
	i32 74, ; 53
	i32 145, ; 54
	i32 62, ; 55
	i32 146, ; 56
	i32 322, ; 57
	i32 165, ; 58
	i32 237, ; 59
	i32 311, ; 60
	i32 213, ; 61
	i32 12, ; 62
	i32 226, ; 63
	i32 125, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 228, ; 69
	i32 245, ; 70
	i32 84, ; 71
	i32 298, ; 72
	i32 292, ; 73
	i32 190, ; 74
	i32 182, ; 75
	i32 150, ; 76
	i32 60, ; 77
	i32 178, ; 78
	i32 51, ; 79
	i32 103, ; 80
	i32 114, ; 81
	i32 40, ; 82
	i32 270, ; 83
	i32 268, ; 84
	i32 120, ; 85
	i32 306, ; 86
	i32 52, ; 87
	i32 44, ; 88
	i32 119, ; 89
	i32 237, ; 90
	i32 218, ; 91
	i32 304, ; 92
	i32 224, ; 93
	i32 81, ; 94
	i32 136, ; 95
	i32 264, ; 96
	i32 204, ; 97
	i32 8, ; 98
	i32 280, ; 99
	i32 73, ; 100
	i32 286, ; 101
	i32 155, ; 102
	i32 282, ; 103
	i32 154, ; 104
	i32 92, ; 105
	i32 278, ; 106
	i32 45, ; 107
	i32 301, ; 108
	i32 289, ; 109
	i32 109, ; 110
	i32 129, ; 111
	i32 25, ; 112
	i32 194, ; 113
	i32 72, ; 114
	i32 55, ; 115
	i32 46, ; 116
	i32 310, ; 117
	i32 181, ; 118
	i32 219, ; 119
	i32 22, ; 120
	i32 234, ; 121
	i32 191, ; 122
	i32 86, ; 123
	i32 43, ; 124
	i32 160, ; 125
	i32 71, ; 126
	i32 250, ; 127
	i32 3, ; 128
	i32 192, ; 129
	i32 42, ; 130
	i32 63, ; 131
	i32 16, ; 132
	i32 53, ; 133
	i32 313, ; 134
	i32 273, ; 135
	i32 105, ; 136
	i32 271, ; 137
	i32 230, ; 138
	i32 34, ; 139
	i32 158, ; 140
	i32 85, ; 141
	i32 32, ; 142
	i32 12, ; 143
	i32 51, ; 144
	i32 56, ; 145
	i32 254, ; 146
	i32 36, ; 147
	i32 177, ; 148
	i32 288, ; 149
	i32 272, ; 150
	i32 202, ; 151
	i32 35, ; 152
	i32 58, ; 153
	i32 240, ; 154
	i32 173, ; 155
	i32 17, ; 156
	i32 279, ; 157
	i32 164, ; 158
	i32 301, ; 159
	i32 238, ; 160
	i32 180, ; 161
	i32 267, ; 162
	i32 307, ; 163
	i32 153, ; 164
	i32 263, ; 165
	i32 248, ; 166
	i32 305, ; 167
	i32 204, ; 168
	i32 29, ; 169
	i32 52, ; 170
	i32 303, ; 171
	i32 268, ; 172
	i32 209, ; 173
	i32 5, ; 174
	i32 287, ; 175
	i32 258, ; 176
	i32 283, ; 177
	i32 262, ; 178
	i32 210, ; 179
	i32 282, ; 180
	i32 201, ; 181
	i32 221, ; 182
	i32 85, ; 183
	i32 267, ; 184
	i32 61, ; 185
	i32 112, ; 186
	i32 57, ; 187
	i32 317, ; 188
	i32 254, ; 189
	i32 99, ; 190
	i32 19, ; 191
	i32 214, ; 192
	i32 111, ; 193
	i32 101, ; 194
	i32 102, ; 195
	i32 285, ; 196
	i32 104, ; 197
	i32 271, ; 198
	i32 231, ; 199
	i32 71, ; 200
	i32 241, ; 201
	i32 38, ; 202
	i32 32, ; 203
	i32 103, ; 204
	i32 73, ; 205
	i32 291, ; 206
	i32 9, ; 207
	i32 123, ; 208
	i32 46, ; 209
	i32 203, ; 210
	i32 182, ; 211
	i32 9, ; 212
	i32 43, ; 213
	i32 4, ; 214
	i32 255, ; 215
	i32 295, ; 216
	i32 290, ; 217
	i32 190, ; 218
	i32 31, ; 219
	i32 138, ; 220
	i32 92, ; 221
	i32 93, ; 222
	i32 310, ; 223
	i32 49, ; 224
	i32 141, ; 225
	i32 112, ; 226
	i32 140, ; 227
	i32 220, ; 228
	i32 115, ; 229
	i32 272, ; 230
	i32 157, ; 231
	i32 319, ; 232
	i32 76, ; 233
	i32 79, ; 234
	i32 244, ; 235
	i32 37, ; 236
	i32 266, ; 237
	i32 224, ; 238
	i32 217, ; 239
	i32 64, ; 240
	i32 138, ; 241
	i32 15, ; 242
	i32 192, ; 243
	i32 116, ; 244
	i32 260, ; 245
	i32 269, ; 246
	i32 212, ; 247
	i32 48, ; 248
	i32 70, ; 249
	i32 80, ; 250
	i32 126, ; 251
	i32 94, ; 252
	i32 121, ; 253
	i32 26, ; 254
	i32 234, ; 255
	i32 97, ; 256
	i32 28, ; 257
	i32 207, ; 258
	i32 308, ; 259
	i32 286, ; 260
	i32 149, ; 261
	i32 169, ; 262
	i32 4, ; 263
	i32 98, ; 264
	i32 33, ; 265
	i32 93, ; 266
	i32 259, ; 267
	i32 178, ; 268
	i32 21, ; 269
	i32 41, ; 270
	i32 170, ; 271
	i32 302, ; 272
	i32 226, ; 273
	i32 294, ; 274
	i32 244, ; 275
	i32 279, ; 276
	i32 269, ; 277
	i32 249, ; 278
	i32 2, ; 279
	i32 134, ; 280
	i32 111, ; 281
	i32 321, ; 282
	i32 179, ; 283
	i32 314, ; 284
	i32 194, ; 285
	i32 311, ; 286
	i32 58, ; 287
	i32 95, ; 288
	i32 293, ; 289
	i32 39, ; 290
	i32 205, ; 291
	i32 321, ; 292
	i32 25, ; 293
	i32 94, ; 294
	i32 89, ; 295
	i32 99, ; 296
	i32 275, ; 297
	i32 10, ; 298
	i32 87, ; 299
	i32 100, ; 300
	i32 256, ; 301
	i32 174, ; 302
	i32 196, ; 303
	i32 290, ; 304
	i32 7, ; 305
	i32 240, ; 306
	i32 285, ; 307
	i32 193, ; 308
	i32 88, ; 309
	i32 233, ; 310
	i32 154, ; 311
	i32 289, ; 312
	i32 33, ; 313
	i32 116, ; 314
	i32 82, ; 315
	i32 20, ; 316
	i32 274, ; 317
	i32 11, ; 318
	i32 162, ; 319
	i32 3, ; 320
	i32 186, ; 321
	i32 297, ; 322
	i32 181, ; 323
	i32 179, ; 324
	i32 84, ; 325
	i32 284, ; 326
	i32 64, ; 327
	i32 299, ; 328
	i32 263, ; 329
	i32 143, ; 330
	i32 245, ; 331
	i32 157, ; 332
	i32 41, ; 333
	i32 117, ; 334
	i32 175, ; 335
	i32 195, ; 336
	i32 293, ; 337
	i32 252, ; 338
	i32 131, ; 339
	i32 75, ; 340
	i32 66, ; 341
	i32 303, ; 342
	i32 172, ; 343
	i32 199, ; 344
	i32 143, ; 345
	i32 106, ; 346
	i32 151, ; 347
	i32 70, ; 348
	i32 156, ; 349
	i32 174, ; 350
	i32 121, ; 351
	i32 127, ; 352
	i32 298, ; 353
	i32 152, ; 354
	i32 223, ; 355
	i32 320, ; 356
	i32 141, ; 357
	i32 210, ; 358
	i32 295, ; 359
	i32 20, ; 360
	i32 14, ; 361
	i32 135, ; 362
	i32 75, ; 363
	i32 59, ; 364
	i32 213, ; 365
	i32 167, ; 366
	i32 168, ; 367
	i32 184, ; 368
	i32 15, ; 369
	i32 74, ; 370
	i32 6, ; 371
	i32 23, ; 372
	i32 236, ; 373
	i32 193, ; 374
	i32 91, ; 375
	i32 296, ; 376
	i32 1, ; 377
	i32 136, ; 378
	i32 239, ; 379
	i32 238, ; 380
	i32 262, ; 381
	i32 134, ; 382
	i32 69, ; 383
	i32 146, ; 384
	i32 305, ; 385
	i32 284, ; 386
	i32 227, ; 387
	i32 180, ; 388
	i32 88, ; 389
	i32 96, ; 390
	i32 217, ; 391
	i32 222, ; 392
	i32 300, ; 393
	i32 31, ; 394
	i32 45, ; 395
	i32 232, ; 396
	i32 0, ; 397
	i32 195, ; 398
	i32 109, ; 399
	i32 158, ; 400
	i32 35, ; 401
	i32 283, ; 402
	i32 22, ; 403
	i32 114, ; 404
	i32 57, ; 405
	i32 260, ; 406
	i32 144, ; 407
	i32 118, ; 408
	i32 120, ; 409
	i32 110, ; 410
	i32 197, ; 411
	i32 139, ; 412
	i32 203, ; 413
	i32 54, ; 414
	i32 105, ; 415
	i32 306, ; 416
	i32 185, ; 417
	i32 186, ; 418
	i32 133, ; 419
	i32 241, ; 420
	i32 278, ; 421
	i32 265, ; 422
	i32 253, ; 423
	i32 231, ; 424
	i32 312, ; 425
	i32 227, ; 426
	i32 189, ; 427
	i32 188, ; 428
	i32 159, ; 429
	i32 291, ; 430
	i32 214, ; 431
	i32 163, ; 432
	i32 132, ; 433
	i32 253, ; 434
	i32 161, ; 435
	i32 304, ; 436
	i32 242, ; 437
	i32 274, ; 438
	i32 140, ; 439
	i32 265, ; 440
	i32 261, ; 441
	i32 169, ; 442
	i32 187, ; 443
	i32 198, ; 444
	i32 270, ; 445
	i32 40, ; 446
	i32 225, ; 447
	i32 81, ; 448
	i32 56, ; 449
	i32 37, ; 450
	i32 97, ; 451
	i32 166, ; 452
	i32 172, ; 453
	i32 266, ; 454
	i32 82, ; 455
	i32 200, ; 456
	i32 98, ; 457
	i32 30, ; 458
	i32 159, ; 459
	i32 18, ; 460
	i32 127, ; 461
	i32 119, ; 462
	i32 221, ; 463
	i32 256, ; 464
	i32 235, ; 465
	i32 258, ; 466
	i32 165, ; 467
	i32 229, ; 468
	i32 322, ; 469
	i32 255, ; 470
	i32 246, ; 471
	i32 277, ; 472
	i32 170, ; 473
	i32 16, ; 474
	i32 144, ; 475
	i32 297, ; 476
	i32 125, ; 477
	i32 118, ; 478
	i32 38, ; 479
	i32 115, ; 480
	i32 47, ; 481
	i32 142, ; 482
	i32 117, ; 483
	i32 34, ; 484
	i32 173, ; 485
	i32 95, ; 486
	i32 53, ; 487
	i32 247, ; 488
	i32 129, ; 489
	i32 153, ; 490
	i32 24, ; 491
	i32 161, ; 492
	i32 220, ; 493
	i32 148, ; 494
	i32 104, ; 495
	i32 275, ; 496
	i32 89, ; 497
	i32 207, ; 498
	i32 60, ; 499
	i32 142, ; 500
	i32 100, ; 501
	i32 5, ; 502
	i32 13, ; 503
	i32 122, ; 504
	i32 135, ; 505
	i32 28, ; 506
	i32 292, ; 507
	i32 72, ; 508
	i32 218, ; 509
	i32 24, ; 510
	i32 205, ; 511
	i32 251, ; 512
	i32 248, ; 513
	i32 309, ; 514
	i32 137, ; 515
	i32 198, ; 516
	i32 215, ; 517
	i32 168, ; 518
	i32 252, ; 519
	i32 288, ; 520
	i32 101, ; 521
	i32 123, ; 522
	i32 219, ; 523
	i32 176, ; 524
	i32 163, ; 525
	i32 167, ; 526
	i32 222, ; 527
	i32 39, ; 528
	i32 183, ; 529
	i32 296, ; 530
	i32 17, ; 531
	i32 171, ; 532
	i32 309, ; 533
	i32 308, ; 534
	i32 137, ; 535
	i32 150, ; 536
	i32 211, ; 537
	i32 276, ; 538
	i32 155, ; 539
	i32 130, ; 540
	i32 19, ; 541
	i32 65, ; 542
	i32 147, ; 543
	i32 47, ; 544
	i32 316, ; 545
	i32 196, ; 546
	i32 79, ; 547
	i32 61, ; 548
	i32 106, ; 549
	i32 250, ; 550
	i32 200, ; 551
	i32 49, ; 552
	i32 233, ; 553
	i32 313, ; 554
	i32 247, ; 555
	i32 14, ; 556
	i32 175, ; 557
	i32 68, ; 558
	i32 171, ; 559
	i32 319, ; 560
	i32 206, ; 561
	i32 211, ; 562
	i32 191, ; 563
	i32 318, ; 564
	i32 78, ; 565
	i32 216, ; 566
	i32 108, ; 567
	i32 199, ; 568
	i32 246, ; 569
	i32 67, ; 570
	i32 63, ; 571
	i32 27, ; 572
	i32 160, ; 573
	i32 239, ; 574
	i32 208, ; 575
	i32 10, ; 576
	i32 183, ; 577
	i32 11, ; 578
	i32 78, ; 579
	i32 126, ; 580
	i32 83, ; 581
	i32 177, ; 582
	i32 66, ; 583
	i32 107, ; 584
	i32 65, ; 585
	i32 128, ; 586
	i32 122, ; 587
	i32 77, ; 588
	i32 261, ; 589
	i32 251, ; 590
	i32 317, ; 591
	i32 8, ; 592
	i32 215, ; 593
	i32 2, ; 594
	i32 209, ; 595
	i32 44, ; 596
	i32 264, ; 597
	i32 156, ; 598
	i32 128, ; 599
	i32 249, ; 600
	i32 23, ; 601
	i32 133, ; 602
	i32 202, ; 603
	i32 235, ; 604
	i32 276, ; 605
	i32 277, ; 606
	i32 312, ; 607
	i32 294, ; 608
	i32 29, ; 609
	i32 201, ; 610
	i32 0, ; 611
	i32 62, ; 612
	i32 185, ; 613
	i32 90, ; 614
	i32 87, ; 615
	i32 148, ; 616
	i32 187, ; 617
	i32 36, ; 618
	i32 86, ; 619
	i32 223, ; 620
	i32 307, ; 621
	i32 302, ; 622
	i32 176, ; 623
	i32 50, ; 624
	i32 6, ; 625
	i32 90, ; 626
	i32 314, ; 627
	i32 21, ; 628
	i32 162, ; 629
	i32 96, ; 630
	i32 50, ; 631
	i32 113, ; 632
	i32 243, ; 633
	i32 320, ; 634
	i32 130, ; 635
	i32 76, ; 636
	i32 27, ; 637
	i32 281, ; 638
	i32 216, ; 639
	i32 242, ; 640
	i32 7, ; 641
	i32 184, ; 642
	i32 110, ; 643
	i32 243, ; 644
	i32 225 ; 645
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
