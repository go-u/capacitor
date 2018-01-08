import Foundation
import SafariServices

@objc(App)
public class App : AVCPlugin {
  func firePluginError(_ jsError: JSProcessingError) {
    notifyListeners("pluginError", data: [
      "message": jsError.localizedDescription
    ])
  }
  
  public func fireChange(isActive: Bool) {
    notifyListeners("appStateChanged", data: [
      "isActive": isActive
    ])
  }
}

