import SwiftUI

struct HomeView: View {
  @EnvironmentObject var viewModel: MainViewModel
  @Environment(\.openURL) var openURL
  
  var body: some View {
    VStack {
      Text("Feature Flag & Remote Config Service")
        .largeTitleStyle()
      
      VStack(spacing: 16) {
        Text("Release features with confidence; manage feature flags across web, mobile, and server side applications.")
        
        Text("Use our hosted API, deploy to your own private cloud, or run on-premises.")
      }
      .padding()
      .multilineTextAlignment(.center)
      
      Image("illustration")
        .resizable()
        .scaledToFit()
      
      Spacer()
      
      Button("Start Free Trial") {
        openURL(URL(string: "https://app.flagsmith.com/signup")!)
      }
      .buttonStyle(PrimaryButton())
      .padding(.bottom)
    }
  }
}
