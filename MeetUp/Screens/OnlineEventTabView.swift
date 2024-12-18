import SwiftUI

struct OnlineEventTabView: View {
    var body: some View {
        TabView {
            OfflineEventView()
                .tabItem {
                    Image(systemName: "calendar.circle")
                    Text("Offline Events")
                }
            OnlineEventListView()
                .tabItem {
                    Image(systemName: "video.fill")
                    Text("Online Events")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
        }
        .accentColor(Color("brandPrimary"))
    }
}

struct OnlineEventTabView_Previews: PreviewProvider {
    static var previews: some View {
        OnlineEventTabView()
    }
}
