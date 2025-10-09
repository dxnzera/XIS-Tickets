import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var theme: Theme
    @AppStorage("language") private var language = "en"
    
    @State private var name: String = "Seu Nome"
    @State private var email: String = "email@exemplo.com"
    @State private var showingImagePicker = false
    @State private var profileImage: Image? = nil
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                
                VStack {
                    if let profileImage = profileImage {
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                            .shadow(radius: 4)
                            .onTapGesture { showingImagePicker.toggle() }
                    } else {
                        Circle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(width: 120, height: 120)
                            .overlay(
                                Image(systemName: "camera.fill")
                                    .font(.system(size: 32))
                                    .foregroundColor(.gray)
                            )
                            .onTapGesture { showingImagePicker.toggle() }
                    }
                    
                    Text(name)
                        .font(.title2)
                        .bold()
                        .foregroundColor(theme.text)
                    
                    Text(email)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.top, safeAreaTopInset())
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Preferências")
                        .font(.headline)
                        .foregroundColor(theme.text)
                    
                    Toggle(isOn: $theme.isDarkMode) {
                        Text("Dark Mode")
                            .foregroundColor(theme.text)
                    }
                    
                    HStack {
                        Text("Idioma")
                            .foregroundColor(theme.text)
                        Spacer()
                        Picker("", selection: $language) {
                            Text("🇺🇸 English").tag("en")
                            Text("🇧🇷 Português").tag("pt")
                        }
                        .pickerStyle(.segmented)
                        .frame(width: 180)
                    }
                }
                .padding()
                .background(theme.cardBackground)
                .cornerRadius(16)
                .shadow(radius: 4)
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Informações Pessoais")
                        .font(.headline)
                        .foregroundColor(theme.text)
                    
                    VStack(spacing: 12) {
                        TextField("Nome", text: $name)
                            .padding()
                            .background(theme.background)
                            .cornerRadius(12)
                        
                        TextField("Email", text: $email)
                            .padding()
                            .background(theme.background)
                            .cornerRadius(12)
                    }
                }
                .padding()
                .background(theme.cardBackground)
                .cornerRadius(16)
                .shadow(radius: 4)
                
                Spacer()
            }
            .padding(.horizontal, 4)
        }
        .background(theme.background)
        .ignoresSafeArea(edges: .bottom)
        .sheet(isPresented: $showingImagePicker) {
            Text("Selecionar foto...")
                .font(.title2)
        }
    }
}

private func safeAreaTopInset() -> CGFloat {
    UIApplication.shared.connectedScenes
        .compactMap { ($0 as? UIWindowScene)?.keyWindow }
        .first?
        .safeAreaInsets.top ?? 30
}
