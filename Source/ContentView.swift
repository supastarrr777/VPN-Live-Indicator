import SwiftUI

struct ContentView: View {

    @Environment(\.scenePhase)
    private var scenePhase

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

                Text("Indicator")
                    .font(
                        .system(
                            size: 20,
                            weight: .medium,
                            design: .rounded
                        )
                    )
            }
            .foregroundStyle(.white)
            .padding(.horizontal, 60)
            .padding(.vertical, 44)
            .background(
                Color.black.opacity(0.25)
            )
            .glassEffect(
                .regular,
                in: .rect(
                    cornerRadius: 36
                )
            )
        }
        .onChange(of: scenePhase) { _, phase in

            if phase == .active {

                if let url = URL(
                    string: "prefs:root=General&path=VPN"
                ) {

                    openURL(url)
                }
            }
        }
    }
}
