//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

import media_kit_libs_macos_audio
import media_kit_libs_macos_video
import media_kit_video
import package_info_plus
import screen_brightness_macos
import wakelock_plus

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  MediaKitLibsMacosAudioPlugin.register(with: registry.registrar(forPlugin: "MediaKitLibsMacosAudioPlugin"))
  MediaKitLibsMacosVideoPlugin.register(with: registry.registrar(forPlugin: "MediaKitLibsMacosVideoPlugin"))
  MediaKitVideoPlugin.register(with: registry.registrar(forPlugin: "MediaKitVideoPlugin"))
  FPPPackageInfoPlusPlugin.register(with: registry.registrar(forPlugin: "FPPPackageInfoPlusPlugin"))
  ScreenBrightnessMacosPlugin.register(with: registry.registrar(forPlugin: "ScreenBrightnessMacosPlugin"))
  WakelockPlusMacosPlugin.register(with: registry.registrar(forPlugin: "WakelockPlusMacosPlugin"))
}
