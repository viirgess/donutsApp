import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

       GMSServices.provideAPIKey("AIzaSyD_rzQkiAI1PjBP-4xTas2JIX1i0O84d3g")

       return super.application(application, didFinishLaunchingWithOptions: launchOptions)
     }
   }