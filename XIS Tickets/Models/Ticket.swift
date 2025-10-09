import Foundation

struct Ticket: Identifiable {
    let id = UUID()
    let event: String
    let type: String
    let quantity: Int
}
