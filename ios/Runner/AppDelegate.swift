import UIKit
import Flutter

private class FlavorApiImpl: FlavorHostApi{
    func getFlavor() throws -> String {
       return Bundle.main.infoDictionary!["FLAVOR"] as! String
     }
}

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let controller = window?.rootViewController as! FlutterViewController
    let api = FlavorApiImpl()
    FlavorHostApiSetup.setUp(binaryMessenger: controller.binaryMessenger, api: api)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
