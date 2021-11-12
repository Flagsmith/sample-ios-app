import SwiftUI

struct OnboardingDemoView: View {
  var darkModeEnabled: Bool
  var chatEnabled: Bool
  
  var body: some View {
    VStack(spacing: 16) {
      Image("demo_illustration")
        .resizable()
        .scaledToFit()
        .cornerRadius(8)
      
      VStack(spacing: 16) {
        OnboardingDemoRow()
        
        OnboardingDemoRow()
        
        if chatEnabled {
          Image(systemName: "bubble.left.and.bubble.right.fill")
            .foregroundColor(.white)
            .padding()
            .background(Circle().fill(Color.primarySwitch))
        }
      }
      .padding()
    }
    .foregroundColor(darkModeEnabled ? Color.white.opacity(0.3) : Color(.secondarySystemBackground))
    .background(darkModeEnabled ? Color.darkMode : Color.white)
    .cornerRadius(8)
    .padding()
  }
}

struct OnboardingDemoRow: View {
  var body: some View {
    HStack {
      RoundedRectangle(cornerRadius: 4)
        .frame(width: 50, height: 50)
      
      VStack {
        Capsule()
          .frame(height: 15)
        
        Capsule()
          .frame(height: 15)
          .padding(.trailing, 32)
      }
    }
  }
}
