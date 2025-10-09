import SwiftUI

struct HomeView: View {
    @EnvironmentObject var theme: Theme
    
    let events = [
        ("Festival de Música", "evento1"),
        ("Feira Gastronômica", "evento2"),
        ("Show de Rock", "evento3"),
        ("Peça de Teatro", "evento4")
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                
                VStack {
                    Image("Icon")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 80)
                        .padding(.top, 8)
                }
                .frame(maxWidth: .infinity, alignment: .center)
            
                Spacer().frame(height: 12)
                
                Text("Bem-vindo de volta 👋")
                    .font(.headline)
                    .foregroundColor(theme.text)
                    .padding(.horizontal)
                
                Spacer().frame(height: 16)
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Eventos em destaque")
                        .font(.title2)
                        .bold()
                        .foregroundColor(theme.text)
                        .padding(.horizontal)
                    
                    ForEach(events, id: \.0) { event in
                        VStack(alignment: .leading, spacing: 8) {
                            Image(event.1)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 180)
                                .clipped()
                                .overlay(
                                    LinearGradient(
                                        gradient: Gradient(colors: [.black.opacity(0.3), .clear]),
                                        startPoint: .bottom,
                                        endPoint: .top
                                    )
                                )
                                .cornerRadius(16)
                            
                            Text(event.0)
                                .font(.headline)
                                .foregroundColor(theme.text)
                                .padding(.horizontal, 8)
                                .padding(.bottom, 4)
                        }
                        .background(theme.background.opacity(0.7))
                        .cornerRadius(16)
                        .shadow(radius: 4)
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom, 30)
            }
            .padding(.top, 0)
        }
        .background(theme.background.ignoresSafeArea())
    }
}
