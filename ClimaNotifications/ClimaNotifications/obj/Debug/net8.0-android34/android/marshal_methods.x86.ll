; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [327 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [648 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 237
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 274
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 190
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 45981941, ; 9: Xamarin.KotlinX.AtomicFU.Jvm => 0x2bda0f5 => 282
	i32 65960268, ; 10: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 189
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 319
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 188
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 16: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 258
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 258
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 209
	i32 166070894, ; 24: Xamarin.KotlinX.AtomicFU.dll => 0x9e60a6e => 281
	i32 176265551, ; 25: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 26: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 260
	i32 184328833, ; 27: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 28: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 316
	i32 199333315, ; 29: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 317
	i32 205061960, ; 30: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 31: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 207
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 230
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 37: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 38: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 213
	i32 276479776, ; 39: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 233
	i32 280482487, ; 41: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 229
	i32 280992041, ; 42: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 288
	i32 291076382, ; 43: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 44: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 45: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 316
	i32 318968648, ; 46: Xamarin.AndroidX.Activity.dll => 0x13031348 => 198
	i32 321597661, ; 47: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 48: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 301
	i32 342366114, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 231
	i32 356389973, ; 50: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 300
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 323
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 425531652, ; 60: Xamarin.AndroidX.Lifecycle.Runtime.Android => 0x195d1904 => 238
	i32 435591531, ; 61: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 312
	i32 441335492, ; 62: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 214
	i32 442565967, ; 63: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 64: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 227
	i32 451504562, ; 65: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 66: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 67: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 68: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 69: System.dll => 0x1bff388e => 164
	i32 476646585, ; 70: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 229
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 246
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 73: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 299
	i32 503918385, ; 74: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 293
	i32 504143952, ; 75: Plugin.LocalNotification.dll => 0x1e0ca050 => 191
	i32 513247710, ; 76: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 182
	i32 526420162, ; 77: System.Transactions.dll => 0x1f6088c2 => 150
	i32 530272170, ; 78: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 79: Microsoft.Extensions.Logging => 0x20216150 => 178
	i32 540030774, ; 80: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 81: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 82: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 83: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 84: Jsr305Binding => 0x213954e7 => 271
	i32 569601784, ; 85: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 269
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 87: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 307
	i32 601371474, ; 88: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 89: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 90: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 621990341, ; 91: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 0x2512d1c5 => 238
	i32 627609679, ; 92: Xamarin.AndroidX.CustomView => 0x2568904f => 219
	i32 627931235, ; 93: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 305
	i32 639843206, ; 94: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 225
	i32 643868501, ; 95: System.Net => 0x2660a755 => 81
	i32 662205335, ; 96: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 97: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 265
	i32 666292255, ; 98: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 205
	i32 672442732, ; 99: System.Collections.Concurrent => 0x2814a96c => 8
	i32 679221896, ; 100: Xamarin.KotlinX.AtomicFU => 0x287c1a88 => 281
	i32 683518922, ; 101: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 102: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 287
	i32 690569205, ; 103: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 104: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 283
	i32 693804605, ; 105: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 106: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 107: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 279
	i32 700358131, ; 108: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 109: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 302
	i32 709557578, ; 110: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 290
	i32 722857257, ; 111: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 112: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 113: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 114: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 195
	i32 759454413, ; 115: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 116: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 117: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 118: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 311
	i32 789151979, ; 119: Microsoft.Extensions.Options => 0x2f0980eb => 181
	i32 790371945, ; 120: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 220
	i32 804715423, ; 121: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 122: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 235
	i32 809851609, ; 123: System.Drawing.Common.dll => 0x30455ad9 => 192
	i32 823281589, ; 124: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 125: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 126: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 127: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 128: Xamarin.AndroidX.Print => 0x3246f6cd => 251
	i32 873119928, ; 129: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 873207192, ; 130: System.Private.Windows.Core => 0x340c1598 => 193
	i32 877678880, ; 131: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 132: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 133: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 134: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 135: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 314
	i32 928116545, ; 136: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 274
	i32 952186615, ; 137: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 138: Newtonsoft.Json => 0x38f24a24 => 190
	i32 966729478, ; 139: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 272
	i32 967690846, ; 140: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 231
	i32 975236339, ; 141: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 142: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 143: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 144: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 145: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 146: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 147: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 148: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 255
	i32 1019214401, ; 149: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 150: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1029334545, ; 151: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 289
	i32 1031528504, ; 152: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 273
	i32 1035644815, ; 153: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 203
	i32 1036536393, ; 154: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 155: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 156: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 241
	i32 1067306892, ; 157: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 158: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 159: Xamarin.Kotlin.StdLib => 0x409e66d8 => 280
	i32 1098259244, ; 160: System => 0x41761b2c => 164
	i32 1118262833, ; 161: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 302
	i32 1121599056, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 239
	i32 1127624469, ; 163: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 180
	i32 1149092582, ; 164: Xamarin.AndroidX.Window => 0x447dc2e6 => 268
	i32 1168523401, ; 165: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 308
	i32 1170634674, ; 166: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 167: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 264
	i32 1178241025, ; 168: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 249
	i32 1203215381, ; 169: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 306
	i32 1204270330, ; 170: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 205
	i32 1208641965, ; 171: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 172: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 173: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 304
	i32 1243150071, ; 174: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 269
	i32 1246548578, ; 175: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 210
	i32 1253011324, ; 176: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 177: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 288
	i32 1264511973, ; 178: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 259
	i32 1264890200, ; 179: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 284
	i32 1267360935, ; 180: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 263
	i32 1273260888, ; 181: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 211
	i32 1275534314, ; 182: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 283
	i32 1278448581, ; 183: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 202
	i32 1293217323, ; 184: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 222
	i32 1309188875, ; 185: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 186: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 268
	i32 1324164729, ; 187: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 188: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 189: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 190: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 318
	i32 1376866003, ; 191: Xamarin.AndroidX.SavedState => 0x52114ed3 => 255
	i32 1379779777, ; 192: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 193: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 194: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 215
	i32 1408764838, ; 195: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 196: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 197: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 198: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 286
	i32 1434145427, ; 199: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 200: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 272
	i32 1437299793, ; 201: Xamarin.AndroidX.Lifecycle.Common.Jvm => 0x55ab7451 => 232
	i32 1439761251, ; 202: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1441095154, ; 203: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 0x55e55df2 => 242
	i32 1452070440, ; 204: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 205: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 206: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 207: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 208: es\Microsoft.Maui.Controls.resources => 0x57152abe => 292
	i32 1461234159, ; 209: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 210: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 211: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 212: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 204
	i32 1470490898, ; 213: Microsoft.Extensions.Primitives => 0x57a5e912 => 182
	i32 1479771757, ; 214: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 215: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 216: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 217: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 256
	i32 1493001747, ; 218: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 296
	i32 1514721132, ; 219: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 291
	i32 1524747670, ; 220: Plugin.LocalNotification => 0x5ae1cd96 => 191
	i32 1536373174, ; 221: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 222: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 223: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 224: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 225: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 311
	i32 1565862583, ; 226: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 227: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 228: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 229: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 230: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 221
	i32 1592978981, ; 231: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 232: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 273
	i32 1601112923, ; 233: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1603525486, ; 234: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 320
	i32 1604827217, ; 235: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 236: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 237: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 245
	i32 1622358360, ; 238: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 239: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 267
	i32 1635184631, ; 240: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 225
	i32 1636350590, ; 241: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 218
	i32 1639515021, ; 242: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 243: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 244: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654293721, ; 245: System.Private.Windows.Core.dll => 0x629a84d9 => 193
	i32 1657153582, ; 246: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 247: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 261
	i32 1658251792, ; 248: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 270
	i32 1670060433, ; 249: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 213
	i32 1675553242, ; 250: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 251: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 252: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 253: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 254: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 255: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1701541528, ; 256: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 257: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 235
	i32 1726116996, ; 258: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 259: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 260: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 208
	i32 1736233607, ; 261: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 309
	i32 1743415430, ; 262: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 287
	i32 1744735666, ; 263: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 264: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 265: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 266: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 267: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 268: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 269: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 260
	i32 1770582343, ; 270: Microsoft.Extensions.Logging.dll => 0x6988f147 => 178
	i32 1776026572, ; 271: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 272: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 273: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 274: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 303
	i32 1788241197, ; 275: Xamarin.AndroidX.Fragment => 0x6a96652d => 227
	i32 1793755602, ; 276: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 295
	i32 1808609942, ; 277: Xamarin.AndroidX.Loader => 0x6bcd3296 => 245
	i32 1813058853, ; 278: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 280
	i32 1813201214, ; 279: Xamarin.Google.Android.Material => 0x6c13413e => 270
	i32 1818569960, ; 280: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 250
	i32 1818787751, ; 281: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 282: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 283: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1827303595, ; 284: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 322
	i32 1828688058, ; 285: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 179
	i32 1842015223, ; 286: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 315
	i32 1847515442, ; 287: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 195
	i32 1853025655, ; 288: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 312
	i32 1858542181, ; 289: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 290: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 291: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 294
	i32 1879696579, ; 292: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 293: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 206
	i32 1885918049, ; 294: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 322
	i32 1888955245, ; 295: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 296: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 297: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 298: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1908813208, ; 299: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 276
	i32 1910275211, ; 300: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 301: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 302: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 303: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 257
	i32 1968388702, ; 304: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1985761444, ; 305: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 197
	i32 2003115576, ; 306: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 291
	i32 2011961780, ; 307: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 308: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 241
	i32 2025202353, ; 309: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 286
	i32 2031763787, ; 310: Xamarin.Android.Glide => 0x791a414b => 194
	i32 2045470958, ; 311: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 312: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 234
	i32 2060060697, ; 313: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 314: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 290
	i32 2070888862, ; 315: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2071670770, ; 316: ClimaNotifications => 0x7b7b2ff2 => 0
	i32 2079903147, ; 317: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 318: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 319: System.Console => 0x7ec9ffe9 => 20
	i32 2129483829, ; 320: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 275
	i32 2142473426, ; 321: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 322: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 323: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 324: Microsoft.Maui => 0x80bd55ad => 186
	i32 2169148018, ; 325: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 298
	i32 2181898931, ; 326: Microsoft.Extensions.Options.dll => 0x820d22b3 => 181
	i32 2192057212, ; 327: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 179
	i32 2193016926, ; 328: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 329: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 285
	i32 2201231467, ; 330: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 331: it\Microsoft.Maui.Controls.resources => 0x839595db => 300
	i32 2217644978, ; 332: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 264
	i32 2222056684, ; 333: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 334: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 246
	i32 2252106437, ; 335: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 336: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 337: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 338: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 339: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 196
	i32 2270573516, ; 340: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 294
	i32 2279755925, ; 341: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 253
	i32 2293034957, ; 342: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 343: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 344: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 345: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 304
	i32 2305521784, ; 346: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 347: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 200
	i32 2320631194, ; 348: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 349: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 350: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 351: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 352: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 353: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 354: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 355: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 356: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 299
	i32 2401565422, ; 357: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 358: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 224
	i32 2409983638, ; 359: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 321
	i32 2421380589, ; 360: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 361: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 211
	i32 2427813419, ; 362: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 296
	i32 2435356389, ; 363: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 364: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 365: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 366: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 367: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 368: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 214
	i32 2471841756, ; 369: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 370: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 371: Microsoft.Maui.Controls => 0x93dba8a1 => 184
	i32 2483903535, ; 372: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 373: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 374: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 375: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 376: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 237
	i32 2522472828, ; 377: Xamarin.Android.Glide.dll => 0x9659e17c => 194
	i32 2538310050, ; 378: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 379: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 297
	i32 2562349572, ; 380: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 381: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2577256205, ; 382: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 0x999dcf0d => 240
	i32 2581783588, ; 383: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 239
	i32 2581819634, ; 384: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 263
	i32 2585220780, ; 385: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 386: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 387: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 388: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 306
	i32 2605712449, ; 389: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 285
	i32 2615233544, ; 390: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 228
	i32 2616218305, ; 391: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 180
	i32 2617129537, ; 392: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 393: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 394: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 218
	i32 2624644809, ; 395: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 223
	i32 2626831493, ; 396: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 301
	i32 2627185994, ; 397: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 398: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 399: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 233
	i32 2663391936, ; 400: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 196
	i32 2663698177, ; 401: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 402: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 403: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2671474046, ; 404: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 284
	i32 2676780864, ; 405: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 406: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 407: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 408: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 261
	i32 2715334215, ; 409: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 410: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 411: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 412: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 413: Xamarin.AndroidX.Activity => 0xa2e0939b => 198
	i32 2735172069, ; 414: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 415: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 204
	i32 2740948882, ; 416: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 417: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 418: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 307
	i32 2758225723, ; 419: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 185
	i32 2764765095, ; 420: Microsoft.Maui.dll => 0xa4caf7a7 => 186
	i32 2765824710, ; 421: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2766642685, ; 422: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 0xa4e79dfd => 242
	i32 2770495804, ; 423: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 279
	i32 2778768386, ; 424: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 266
	i32 2779977773, ; 425: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 254
	i32 2780199943, ; 426: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 0xa5b67c07 => 232
	i32 2785988530, ; 427: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 313
	i32 2788224221, ; 428: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 228
	i32 2795666278, ; 429: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 189
	i32 2801831435, ; 430: Microsoft.Maui.Graphics => 0xa7008e0b => 188
	i32 2803228030, ; 431: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 432: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 292
	i32 2810250172, ; 433: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 215
	i32 2819470561, ; 434: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 435: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 436: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 254
	i32 2824502124, ; 437: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 438: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 305
	i32 2838993487, ; 439: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 243
	i32 2847418871, ; 440: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 275
	i32 2849599387, ; 441: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 442: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 266
	i32 2855708567, ; 443: Xamarin.AndroidX.Transition => 0xaa36a797 => 262
	i32 2861098320, ; 444: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 445: Microsoft.Maui.Essentials => 0xaa8a4878 => 187
	i32 2870099610, ; 446: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 199
	i32 2875164099, ; 447: Jsr305Binding.dll => 0xab5f85c3 => 271
	i32 2875220617, ; 448: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 449: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 226
	i32 2887636118, ; 450: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 451: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 452: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 453: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 454: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 455: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 456: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 267
	i32 2919462931, ; 457: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 458: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 201
	i32 2936416060, ; 459: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 460: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 461: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 462: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 463: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 464: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 465: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 222
	i32 2987532451, ; 466: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 257
	i32 2996846495, ; 467: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 236
	i32 3016983068, ; 468: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 259
	i32 3023353419, ; 469: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 470: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 230
	i32 3038032645, ; 471: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 323
	i32 3056245963, ; 472: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 256
	i32 3057625584, ; 473: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 247
	i32 3058099980, ; 474: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 278
	i32 3059408633, ; 475: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 476: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 477: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 478: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 298
	i32 3090735792, ; 479: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 480: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 481: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 482: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 483: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 484: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 485: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 486: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 487: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 488: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 489: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 490: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 248
	i32 3192346100, ; 491: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 492: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 493: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 494: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 495: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 221
	i32 3220365878, ; 496: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 497: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3230466174, ; 498: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 276
	i32 3251039220, ; 499: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 500: Xamarin.AndroidX.CardView => 0xc235e84d => 208
	i32 3265493905, ; 501: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 502: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 503: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 504: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 505: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 506: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 507: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 508: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 509: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 293
	i32 3316684772, ; 510: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 511: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 219
	i32 3317144872, ; 512: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 513: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 206
	i32 3345895724, ; 514: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 252
	i32 3346324047, ; 515: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 249
	i32 3357674450, ; 516: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 310
	i32 3358260929, ; 517: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 518: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 199
	i32 3362522851, ; 519: Xamarin.AndroidX.Core => 0xc86c06e3 => 216
	i32 3366347497, ; 520: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 521: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 253
	i32 3381016424, ; 522: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 289
	i32 3395150330, ; 523: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 524: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 525: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 220
	i32 3428513518, ; 526: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 527: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 528: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 529: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 223
	i32 3445260447, ; 530: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 531: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 183
	i32 3463511458, ; 532: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 297
	i32 3471940407, ; 533: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 534: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 535: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 310
	i32 3484440000, ; 536: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 309
	i32 3485117614, ; 537: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 538: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 539: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 212
	i32 3494395880, ; 540: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 277
	i32 3509114376, ; 541: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 542: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 543: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 544: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 545: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 546: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 547: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 317
	i32 3597029428, ; 548: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 197
	i32 3598340787, ; 549: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 550: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 551: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 552: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 251
	i32 3633644679, ; 553: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 201
	i32 3638274909, ; 554: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 555: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 234
	i32 3643446276, ; 556: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 314
	i32 3643854240, ; 557: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 248
	i32 3645089577, ; 558: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 559: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 560: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 561: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3676670898, ; 562: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 320
	i32 3682565725, ; 563: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 207
	i32 3684561358, ; 564: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 212
	i32 3689375977, ; 565: System.Drawing.Common => 0xdbe768e9 => 192
	i32 3697841164, ; 566: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 319
	i32 3700866549, ; 567: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 568: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 217
	i32 3716563718, ; 569: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 570: Xamarin.AndroidX.Annotation => 0xdda814c6 => 200
	i32 3724971120, ; 571: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 247
	i32 3732100267, ; 572: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 573: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 574: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 575: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3764085317, ; 576: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 0xe05b6245 => 240
	i32 3764990596, ; 577: ClimaNotifications.dll => 0xe0693284 => 0
	i32 3786282454, ; 578: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 209
	i32 3792276235, ; 579: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 580: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 183
	i32 3802395368, ; 581: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 582: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 583: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 584: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 585: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 586: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 587: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 588: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 589: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 590: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 591: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 592: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 262
	i32 3888767677, ; 593: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 252
	i32 3889960447, ; 594: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 318
	i32 3896106733, ; 595: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 596: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 216
	i32 3901907137, ; 597: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 598: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 210
	i32 3920810846, ; 599: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 600: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 265
	i32 3928044579, ; 601: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 602: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 603: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 250
	i32 3945713374, ; 604: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 605: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 606: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 203
	i32 3959773229, ; 607: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 236
	i32 3967165417, ; 608: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 277
	i32 3970018735, ; 609: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 278
	i32 3980434154, ; 610: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 313
	i32 3987592930, ; 611: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 295
	i32 4003436829, ; 612: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 613: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 202
	i32 4025784931, ; 614: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 615: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 185
	i32 4054681211, ; 616: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 617: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 618: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 619: Microsoft.Maui.Essentials.dll => 0xf40add04 => 187
	i32 4099507663, ; 620: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 621: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 622: Xamarin.AndroidX.Emoji2 => 0xf479582c => 224
	i32 4102112229, ; 623: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 308
	i32 4125707920, ; 624: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 303
	i32 4126470640, ; 625: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 626: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 627: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 628: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 629: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 315
	i32 4151237749, ; 630: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 631: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 632: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 633: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 634: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 635: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 244
	i32 4182880526, ; 636: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 321
	i32 4185676441, ; 637: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 638: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 639: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4228543782, ; 640: Xamarin.KotlinX.AtomicFU.Jvm.dll => 0xfc0a7526 => 282
	i32 4256097574, ; 641: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 217
	i32 4258378803, ; 642: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 243
	i32 4260525087, ; 643: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 644: Microsoft.Maui.Controls.dll => 0xfea12dee => 184
	i32 4274976490, ; 645: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 646: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 244
	i32 4294763496 ; 647: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 226
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [648 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 237, ; 3
	i32 274, ; 4
	i32 48, ; 5
	i32 190, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 282, ; 9
	i32 189, ; 10
	i32 30, ; 11
	i32 319, ; 12
	i32 124, ; 13
	i32 188, ; 14
	i32 102, ; 15
	i32 258, ; 16
	i32 107, ; 17
	i32 258, ; 18
	i32 139, ; 19
	i32 77, ; 20
	i32 124, ; 21
	i32 13, ; 22
	i32 209, ; 23
	i32 281, ; 24
	i32 132, ; 25
	i32 260, ; 26
	i32 151, ; 27
	i32 316, ; 28
	i32 317, ; 29
	i32 18, ; 30
	i32 207, ; 31
	i32 26, ; 32
	i32 230, ; 33
	i32 1, ; 34
	i32 59, ; 35
	i32 42, ; 36
	i32 91, ; 37
	i32 213, ; 38
	i32 147, ; 39
	i32 233, ; 40
	i32 229, ; 41
	i32 288, ; 42
	i32 54, ; 43
	i32 69, ; 44
	i32 316, ; 45
	i32 198, ; 46
	i32 83, ; 47
	i32 301, ; 48
	i32 231, ; 49
	i32 300, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 323, ; 58
	i32 165, ; 59
	i32 238, ; 60
	i32 312, ; 61
	i32 214, ; 62
	i32 12, ; 63
	i32 227, ; 64
	i32 125, ; 65
	i32 152, ; 66
	i32 113, ; 67
	i32 166, ; 68
	i32 164, ; 69
	i32 229, ; 70
	i32 246, ; 71
	i32 84, ; 72
	i32 299, ; 73
	i32 293, ; 74
	i32 191, ; 75
	i32 182, ; 76
	i32 150, ; 77
	i32 60, ; 78
	i32 178, ; 79
	i32 51, ; 80
	i32 103, ; 81
	i32 114, ; 82
	i32 40, ; 83
	i32 271, ; 84
	i32 269, ; 85
	i32 120, ; 86
	i32 307, ; 87
	i32 52, ; 88
	i32 44, ; 89
	i32 119, ; 90
	i32 238, ; 91
	i32 219, ; 92
	i32 305, ; 93
	i32 225, ; 94
	i32 81, ; 95
	i32 136, ; 96
	i32 265, ; 97
	i32 205, ; 98
	i32 8, ; 99
	i32 281, ; 100
	i32 73, ; 101
	i32 287, ; 102
	i32 155, ; 103
	i32 283, ; 104
	i32 154, ; 105
	i32 92, ; 106
	i32 279, ; 107
	i32 45, ; 108
	i32 302, ; 109
	i32 290, ; 110
	i32 109, ; 111
	i32 129, ; 112
	i32 25, ; 113
	i32 195, ; 114
	i32 72, ; 115
	i32 55, ; 116
	i32 46, ; 117
	i32 311, ; 118
	i32 181, ; 119
	i32 220, ; 120
	i32 22, ; 121
	i32 235, ; 122
	i32 192, ; 123
	i32 86, ; 124
	i32 43, ; 125
	i32 160, ; 126
	i32 71, ; 127
	i32 251, ; 128
	i32 3, ; 129
	i32 193, ; 130
	i32 42, ; 131
	i32 63, ; 132
	i32 16, ; 133
	i32 53, ; 134
	i32 314, ; 135
	i32 274, ; 136
	i32 105, ; 137
	i32 190, ; 138
	i32 272, ; 139
	i32 231, ; 140
	i32 34, ; 141
	i32 158, ; 142
	i32 85, ; 143
	i32 32, ; 144
	i32 12, ; 145
	i32 51, ; 146
	i32 56, ; 147
	i32 255, ; 148
	i32 36, ; 149
	i32 177, ; 150
	i32 289, ; 151
	i32 273, ; 152
	i32 203, ; 153
	i32 35, ; 154
	i32 58, ; 155
	i32 241, ; 156
	i32 173, ; 157
	i32 17, ; 158
	i32 280, ; 159
	i32 164, ; 160
	i32 302, ; 161
	i32 239, ; 162
	i32 180, ; 163
	i32 268, ; 164
	i32 308, ; 165
	i32 153, ; 166
	i32 264, ; 167
	i32 249, ; 168
	i32 306, ; 169
	i32 205, ; 170
	i32 29, ; 171
	i32 52, ; 172
	i32 304, ; 173
	i32 269, ; 174
	i32 210, ; 175
	i32 5, ; 176
	i32 288, ; 177
	i32 259, ; 178
	i32 284, ; 179
	i32 263, ; 180
	i32 211, ; 181
	i32 283, ; 182
	i32 202, ; 183
	i32 222, ; 184
	i32 85, ; 185
	i32 268, ; 186
	i32 61, ; 187
	i32 112, ; 188
	i32 57, ; 189
	i32 318, ; 190
	i32 255, ; 191
	i32 99, ; 192
	i32 19, ; 193
	i32 215, ; 194
	i32 111, ; 195
	i32 101, ; 196
	i32 102, ; 197
	i32 286, ; 198
	i32 104, ; 199
	i32 272, ; 200
	i32 232, ; 201
	i32 71, ; 202
	i32 242, ; 203
	i32 38, ; 204
	i32 32, ; 205
	i32 103, ; 206
	i32 73, ; 207
	i32 292, ; 208
	i32 9, ; 209
	i32 123, ; 210
	i32 46, ; 211
	i32 204, ; 212
	i32 182, ; 213
	i32 9, ; 214
	i32 43, ; 215
	i32 4, ; 216
	i32 256, ; 217
	i32 296, ; 218
	i32 291, ; 219
	i32 191, ; 220
	i32 31, ; 221
	i32 138, ; 222
	i32 92, ; 223
	i32 93, ; 224
	i32 311, ; 225
	i32 49, ; 226
	i32 141, ; 227
	i32 112, ; 228
	i32 140, ; 229
	i32 221, ; 230
	i32 115, ; 231
	i32 273, ; 232
	i32 157, ; 233
	i32 320, ; 234
	i32 76, ; 235
	i32 79, ; 236
	i32 245, ; 237
	i32 37, ; 238
	i32 267, ; 239
	i32 225, ; 240
	i32 218, ; 241
	i32 64, ; 242
	i32 138, ; 243
	i32 15, ; 244
	i32 193, ; 245
	i32 116, ; 246
	i32 261, ; 247
	i32 270, ; 248
	i32 213, ; 249
	i32 48, ; 250
	i32 70, ; 251
	i32 80, ; 252
	i32 126, ; 253
	i32 94, ; 254
	i32 121, ; 255
	i32 26, ; 256
	i32 235, ; 257
	i32 97, ; 258
	i32 28, ; 259
	i32 208, ; 260
	i32 309, ; 261
	i32 287, ; 262
	i32 149, ; 263
	i32 169, ; 264
	i32 4, ; 265
	i32 98, ; 266
	i32 33, ; 267
	i32 93, ; 268
	i32 260, ; 269
	i32 178, ; 270
	i32 21, ; 271
	i32 41, ; 272
	i32 170, ; 273
	i32 303, ; 274
	i32 227, ; 275
	i32 295, ; 276
	i32 245, ; 277
	i32 280, ; 278
	i32 270, ; 279
	i32 250, ; 280
	i32 2, ; 281
	i32 134, ; 282
	i32 111, ; 283
	i32 322, ; 284
	i32 179, ; 285
	i32 315, ; 286
	i32 195, ; 287
	i32 312, ; 288
	i32 58, ; 289
	i32 95, ; 290
	i32 294, ; 291
	i32 39, ; 292
	i32 206, ; 293
	i32 322, ; 294
	i32 25, ; 295
	i32 94, ; 296
	i32 89, ; 297
	i32 99, ; 298
	i32 276, ; 299
	i32 10, ; 300
	i32 87, ; 301
	i32 100, ; 302
	i32 257, ; 303
	i32 174, ; 304
	i32 197, ; 305
	i32 291, ; 306
	i32 7, ; 307
	i32 241, ; 308
	i32 286, ; 309
	i32 194, ; 310
	i32 88, ; 311
	i32 234, ; 312
	i32 154, ; 313
	i32 290, ; 314
	i32 33, ; 315
	i32 0, ; 316
	i32 116, ; 317
	i32 82, ; 318
	i32 20, ; 319
	i32 275, ; 320
	i32 11, ; 321
	i32 162, ; 322
	i32 3, ; 323
	i32 186, ; 324
	i32 298, ; 325
	i32 181, ; 326
	i32 179, ; 327
	i32 84, ; 328
	i32 285, ; 329
	i32 64, ; 330
	i32 300, ; 331
	i32 264, ; 332
	i32 143, ; 333
	i32 246, ; 334
	i32 157, ; 335
	i32 41, ; 336
	i32 117, ; 337
	i32 175, ; 338
	i32 196, ; 339
	i32 294, ; 340
	i32 253, ; 341
	i32 131, ; 342
	i32 75, ; 343
	i32 66, ; 344
	i32 304, ; 345
	i32 172, ; 346
	i32 200, ; 347
	i32 143, ; 348
	i32 106, ; 349
	i32 151, ; 350
	i32 70, ; 351
	i32 156, ; 352
	i32 174, ; 353
	i32 121, ; 354
	i32 127, ; 355
	i32 299, ; 356
	i32 152, ; 357
	i32 224, ; 358
	i32 321, ; 359
	i32 141, ; 360
	i32 211, ; 361
	i32 296, ; 362
	i32 20, ; 363
	i32 14, ; 364
	i32 135, ; 365
	i32 75, ; 366
	i32 59, ; 367
	i32 214, ; 368
	i32 167, ; 369
	i32 168, ; 370
	i32 184, ; 371
	i32 15, ; 372
	i32 74, ; 373
	i32 6, ; 374
	i32 23, ; 375
	i32 237, ; 376
	i32 194, ; 377
	i32 91, ; 378
	i32 297, ; 379
	i32 1, ; 380
	i32 136, ; 381
	i32 240, ; 382
	i32 239, ; 383
	i32 263, ; 384
	i32 134, ; 385
	i32 69, ; 386
	i32 146, ; 387
	i32 306, ; 388
	i32 285, ; 389
	i32 228, ; 390
	i32 180, ; 391
	i32 88, ; 392
	i32 96, ; 393
	i32 218, ; 394
	i32 223, ; 395
	i32 301, ; 396
	i32 31, ; 397
	i32 45, ; 398
	i32 233, ; 399
	i32 196, ; 400
	i32 109, ; 401
	i32 158, ; 402
	i32 35, ; 403
	i32 284, ; 404
	i32 22, ; 405
	i32 114, ; 406
	i32 57, ; 407
	i32 261, ; 408
	i32 144, ; 409
	i32 118, ; 410
	i32 120, ; 411
	i32 110, ; 412
	i32 198, ; 413
	i32 139, ; 414
	i32 204, ; 415
	i32 54, ; 416
	i32 105, ; 417
	i32 307, ; 418
	i32 185, ; 419
	i32 186, ; 420
	i32 133, ; 421
	i32 242, ; 422
	i32 279, ; 423
	i32 266, ; 424
	i32 254, ; 425
	i32 232, ; 426
	i32 313, ; 427
	i32 228, ; 428
	i32 189, ; 429
	i32 188, ; 430
	i32 159, ; 431
	i32 292, ; 432
	i32 215, ; 433
	i32 163, ; 434
	i32 132, ; 435
	i32 254, ; 436
	i32 161, ; 437
	i32 305, ; 438
	i32 243, ; 439
	i32 275, ; 440
	i32 140, ; 441
	i32 266, ; 442
	i32 262, ; 443
	i32 169, ; 444
	i32 187, ; 445
	i32 199, ; 446
	i32 271, ; 447
	i32 40, ; 448
	i32 226, ; 449
	i32 81, ; 450
	i32 56, ; 451
	i32 37, ; 452
	i32 97, ; 453
	i32 166, ; 454
	i32 172, ; 455
	i32 267, ; 456
	i32 82, ; 457
	i32 201, ; 458
	i32 98, ; 459
	i32 30, ; 460
	i32 159, ; 461
	i32 18, ; 462
	i32 127, ; 463
	i32 119, ; 464
	i32 222, ; 465
	i32 257, ; 466
	i32 236, ; 467
	i32 259, ; 468
	i32 165, ; 469
	i32 230, ; 470
	i32 323, ; 471
	i32 256, ; 472
	i32 247, ; 473
	i32 278, ; 474
	i32 170, ; 475
	i32 16, ; 476
	i32 144, ; 477
	i32 298, ; 478
	i32 125, ; 479
	i32 118, ; 480
	i32 38, ; 481
	i32 115, ; 482
	i32 47, ; 483
	i32 142, ; 484
	i32 117, ; 485
	i32 34, ; 486
	i32 173, ; 487
	i32 95, ; 488
	i32 53, ; 489
	i32 248, ; 490
	i32 129, ; 491
	i32 153, ; 492
	i32 24, ; 493
	i32 161, ; 494
	i32 221, ; 495
	i32 148, ; 496
	i32 104, ; 497
	i32 276, ; 498
	i32 89, ; 499
	i32 208, ; 500
	i32 60, ; 501
	i32 142, ; 502
	i32 100, ; 503
	i32 5, ; 504
	i32 13, ; 505
	i32 122, ; 506
	i32 135, ; 507
	i32 28, ; 508
	i32 293, ; 509
	i32 72, ; 510
	i32 219, ; 511
	i32 24, ; 512
	i32 206, ; 513
	i32 252, ; 514
	i32 249, ; 515
	i32 310, ; 516
	i32 137, ; 517
	i32 199, ; 518
	i32 216, ; 519
	i32 168, ; 520
	i32 253, ; 521
	i32 289, ; 522
	i32 101, ; 523
	i32 123, ; 524
	i32 220, ; 525
	i32 176, ; 526
	i32 163, ; 527
	i32 167, ; 528
	i32 223, ; 529
	i32 39, ; 530
	i32 183, ; 531
	i32 297, ; 532
	i32 17, ; 533
	i32 171, ; 534
	i32 310, ; 535
	i32 309, ; 536
	i32 137, ; 537
	i32 150, ; 538
	i32 212, ; 539
	i32 277, ; 540
	i32 155, ; 541
	i32 130, ; 542
	i32 19, ; 543
	i32 65, ; 544
	i32 147, ; 545
	i32 47, ; 546
	i32 317, ; 547
	i32 197, ; 548
	i32 79, ; 549
	i32 61, ; 550
	i32 106, ; 551
	i32 251, ; 552
	i32 201, ; 553
	i32 49, ; 554
	i32 234, ; 555
	i32 314, ; 556
	i32 248, ; 557
	i32 14, ; 558
	i32 175, ; 559
	i32 68, ; 560
	i32 171, ; 561
	i32 320, ; 562
	i32 207, ; 563
	i32 212, ; 564
	i32 192, ; 565
	i32 319, ; 566
	i32 78, ; 567
	i32 217, ; 568
	i32 108, ; 569
	i32 200, ; 570
	i32 247, ; 571
	i32 67, ; 572
	i32 63, ; 573
	i32 27, ; 574
	i32 160, ; 575
	i32 240, ; 576
	i32 0, ; 577
	i32 209, ; 578
	i32 10, ; 579
	i32 183, ; 580
	i32 11, ; 581
	i32 78, ; 582
	i32 126, ; 583
	i32 83, ; 584
	i32 177, ; 585
	i32 66, ; 586
	i32 107, ; 587
	i32 65, ; 588
	i32 128, ; 589
	i32 122, ; 590
	i32 77, ; 591
	i32 262, ; 592
	i32 252, ; 593
	i32 318, ; 594
	i32 8, ; 595
	i32 216, ; 596
	i32 2, ; 597
	i32 210, ; 598
	i32 44, ; 599
	i32 265, ; 600
	i32 156, ; 601
	i32 128, ; 602
	i32 250, ; 603
	i32 23, ; 604
	i32 133, ; 605
	i32 203, ; 606
	i32 236, ; 607
	i32 277, ; 608
	i32 278, ; 609
	i32 313, ; 610
	i32 295, ; 611
	i32 29, ; 612
	i32 202, ; 613
	i32 62, ; 614
	i32 185, ; 615
	i32 90, ; 616
	i32 87, ; 617
	i32 148, ; 618
	i32 187, ; 619
	i32 36, ; 620
	i32 86, ; 621
	i32 224, ; 622
	i32 308, ; 623
	i32 303, ; 624
	i32 176, ; 625
	i32 50, ; 626
	i32 6, ; 627
	i32 90, ; 628
	i32 315, ; 629
	i32 21, ; 630
	i32 162, ; 631
	i32 96, ; 632
	i32 50, ; 633
	i32 113, ; 634
	i32 244, ; 635
	i32 321, ; 636
	i32 130, ; 637
	i32 76, ; 638
	i32 27, ; 639
	i32 282, ; 640
	i32 217, ; 641
	i32 243, ; 642
	i32 7, ; 643
	i32 184, ; 644
	i32 110, ; 645
	i32 244, ; 646
	i32 226 ; 647
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

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
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
