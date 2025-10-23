/**
 * Flutter Android settings with CI-friendly SDK resolution.
 */
pluginManagement {
    val flutterSdkPath = run {
        val envFlutter = System.getenv("FLUTTER_HOME") ?: System.getenv("FLUTTER_SDK")
        if (envFlutter != null && envFlutter.isNotEmpty()) {
            envFlutter
        } else {
            val properties = java.util.Properties()
            val localProps = file("local.properties")
            if (localProps.exists()) {
                localProps.inputStream().use { properties.load(it) }
            }
            val propPath = properties.getProperty("flutter.sdk")
            require(propPath != null) { "flutter.sdk not set (set FLUTTER_HOME/FLUTTER_SDK env or provide local.properties)" }
            propPath
        }
    }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.7.0" apply false
    id("org.jetbrains.kotlin.android") version "1.8.22" apply false
}

include(":app")
