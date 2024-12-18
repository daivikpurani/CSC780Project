import SwiftUI

struct OnlineEventDetailView: View {
    @EnvironmentObject var order: Order
    let onlineEvent: OnlineEvent
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack {
            Image(onlineEvent.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
                    
            VStack {
                Text(onlineEvent.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(onlineEvent.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    if onlineEvent.isRecorded {
                        Text("Recorded")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    } else {
                        Text("Not Recorded")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    
                    Info(title: "Participants", value: "\(onlineEvent.participants)")
                    Info(title: "Date", value: "\(onlineEvent.date)")
                }

            }
            
            Spacer()
            
            Button {
                order.register(onlineEvent)
                isShowingDetail = false
            } label: {
                Text("$\(onlineEvent.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(StandardButtonStyle())
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

struct Info: View {
    
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


struct OnlineEventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        OnlineEventDetailView(onlineEvent: MockEventData.sampleEvent,
                            isShowingDetail: .constant(true))
    }
}


