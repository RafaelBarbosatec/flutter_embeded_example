package com.example.flutterembedded.flutter

import android.content.Context
import android.content.Intent
import com.example.flutterembedded.pages.SecondActivity
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class FlutterNavigatorManager(private val engine: FlutterEngine,private val context: Context?) :
    MethodChannel.MethodCallHandler {

    init {
        initNavigatorChannel()
    }

    fun  goHome(context: Context?){
        context?.let {
            engine.navigationChannel.pushRoute("/first")
            val intent = FlutterActivity.withCachedEngine(FlutterModule.ENGINE_CACHE_NAME).build(it)
            it.startActivity(intent)
        }
    }

    fun  goSecondScreen(context: Context?){
        context?.let {
            engine.navigationChannel.pushRoute("/second")
            val intent = FlutterActivity.withCachedEngine(FlutterModule.ENGINE_CACHE_NAME).build(it)
            it.startActivity(intent)
        }
    }

    private fun initNavigatorChannel(){
        MethodChannel(
                engine.dartExecutor.binaryMessenger,
                "NavigatorChannel"
        ).setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        if(call.method == "second"){
            context?.let {
                val intent = Intent(context, SecondActivity::class.java)
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                it.startActivity(intent)
            }
        }
        result.success(null)
    }
}