package com.example.flutterembedded.flutter

import android.content.Context
import android.util.Log
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class FlutterChannelManager(private val engine: FlutterEngine,private val context: Context?) {

    init {
        initTestChannel()
    }

    private fun initTestChannel(){

        MethodChannel(
                engine.dartExecutor.binaryMessenger,
                "TestChannel"
        ).setMethodCallHandler { call, result ->
            Log.i("FlutterModule", call.method)
            result.success(null)
        }

    }

}