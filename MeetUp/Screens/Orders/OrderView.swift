import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    @State private var showToast = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { onlineEvent in
                            OnlineEventListCell(onlineEvent: onlineEvent)
                        }
                        .onDelete(perform: order.cancelRegistration(at:))
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        
                        print("order placed")
                        order.items.removeAll()
                        withAnimation {
                            showToast = true
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation {
                                showToast = false
                            }
                        }
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if showToast {
                    ToastView(message: "Order placed successfully!")
                        .transition(.opacity)
                        .zIndex(1)

                }
                
                if order.items.isEmpty && showToast == false{
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your cart!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
