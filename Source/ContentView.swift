import SwiftUI

struct ContentView: View {

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
                    .symbolRenderingMode(
                        .hierarchical
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

            // затемняем стеклянную панель примерно на 25%
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
    }
}
