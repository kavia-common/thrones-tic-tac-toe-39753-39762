# ProGuard/R8 rules for Thrones Tic Tac Toe Flutter app

# Keep Flutter core and embedding
-keep class io.flutter.** { *; }
-dontwarn io.flutter.**
-keep class io.flutter.embedding.** { *; }

# Keep shared_preferences plugin classes
-keep class io.flutter.plugins.sharedpreferences.** { *; }

# Keep Provider and ChangeNotifier-based state classes (avoid stripping)
-keep class ** extends androidx.lifecycle.ViewModel { *; }
-keep class ** extends android.arch.lifecycle.ViewModel { *; }
-keep class ** extends java.lang.Object implements androidx.lifecycle.DefaultLifecycleObserver { *; }
-keep class ** extends java.lang.Object implements android.arch.lifecycle.DefaultLifecycleObserver { *; }
-keep class ** extends ChangeNotifier { *; }

# Kotlin metadata
-keep class kotlin.Metadata { *; }

# Android resources
-keep class **.R
-keep class **.R$* { *; }

# Suppress common warnings
-dontwarn org.intellij.lang.annotations.**
-dontwarn javax.annotation.**
