import SwiftUI

final class OfflineEventViewModel: ObservableObject {
    @Published var selectedEvent: OfflineEvent?
    @Published var isShowingDetail = false
    @Published var isLoading = false
}
