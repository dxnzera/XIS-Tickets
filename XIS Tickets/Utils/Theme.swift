import SwiftUI
import Combine

class Theme: ObservableObject {
    @Published var isDarkMode: Bool = false

    var background: Color { Color("BackgroundColor") }
    var text: Color { Color("TextColor") }
    var accent: Color { Color("AccentColor") }
    var cardBackground: Color {Color("CardBackground") }
    var outline: Color {Color("OutlineColor") }

    func toggleDarkMode() {
        isDarkMode.toggle()
    }
}
