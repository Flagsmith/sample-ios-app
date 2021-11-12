import SwiftUI

struct OnboardingView: View {
  @EnvironmentObject var viewModel: MainViewModel
  
  @State private var chatEnabled = false
  @State private var darkModeEnabled = false
  
  var body: some View {
    VStack {
      Text("Welcome to Flagsmith!")
        .largeTitleStyle()
      
      Text("Features".uppercased())
        .bold()
        .padding(.bottom)
      
      Divider()
      
      VStack {
        Toggle("Chat", isOn: $chatEnabled.animation())
          .toggleStyle(SwitchToggleStyle(tint: .primarySwitch))
        
        Divider()
        
        Toggle("Dark mode", isOn: $darkModeEnabled.animation())
          .toggleStyle(SwitchToggleStyle(tint: .primarySwitch))
      }
      .padding(.horizontal)
      
      OnboardingDemoView(darkModeEnabled: darkModeEnabled, chatEnabled: chatEnabled)
      
      Spacer()
      
      Button("Continue") {
        viewModel.showOnboarding = false
      }
      .buttonStyle(PrimaryButton())
      .padding(.bottom)
    }
  }
}

