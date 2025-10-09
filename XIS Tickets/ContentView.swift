import SwiftUI

struct ContentView: View {
    @StateObject var theme = Theme()
    @State private var showHome = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Hello Xis Tickets")
                    .foregroundColor(theme.text)
                    .padding()
                    .background(theme.background)
                    .cornerRadius(10)

                Button("Buy Ticket") {
                    showHome = true
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(theme.background)
            .accentColor(theme.accent)
            .navigationDestination(isPresented: $showHome) {
                HomeView()
                    .environmentObject(theme)
            }
        }
        .environmentObject(theme) 
    }
}
