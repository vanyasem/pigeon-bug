package com.example.pigeon_bug

import com.example.pigeon_bug.Messages.*

import io.flutter.embedding.engine.plugins.FlutterPlugin

/** PigeonBugPlugin */
class PigeonBugPlugin: FlutterPlugin, IntPigeonBugApi {
  override fun onAttachedToEngine(
    flutterPluginBinding: FlutterPlugin.FlutterPluginBinding,
  ) {
    IntPigeonBugApi.setUp(flutterPluginBinding.binaryMessenger, this)
  }

  override fun onDetachedFromEngine(
    binding: FlutterPlugin.FlutterPluginBinding,
  ) {
    IntPigeonBugApi.setUp(binding.binaryMessenger, null)
  }

  override fun testIntFunction(number: Long) {
    // Nothing
  }
}
