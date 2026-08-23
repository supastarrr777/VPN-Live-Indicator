import SwiftUI

struct ContentView: View {

    @Environment(\.openURL)
    private var openURL

    var body: some View {

        ZStack {

            LinearGradient(
                colors: [
                    Color.blue.opacity(0.35),
                    Color.cyan.opacity(0.18),
                    Color.black.opacity(0.85)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 12) {

                Image(systemName: "globe")
                    .font(
                        .system(
                            size: 52,
                            weight: .semibold
                        )
                    )

                Text("VPN")
                    .font(
                        .system(
                            size: 30,
                            weight: .bold,
                            design: .rounded
                        )
                    )
            }
            .foregroundStyle(.white)
        }
        .task {

            if let url = URL(
                string: "https://apple.com"
            ) {

                openURL(url)
            }
        }
    }
}
