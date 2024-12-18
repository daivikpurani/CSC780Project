import SwiftUI

struct ToastView: View {
    let message: String
    
    var body: some View {
        Text(message)
            .padding()
            .background(Color.black.opacity(0.7))
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}

struct ToastView_Preview: PreviewProvider {
    static var previews: some View {
        ToastView(message: "Hello!")
    }
}
