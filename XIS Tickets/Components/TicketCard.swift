import SwiftUI

struct TicketCard: View {
    let ticket: Ticket

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(ticket.event).font(.headline)
            Text(ticket.type).font(.subheadline).foregroundColor(.gray)
            Text("Quantity: \(ticket.quantity)").font(.subheadline)
        }.padding().background(Color(.secondarySystemBackground)).cornerRadius(10).shadow(radius: 2)
    }
}
