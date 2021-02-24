package com.example.flutterembedded

import android.app.Application
import com.example.flutterembedded.flutter.FlutterModule

class MyApplication: Application() {

    override fun onCreate() {
        super.onCreate()
        FlutterModule.init(this)
    }
}