import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        setupGoogleMaps()
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    /// GoogleMaps初期化
    private func setupGoogleMaps() {
        // GoogleMapsApiKeyをplistから取得する
        let apiKey = Bundle.main.object(forInfoDictionaryKey: "GoogleMapsApiKey") as? String
        // APIKeyが取得できればGoogleMapsServiceに渡す
        if let apiKey, !apiKey.isEmpty {
            GMSServices.provideAPIKey(apiKey)
        } else {
            fatalError("GoogleMapsApiKeyが取得できません。")
        }
    }
}
