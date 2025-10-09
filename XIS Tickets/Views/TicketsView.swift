import SwiftUI

struct PurchasedTicket: Identifiable {
    let id = UUID()
    let eventName: String
    let purchaseDate: String
    let price: String
    let ticketType: String
    let location: String
    let qrCode: String
}

struct TicketsView: View {
    @EnvironmentObject var theme: Theme
    @State private var showQRCode: PurchasedTicket? = nil
    
    @State private var tickets: [PurchasedTicket] = [
        PurchasedTicket(eventName: "Festival de Música",
               purchaseDate: "15/09/2025",
               price: "R$ 120,00",
               ticketType: "Inteira",
               location: "Arena São Paulo",
               qrCode: "qrcode1"),
        
        PurchasedTicket(eventName: "Show de Rock",
               purchaseDate: "20/09/2025",
               price: "R$ 60,00",
               ticketType: "Meia",
               location: "Estádio Morumbi",
               qrCode: "qrcode2")
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(tickets) { ticket in
                    HStack(spacing: 16) {
                        VStack(alignment: .leading, spacing: 6) {
                            Text(ticket.eventName)
                                .font(.headline)
                                .foregroundColor(theme.text)
                            
                            Text("Comprado em \(ticket.purchaseDate)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            
                            Text("\(ticket.price) • \(ticket.ticketType)")
                                .font(.subheadline)
                                .foregroundColor(theme.text)
                            
                            Text(ticket.location)
                                .font(.footnote)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        Button {
                            showQRCode = ticket
                        } label: {
                            Image("qrcode1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                    .background(theme.cardBackground)
                    .cornerRadius(16)
                    .shadow(radius: 4)
                    .padding(.horizontal)
                }
            }
            .padding(.vertical)
        }
        .background(theme.background.ignoresSafeArea())
        .sheet(item: $showQRCode) { ticket in
            VStack {
                Text(ticket.eventName)
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 20)
                
                Image("qrcode1")
                    .resizable()
                    .interpolation(.none)
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                
                Spacer()
            }
            .padding()
        }
    }
}

