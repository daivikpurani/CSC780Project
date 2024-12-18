import SwiftUI

@MainActor final class OnlineEventListViewModel: ObservableObject {
    
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedOnlineEvent: OnlineEvent?
}
