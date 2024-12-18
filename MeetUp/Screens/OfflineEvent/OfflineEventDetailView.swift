import SwiftUI

struct OfflineEventDetailView: View {
    let event: OfflineEvent
    @Binding var isShowingDetail: Bool

    var body: some View {
        VStack {
            Image(event.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)

            VStack {
                Text(event.name)
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(event.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()

                HStack(spacing: 40) {
                    EventInfo(title: "Rating", value: "\(event.rating) Stars")
                    EventInfo(title: "Distance", value: "\(event.distance)")
                    EventInfo(title: "Starts by", value: "\(event.startTime)")
                }
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            Button {
                isShowingDetail = false
            } label: {
                XDismissButton()
            },
            alignment: .topTrailing
        )
    }
}

struct OfflineEventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        OfflineEventDetailView(
            event: MockOfflineEventData.sampleEvent,
            isShowingDetail: .constant(true)
        )
    }
}

struct EventInfo: View {
    let title: String
    let value: String

    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)

            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
