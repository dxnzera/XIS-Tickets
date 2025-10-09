import SwiftUI

struct EventCard: View {
    let event: Event

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(event.imageName).resizable().aspectRatio(contentMode: .fill).frame(height: 200).clipped().cornerRadius(15)
            VStack(alignment: .leading) {
                Text(event.title).font(.headline).foregroundColor(.black)
                Text(event.date).font(.subheadline).foregroundColor(.black.opacity(0.8))
            }.padding()
        }.shadow(radius: 5)
    }
}
