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

            VStack(spacing: 18) {
                Image(systemName: "lock.fill")
                    .font(.system(size: 52, weight: .semibold))
                    .symbolRenderingMode(.hierarchical)

                Text("VPN")
                    .font(.system(
                        size: 30,
                        weight: .bold,
                        design: .rounded
                    ))
            }
            .foregroundStyle(.white)
            .padding(.horizontal, 60)
            .padding(.vertical, 44)
            .glassEffect(
                .regular,
                in: .rect(cornerRadius: 36)
            )
        }
        .task {
            await VPNActivityManager.shared.start()
        }
    }
}
