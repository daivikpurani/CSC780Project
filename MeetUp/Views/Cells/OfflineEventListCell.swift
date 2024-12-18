import SwiftUI

struct OfflineEventListCell: View {
    
    let offlineEvent: OfflineEvent
    var body: some View {
        HStack {
            Image(offlineEvent.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height:90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(offlineEvent.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text(offlineEvent.startTime)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    OfflineEventListCell(offlineEvent: MockOfflineEventData.sampleEvent)
}
