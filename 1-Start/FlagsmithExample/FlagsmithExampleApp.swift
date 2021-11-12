import SwiftUI

@main
struct FlagsmithExampleApp: App {
  @ObservedObject var viewModel = MainViewModel()
  
  var body: some Scene {
    WindowGroup {
      MainView()
        .environmentObject(viewModel)
    }
  }
}
