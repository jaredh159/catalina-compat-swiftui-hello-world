import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("Hello, Catalina!").padding()
  }
}

public extension View {
  @available(iOS 14, tvOS 14, watchOS 7, *)
  @available(macOS, unavailable)
  func testAvailableCrash() -> some View {
    self.fullScreenCover(isPresented: .constant(true)) {
      Text("Unreachable!")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
