import SwiftUI

extension Text {
  func largeTitleStyle() -> some View {
       self
      .bold()
      .font(.largeTitle)
      .multilineTextAlignment(.center)
      .padding()
      .foregroundColor(.primary)
   }
}
