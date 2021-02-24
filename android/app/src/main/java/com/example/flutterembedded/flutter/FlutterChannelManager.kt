package com.example.flutterembedded.flutter

import android.content.Context
import android.util.Log
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class FlutterChannelManager(private val engine: FlutterEngine) {

    fun setup(context: Context?){

        MethodChannel(
                engine.dartExecutor.binaryMessenger,
                "TestChannel"
        ).setMethodCallHandler { call, result ->
            Log.i("FlutterModule", call.method)
            result.success(null)
        }

    }

}