import ActivityKit
import SwiftUI
import WidgetKit

@main
struct VPNLiveActivityWidget: Widget {

    var body: some WidgetConfiguration {
        ActivityConfiguration(for: VPNAttributes.self) { _ in

            // Экран блокировки
            HStack(spacing: 12) {
                Image(systemName: "lock.fill")
                    .font(.title2)
                    .foregroundStyle(.green)

                Text("VPN")
                    .font(.headline)
                    .fontWeight(.bold)

                Spacer()

                Text("Active")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .padding()
            .foregroundStyle(.white)
            .activityBackgroundTint(.black.opacity(0.88))
            .activitySystemActionForegroundColor(.white)

        } dynamicIsland: { _ in

            DynamicIsland {

                DynamicIslandExpandedRegion(.center) {
                    HStack(spacing: 10) {
                        Image(systemName: "lock.fill")
                            .font(.title2)
                            .foregroundStyle(.green)

                        Text("VPN")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                    }
                }

            } compactLeading: {

                Image(systemName: "lock.fill")
                    .foregroundStyle(.green)

            } compactTrailing: {

                Text("VPN")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

            } minimal: {

                Image(systemName: "lock.fill")
                    .foregroundStyle(.green)
            }
            .keylineTint(.green)
        }
    }
}
