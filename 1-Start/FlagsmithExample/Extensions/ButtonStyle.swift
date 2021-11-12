import SwiftUI

struct PrimaryButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .foregroundColor(.white)
      .padding()
      .padding(.horizontal)
      .background(RoundedRectangle(cornerRadius: 8)
                    .fill(Color.primaryButton))
      .buttonStyle(.plain)
  }
}
