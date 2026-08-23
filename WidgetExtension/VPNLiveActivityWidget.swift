import ActivityKit
import SwiftUI
import WidgetKit

@main
struct VPNLiveActivityWidget: Widget {

    var body: some WidgetConfiguration {

        ActivityConfiguration(for: VPNAttributes.self) { _ in

            HStack(spacing: 12) {

                Image(systemName: "globe")
                    .font(.title2)
                    .foregroundStyle(.cyan)

                VStack(alignment: .leading, spacing: 2) {

                    Text("VPN")
                        .font(.headline)
                        .fontWeight(.bold)
                    
                }

                Spacer()

                Text("Active")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .padding()
            .foregroundStyle(.white)
            .activityBackgroundTint(.black.opacity(0.88))
            .activitySystemActionForegroundColor(.white)

            .widgetURL(
                URL(string: "https://apple.com")
            )

        } dynamicIsland: { _ in

            DynamicIsland {

                DynamicIslandExpandedRegion(.center) {

                    HStack(spacing: 10) {

                        Image(systemName: "globe")
                            .font(.title2)
                            .foregroundStyle(.cyan)

                        VStack(spacing: 2) {

                            Text("VPN")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            
                        }
                    }
                }

            } compactLeading: {

                Image(systemName: "globe")
                    .foregroundStyle(.cyan)

            } compactTrailing: {

                Text("VPN")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

            } minimal: {

                Image(systemName: "globe")
                    .foregroundStyle(.cyan)
            }
            .keylineTint(.cyan)

            .widgetURL(
                URL(string: "https://apple.com")
            )
        }
    }
}
