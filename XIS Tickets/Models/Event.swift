import Foundation

struct Event: Identifiable {
    let id = UUID()
    let title: String
    let date: String
    let imageName: String
}
