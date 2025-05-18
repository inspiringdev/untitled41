plugins {
    id("com.android.application")
    id("com.google.gms.google-services")  // Apply Firebase plugin here
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")  // Flutter plugin
}

android {
    namespace = "com.example.untitled41"  // Change this to your app’s unique namespace
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "29.0.13113456"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.untitled41"  // Change this to your unique Application ID
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")  // Adjust signing config if necessary
        }
    }
}

flutter {
    source = "../.."  // Path to your Flutter source
}
