package com.example.flutterembedded.flutter

import android.annotation.SuppressLint
import android.content.Context
import android.util.Log
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel

object FlutterModule {
    const val ENGINE_CACHE_NAME = "f_engine"
    private lateinit var fEngine: FlutterEngine

    lateinit var navigator: FlutterNavigatorManager
    private lateinit var channelManager: FlutterChannelManager

    fun init(context: Context){
        fEngine = FlutterEngine(context)
        fEngine.dartExecutor.executeDartEntrypoint(DartExecutor.DartEntrypoint.createDefault())
        FlutterEngineCache.getInstance().put(ENGINE_CACHE_NAME, fEngine)

        navigator = FlutterNavigatorManager(fEngine)
        navigator.setup(context)

        channelManager = FlutterChannelManager(fEngine)
        channelManager.setup(context)
    }
}