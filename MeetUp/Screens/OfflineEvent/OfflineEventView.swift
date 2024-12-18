import SwiftUI

struct OfflineEventView: View {
    @StateObject var viewModel = OfflineEventViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(MockOfflineEventData.eventList) { event in
                    OfflineEventListCell(offlineEvent: event)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            viewModel.selectedEvent = event
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("Offline Events")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
            }
            
            if viewModel.isShowingDetail {
                OfflineEventDetailView(event: viewModel.selectedEvent!,
                                       isShowingDetail: $viewModel.isShowingDetail)
            }
        }
    }
}

struct OfflineEventView_Previews: PreviewProvider {
    static var previews: some View {
        OfflineEventView()
    }
}

