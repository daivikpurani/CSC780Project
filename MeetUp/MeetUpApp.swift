import SwiftUI
import SwiftData

@main
struct MeetUpApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var order = Order()

    var body: some Scene {
        WindowGroup {
            OnlineEventTabView().environmentObject(order)
        }
        .modelContainer(sharedModelContainer)
    }
}
#Preview {
    
}
