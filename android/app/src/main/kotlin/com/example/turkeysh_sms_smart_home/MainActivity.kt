package com.example.turkeysh_sms_smart_home

import android.content.pm.PackageManager
import android.telephony.SmsManager
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.util.jar.Manifest

class MainActivity : FlutterActivity() {

    private val channelName = "sms_channel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channelName)
            .setMethodCallHandler { call, result ->
                if (call.method == "nativeSMSMethod") {
                    val number = call.argument<String>("number") ?: ""
                    val message = call.argument<String>("message") ?: ""

                    val permissionCheck = ContextCompat.checkSelfPermission(
                        this,
                        android.Manifest.permission.SEND_SMS
                    )
                    if (permissionCheck != PackageManager.PERMISSION_GRANTED) {
                        ActivityCompat.requestPermissions(
                            this,
                            arrayOf(android.Manifest.permission.SEND_SMS),
                            1
                        )
                        return@setMethodCallHandler
                    } else {

                        val obj = SmsManager.getDefault()
                        obj.sendTextMessage(number, null, message, null, null)

                        result.success("success")
                    }

                } else {
                    result.notImplemented()
                }

            }
    }

//    override fun onRequestPermissionsResult(
//        requestCode: Int,
//        permissions: Array<out String>,
//        grantResults: IntArray
//    ) {
//        if(requestCode == 1 && grantResults > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED){
//            val obj = SmsManager.getDefault()
//            obj.sendTextMessage(number, null, message, null, null)
//
//            result.success("success")
//        }
//        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
//
//    }
}
