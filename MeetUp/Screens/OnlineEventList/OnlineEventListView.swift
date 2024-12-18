import SwiftUI

struct OnlineEventListView: View {
    @StateObject var viewModel = OnlineEventListViewModel()
    
    var body: some View {
        ZStack{
            NavigationView {
                List(MockEventData.eventList) { onlineEvent in
                    OnlineEventListCell(onlineEvent: onlineEvent)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            viewModel.selectedOnlineEvent = onlineEvent
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("Online Event")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
                    
            }
            if viewModel.isShowingDetail {
                OnlineEventDetailView(onlineEvent: viewModel.selectedOnlineEvent!,
                                    isShowingDetail: $viewModel.isShowingDetail)
            }
        }

    }
}

struct OnlineEventListView_Previews: PreviewProvider {
    static var previews: some View {
        OnlineEventListView()
    }
}
