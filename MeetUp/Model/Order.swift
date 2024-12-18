import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [OnlineEvent] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func register(_ event: OnlineEvent) {
        items.append(event)
    }
    
    func cancelRegistration(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
