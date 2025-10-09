import SwiftUI

@main
struct XISApp: App {
    @StateObject var theme = Theme()

    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(theme)
                .preferredColorScheme(theme.isDarkMode ? .dark : .light)
        }
    }
}
