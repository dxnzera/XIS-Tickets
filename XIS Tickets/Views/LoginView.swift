import SwiftUI

struct LoginView: View {
    @EnvironmentObject var theme: Theme
    @State private var username = ""
    @State private var password = ""
    @State private var loggedIn = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Image("Icon")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.7)

                TextField("Username", text: $username)
                    .padding()
                    .background(theme.cardBackground)
                    .cornerRadius(8)

                SecureField("Password", text: $password)
                    .padding()
                    .background(theme.cardBackground)
                    .cornerRadius(8)

                Button("Login") {
                    loggedIn = true
                }
                .foregroundColor(theme.background)
                .padding()
                .frame(maxWidth: .infinity)
                .background(theme.accent)
                .cornerRadius(8)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(theme.background)
            .navigationDestination(isPresented: $loggedIn) {
                MainTabView()
                    .environmentObject(theme)
            }
        }
    }
}
