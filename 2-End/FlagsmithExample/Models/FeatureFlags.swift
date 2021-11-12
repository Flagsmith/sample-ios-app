import Foundation

enum FeatureFlags: String {
  case showOnboarding = "show_onboarding"

  var id: String {
    self.rawValue
  }
}
