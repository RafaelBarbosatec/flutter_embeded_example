package com.example.flutterembedded.pages

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import com.example.flutterembedded.R
import com.example.flutterembedded.flutter.FlutterModule

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        findViewById<Button>(R.id.button).setOnClickListener {
            FlutterModule.navigator.goHome(this)
        }

        findViewById<Button>(R.id.button2).setOnClickListener {
            FlutterModule.navigator.goSecondScreen(this)
        }

    }
}