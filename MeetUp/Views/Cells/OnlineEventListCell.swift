import SwiftUI

struct OnlineEventListCell: View {
    
    let onlineEvent: OnlineEvent
    var body: some View {
        HStack {
            Image(onlineEvent.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height:90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(onlineEvent.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(onlineEvent.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    OnlineEventListCell(onlineEvent: MockEventData.sampleEvent)
}
