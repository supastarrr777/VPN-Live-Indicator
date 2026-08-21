import ActivityKit
import SwiftUI
import WidgetKit

@main
struct VPNLiveActivityWidget: Widget {

    var body: some WidgetConfiguration {
        ActivityConfiguration(for: VPNAttributes.self) { context in

            // Экран блокировки
            HStack(spacing: 12) {
                Image(systemName: "lock.fill")
                    .font(.title2)

                Text("VPN")
                    .font(.headline)
                    .fontWeight(.bold)

                Spacer()

                Text("Active")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .padding()
            .activityBackgroundTint(.black.opacity(0.88))
            .activitySystemActionForegroundColor(.white)
            .foregroundStyle(.white)

        } dynamicIsland: { context in

            DynamicIsland {

                // Расширенный вид после долгого нажатия
                DynamicIslandExpandedRegion(.center) {
                    HStack(spacing: 10) {
                        Image(systemName: "lock.fill")
                            .font(.title2)

                        Text("VPN")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    .foregroundStyle(.white)
                }

            } compactLeading: {

                // Левая сторона Dynamic Island
                Image(systemName: "lock.fill")
                    .foregroundStyle(.green)

            } compactTrailing: {

                // Правая сторона Dynamic Island
                Text("VPN")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

            } minimal: {

                // Когда одновременно работают несколько Live Activities
                Image(systemName: "lock.fill")
                    .foregroundStyle(.green)
            }
            .keylineTint(.green)
        }
    
}
