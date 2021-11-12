import SwiftUI
import FlagsmithClient

@main
struct FlagsmithExampleApp: App {
  @ObservedObject var viewModel = MainViewModel()
  
  init() {
    initializeFlagsmith()
  }
  
  var body: some Scene {
    WindowGroup {
      MainView()
        .environmentObject(viewModel)
    }
  }
}

extension FlagsmithExampleApp {
  private func initializeFlagsmith() {
    
#if DEBUG
    Flagsmith.shared.apiKey = "kY2o2jEVrzgkiHR49XFKJt"
#else
    Flagsmith.shared.apiKey = "Vp3c5wtgmTErm59EYCYS4r"
#endif
    
    // Example one
    Flagsmith.shared.getFeatureFlags { (result) in
      switch result {
        case .success(let flags):
          for flag in flags {
            if flag.feature.name == FeatureFlags.showOnboarding.id {
              print(flag.feature.name, "= enabled:", flag.enabled, "value:", flag.value ?? "nil")
              
              DispatchQueue.main.async {
                viewModel.showOnboarding = flag.enabled
              }
            }
          }
        case .failure(let error):
          print(error)
      }
    }
    
    // Example two
    Flagsmith.shared
      .hasFeatureFlag(withID: FeatureFlags.showOnboarding.id, forIdentity: nil) { (result) in
        switch result {
          case .success(let value):
            DispatchQueue.main.async {
              viewModel.showOnboarding = value
            }
          case .failure(let error):
            print(error)
        }
      }
  }
}
