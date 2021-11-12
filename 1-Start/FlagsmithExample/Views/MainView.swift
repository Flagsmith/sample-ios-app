import SwiftUI

struct MainView: View {
  @EnvironmentObject var viewModel: MainViewModel
  
  var body: some View {
    if let showOnboarding = viewModel.showOnboarding {
      if showOnboarding {
        OnboardingView()
      } else {
        HomeView()
      }
    } else {
      ProgressView()
    }
  }
}

